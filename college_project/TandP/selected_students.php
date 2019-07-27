<?php
session_start();
$username = $_SESSION['username'];
$userid = $_SESSION['userid'];

require "includes/dbconnect.php";

if($conn -> connect_error){
  die($conn -> connect_error);
}else{

?>

<!doctype html>
<html>
  <head>
    <meta charset=utf-8>
    <title>Friends List</title>
    <link rel="stylesheet" href="/fndfrancis/css/app.css">
  </head>
  <body>

    <div class="upper-container">
      <?php require 'includes/header.php'; ?>
    </div>

    <?php
      $query = "select * from applied_student where company_id = $userid and selected_notselected = 1";
      $results = $conn -> query($query);
    ?>

    <div class="total_student">
      <h2>Total Number of selected Students = <?php echo($results -> num_rows); ?> </h2>
    </div>

    <table>
      <tbody>
        <?php
          while($row = $results -> fetch_assoc()){
          ?>
          <tr>
            <td><?php echo ($row['student_grno']);?></td>
            <td><?php echo ($row['date']);?></td>
          </tr>
          <?php
            }
          }
          ?>
      </tbody>
    </table>

  </body>
</html>
