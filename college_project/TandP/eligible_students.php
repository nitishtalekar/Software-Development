<?php
session_start();
$userid = $_SESSION['userid'];
$username = $_SESSION['username'];

require 'includes/dbconnect.php';
if ($conn -> connect_error){
  die($conn -> connect_error);
}
else{


  $query = "select company_name, minimum_percentage_eng from company where company_id = $userid";
  $results = $conn -> query($query);
  $row = $results -> fetch_assoc();

  $company_name = $row['company_name'];
  $minimum_percentage_eng = $row['minimum_percentage_eng'];

  }
  ?>

  <!DOCTYPE html>
  <html>
    <head>
      <meta charset="utf-8">
      <title></title>
      <link rel="stylesheet" href="/fndfrancis/css/app.css">
    </head>
    <body>
      <div class="upper-container">
        <?php require 'includes/header.php'; ?>
      </div>
      <div class="">
        <img src="images/dead_pool_yo.jpeg">
        <div class="menu-bar">
          <a href="/college_project/TandP/company_profile.php">Profile</a><br>
          <a href="/college_project/TandP/applied_students.php">Applied studens</a><br>
          <a href="/college_project/TandP/selected_students.php">Selected studens</a>
        </div>
        <div class="">
          <h2>Students Available</h2>

          <?php
            $query = "select * from student where tenth_percent >= $minimum_percentage_eng";
            $results = $conn -> query($query);
          ?>

          <div class="total_student">
            <h2>Total Number of Students = <?php echo($results -> num_rows); ?></h2>
          </div>

          <table>
            <tbody>
              <?php
                while($row = $results -> fetch_assoc()){
                ?>
                <tr>
                  <td><?php echo ($row['grno']);?></td>
                  <td><?php echo ($row['student_name']);?></td>
                  <td><?php echo ($row['student_phone']);?></td>
                  <td><?php echo ($row['student_dob']);?></td>
                </tr>
                <?php
                  }
                ?>
            </tbody>
          </table>
      </div>
    </body>
  </html>

<!-- <!doctype html>
<html>
  <head>
    <meta charset=utf-8>
    <title>Friends List</title>
    <link rel="stylesheet" href="/fndfrancis/css/app.css">
  </head>
  <body>
    <div class="upper-container">
  <?//php require 'includes/header.php'; ?>
    </div>
    <div class="">
      <img src="images/dead_pool_yo.jpeg">
      <div class="menu-bar">
        <a href="/fndfrancis/friends.php">Friends</a>
      </div>
    </div>
    <table>
      <tbody>
       <?php
          //while($row = $results -> fetch_assoc()){
          ?>
          <tr>
            <td><?//php echo ($row['username']);?></td>
            <td><?//php echo ($row['gender']);?></td>
            <td><?//php echo ($row['country']);?></td>
          </tr>
          <?php
            //}
          ?>
      </tbody>
    </table>
  </body>
</html> -->
