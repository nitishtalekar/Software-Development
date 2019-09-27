<?php
session_start();

if (!isset($_SESSION['userid']))
{

  header('Location: /college_project/RGIT/');
}elseif($_SESSION['type']!='student'){

  header('Location: /college_project/RGIT/');
}

$username = $_SESSION['username'];
$userid = $_SESSION['userid'];

require "../includes/dbconnect.php";

$company_id = $_POST['company_id'];

if($conn -> connect_error){
  die($conn -> connect_error);
}else{

  $query = "select * from applied_student where student_grno = $userid and company_id = $company_id";
  $results = $conn -> query($query);

  if ($results -> num_rows > 0) {
    header('Location: /college_project/RGIT/Student/available_companies.php?already=1');
  }
  else{
    $date = date("Y-m-d");
    $query = "insert into applied_student(student_grno,company_id,date) values($userid,$company_id,'$date')";

    $results = $conn -> query($query);
    if($results){
      header('Location: /college_project/RGIT/Student/applied_companies.php');
    }
    die('could not apply for company');
  }
}
 ?>
