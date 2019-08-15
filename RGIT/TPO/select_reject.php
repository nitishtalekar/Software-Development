<?php
session_start();

if (!isset($_SESSION['userid']))
{

  header('Location: /college_project/RGIT/');
}elseif($_SESSION['type']!='tpo'){

  header('Location: /college_project/RGIT/');
}

$username = $_SESSION['username'];
$userid = $_SESSION['userid'];

require "../includes/dbconnect.php";

$student_grno = $_POST['grno'];
$status = $_POST['status'];

if($conn -> connect_error){
  die($conn -> connect_error);
}else{

    $query = "select * from applied_student where student_grno = $student_grno and company_id = $userid";
    $results = $conn -> query($query);
    $row = $results -> fetch_assoc();
    $selected = $row['selected_notselected'];



// $selected=false;
// $available=false;
// if($status==0){
//     $query = "select * from applied_student where student_grno = $student_grno and company_id = $userid";
//     $results = $conn -> query($query);
//     $selected = $results['selected_notselected']
//
// }else{
//   $query = "select * from selected_student where student_grno = $student_grno and company_id = $userid";
//   $results = $conn -> query($query);
//   $available = $results -> num_rows > 0
// }
//   if ($available) {
//       header('Location: /college_project/TandP/applied_students.php?selected=true');
//     // if ($status==0) {
//     //   header('Location: /college_project/TandP/applied_students.php?already=true');
//     // }
//     // else {
//     //   header('Location: /college_project/TandP/applied_students.php?already=true&status=true');
//     // }
//   }
//   if ($selected == 0) {
//     header('Location: /college_project/TandP/applied_students.php?rejected=true');
//   }
  if($selected==0 &&  $status==0){
    header('Location: /college_project/RGIT/TPO/applied_students.php?rejected=true');
  }
   elseif (($selected==1 && $status==1) ||($selected==1 && $status==0) ) {
     header('Location: /college_project/RGIT/TPO/applied_students.php?selected=true');
   }
   else{
    $date = date("Y-m-d");

    if($status == 0){
      $query = "update applied_student set selected_notselected = 0,selected_notselected_date='$date' where company_id=$userid and student_grno = $student_grno";
      $results = $conn -> query($query);
    }else{
      $query = "update applied_student set selected_notselected = 1,selected_notselected_date='$date' where company_id=$userid and student_grno = $student_grno";
      $results = $conn -> query($query);
      // $query = "insert into selected_student(student_grno,company_id,date) values($student_grno,$userid,'$date')";
      // $results = $conn -> query($query);
    }
    if($results){
      header('Location: /college_project/RGIT/TPO/applied_students.php');
    }
    die('could not apply for company');
  }
}
 ?>
