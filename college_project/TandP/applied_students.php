<?php
session_start();
$username = $_SESSION['username'];
$userid = $_SESSION['userid'];

require "includes/dbconnect.php";

if($conn -> connect_error){
  die($conn -> connect_error);
}else{

$selected = false;
$rejected = false;

  if (array_key_exists('selected', $_GET)) {
    $selected = true;
}

if (array_key_exists('rejected', $_GET)) {
  $rejected = true;
}

if($selected){
  echo(" <script type='text/javascript'> alert('Already selected'); </script> ");
  }
if ($rejected){
    echo(" <script type='text/javascript'> alert('Already rejected'); </script> ");
  }

?>

<!doctype html>
<html>
  <head>
    <meta charset=utf-8>
    <title>app List</title>
    <link rel="stylesheet" href="/fndfrancis/css/app.css">
  </head>
  <body>

    <div class="upper-container">
      <?php require 'includes/header.php'; ?>
    </div>

    <?php
      $query = "select * from applied_student where company_id = $userid";
      $results = $conn -> query($query);
    ?>

    <div class="total_student">
      <h2>Total Number of Applied Students = <?php echo($results -> num_rows); ?> </h2>
    </div>

    <table>
      <tbody>
        <?php
          while($row = $results -> fetch_assoc()){
          ?>
          <tr>
            <td><?php echo ($row['student_grno']);?></td>
            <td><?php echo ($row['date']);?></td>
            <td><form method="post" action="/college_project/TandP/select_reject.php" onsubmit="return confirm('Are you sure you want to select <?php echo($row['student_grno']); ?> ?');">
                <input type="number" name="grno" value="<?php echo( $row['student_grno']); ?>" hidden>
                <input type="number" name="status" value="1" hidden>
                <button class="apply_button" type="submit">Select</button>
                </form>
            </td>

            <td><form method="post" action="/college_project/TandP/select_reject.php" onsubmit="return confirm('Are you sure you want to reject <?php echo($row['student_grno']); ?> ?');">
                <input type="number" name="grno" value="<?php echo( $row['student_grno']); ?>" hidden>
                <input type="number" name="status" value="0" hidden>
                <button class="apply_button" type="submit">Reject</button>
                </form>
            </td>

          </tr>
          <?php
            }
          }
          ?>
      </tbody>
    </table>

  </body>
</html>
