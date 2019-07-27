<?php
session_start();
$userid = $_SESSION['userid'];
$username = $_SESSION['username'];

require 'includes/dbconnect.php';
if ($conn -> connect_error){
  die($conn -> connect_error);
}
else{


  $query = "select * from student where grno = $userid";
  $results = $conn -> query($query);
  $row = $results -> fetch_assoc();

  $tenth_percent = $row['tenth_percent'];
  $twelfth_percent = $row['twelfth_percent'];
  }

  $already = false;

    if (array_key_exists('already', $_GET)) {
      $already = true;
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
        <a href="/college_project/TandP/student_profile.php">Profile</a><br>
        <a href="/college_project/TandP/applied_companies.php">Applied Companies</a>
      </div>
      <div class="">
        <h2>Companies Available</h2>

        <?php
          $query = "select * from company where minimum_percentage_tenth <= $tenth_percent and minimum_percentage_twelfth <= $twelfth_percent";
          $results = $conn -> query($query);
        ?>
        <table>
          <tbody>
            <?php
            if($results)
            {
            while($row = $results -> fetch_assoc()){
              ?>
              <tr>
                <td><?php echo ($row['company_name']);?></td>
                <td><?php echo ($row['minimum_percentage_eng']);?></td>
                <td><?php echo ($row['annual_package']);?></td>
                <td><form method="post" action="/college_project/TandP/apply.php" onsubmit="return confirm('Are you sure you want to apply for <?php echo($row['company_name']); ?> ?');">
                    <input type="number" name="company_id" value="<?php echo( $row['company_id']); ?>" hidden>
                    <button class="apply_button" type="submit">Apply</button>
                  </form>
                </td>
              </tr>
              <?php
              }
            }else {
              echo("No Companies");
            }
            ?>
          </tbody>
        </table>

      </div>
    </div>
  </body>
</html>

<?php if($already){echo(" <script type='text/javascript'> alert('Already applied'); </script> ");}

?>
