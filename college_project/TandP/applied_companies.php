<?php
session_start();
$username = $_SESSION['username'];
$userid = $_SESSION['userid'];

require "includes/dbconnect.php";

if($conn -> connect_error){
  die($conn -> connect_error);
}else{

$query = "select * from applied_student where student_grno = $userid";

$results = $conn -> query($query);

}
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

    <table>
      <tbody>
        <?php
          while($row = $results -> fetch_assoc()){
          ?>
          <tr>
            <td><?php echo ($row['company_id']);?></td>
            <td><?php echo ($row['date']);?></td>
            <td><?php
              if ($row['selected_notselected']==-1) {
                echo("No Answer");
              }elseif ($row['selected_notselected']==0) {
                echo("Not Selected");
              }else {
                echo ("Selected");
                } ?>
              </td>
          </tr>
          <?php
            }
          ?>
      </tbody>
    </table>

  </body>
</html>
