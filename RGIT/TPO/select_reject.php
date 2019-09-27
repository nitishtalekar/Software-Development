<?php
session_start();

if (!isset($_SESSION['userid'])) {

  header('Location: /RGIT/');
} elseif ($_SESSION['type'] != 'tpo') {

  header('Location: /RGIT/');
}

$username = $_SESSION['username'];
$userid = $_SESSION['userid'];

require "../includes/dbconnect.php";

$student_grno = $_POST['grno'];
$status = $_POST['status'];

if ($conn->connect_error) {
  die($conn->connect_error);
} else {

  $query = "select * from applied_student where student_grno = $student_grno and company_id = $userid";
  $results = $conn->query($query);
  $row = $results->fetch_assoc();
  $selected = $row['selected_notselected'];

  if ($selected == 0 &&  $status == 0) {
    header('Location: /RGIT/TPO/applied_students.php?rejected=true');
  } elseif (($selected == 1 && $status == 1) || ($selected == 1 && $status == 0)) {
    header('Location: /RGIT/TPO/applied_students.php?selected=true');
  } else {
    $date = date("Y-m-d");

    if ($status == 0) {
      $query = "update applied_student set selected_notselected = 0,selected_notselected_date='$date' where company_id=$userid and student_grno = $student_grno";
      $results = $conn->query($query);
    } else {

      $query = "select * from placed_student where student_grno = $student_grno";
      $results = $conn->query($query);
      $already_placed = $results->num_rows > 0;

      if ($already_placed) {
        $row = $results->fetch_assoc();
        $current_company_id = $row['company_id'];
        $query = "select annual_package from company where company_id = $current_company_id";
        $results = $conn->query($query);
        $row = $results->fetch_assoc();
        $old_income = $row['annual_package'];
        $query = "select annual_package from company where company_id = $userid";
        $results = $conn->query($query);
        $row = $results->fetch_assoc();
        $new_income = $row['annual_package'];
        if ($new_income >= 1.4 * $old_income) {
          $query = "update placed_student set company_id = $userid, placed_date = '$date' where student_grno = $student_grno";
          $results = $conn->query($query);
        }
      } else {
        $query = "insert into placed_student(student_grno,company_id,placed_date) values($student_grno,$userid,'$date')";
        $results = $conn->query($query);
        $query = "update student set placement_higherstudies = 2 where grno = $student_grno";
        $results = $conn->query($query);
      }

      $query = "update applied_student set selected_notselected = 1,selected_notselected_date='$date' where company_id=$userid and student_grno = $student_grno";
      $results = $conn->query($query);
    }
    if ($results) {
      header('Location: /RGIT/TPO/applied_students.php');
    }
    die('could not apply for company');
  }
}
