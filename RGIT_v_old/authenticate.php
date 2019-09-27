<?php
  $username = $_POST['username'];
  $password = $_POST['password'];
  $type = $_POST['type'];

  require 'includes/dbconnect.php';
  if ($conn -> connect_error){
    die($conn -> connect_error);
  }
  else{

      if($type == 'student'){
          $query = "select grno from student where student_name='$username' and password='$password'";
          $results = $conn ->query($query);
          if ($results -> num_rows ===0) {
              header('Location: /college_project/RGIT/Student/student_login.php?invalid=1');
            }else {
              $row = $results -> fetch_assoc();
              $userid = $row['grno'];
              session_start();
              $_SESSION['userid'] = $userid;
              $_SESSION['username'] = $username;
              $_SESSION['placement_higherstudies'] = $row['placement_higherstudies'];
              $_SESSION['type'] = 'student';
              header('Location: /college_project/RGIT/Student/student_profile.php');
            }
      }elseif($type == 'teacher'){

      }else{

          // $query = "select company_id from company where company_name='$username' and password='$password'";
          $query = "select * from tpo where tpo_name='$username' and tpo_password='$password'";
          $results = $conn ->query($query);
          if ($results -> num_rows ===0) {
              header('Location: /college_project/RGIT/TPO/index.php?invalid=1');
            }else {
              $row = $results -> fetch_assoc();
              // $userid = $row['company_id'];
              $tpo_id = $row['tpo_id'];

              session_start();
              $_SESSION['tpo_id'] = $tpo_id;
              // $_SESSION['userid'] = $userid;
              $_SESSION['username'] = $username;
              $_SESSION['type'] = 'tpo';
              //header('Location: /fndfrancis/home.php?username='.$username);
              header('Location: /college_project/RGIT/TPO/companies.php');
              }
          }
  }

?>
