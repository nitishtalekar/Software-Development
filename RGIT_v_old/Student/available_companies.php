<?php
session_start();


if (!isset($_SESSION['userid']))
{

  header('Location: /college_project/RGIT/');
}elseif($_SESSION['type']!='student'){

  header('Location: /college_project/RGIT/');
}

$userid = $_SESSION['userid'];
$username = $_SESSION['username'];

require '../includes/dbconnect.php';
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

<?php if($already){echo(" <script type='text/javascript'> alert('Already applied'); </script> ");}?>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>RGIT-Home </title>

  <!-- Bootstrap core CSS --> 
  <link href="../style/home/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="../style/home/css/start.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="../style/forms/css/main.css">
    <script>
            function myFunction() {
            var input, filter, table, tr, td, i, txtValue;
            input = document.getElementById("myInput");
            filter = input.value.toUpperCase();
            table = document.getElementById("myTable");
            tr = table.getElementsByTagName("tr");
            for (i = 0; i < tr.length; i++) {
                td = tr[i].getElementsByTagName("td")[0];
                if (td) {
                txtValue = td.textContent || td.innerText;
                if (txtValue.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
                }       
            }
            }
    </script>
</head>
<body>
 <!-- Navigation -->
<?php require '../includes/header.php';?>


<?php
$available = array();

$query = "select * from applied_student where student_grno = $userid";
$results = $conn -> query($query);

while($row = $results -> fetch_assoc()){
    $available[] = $row['company_id'];
}
?>
  
  <!-- Page Content -->
  <div class="container">

  <div class="container">
  <h2 id="after_nav">Available Companies</h2>
  <p>Search for Companies</p>
  <?php
      $query = "select * from company where minimum_percentage_tenth <= $tenth_percent and minimum_percentage_twelfth <= $twelfth_percent";
      $results = $conn -> query($query);
    ?>

<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for Company">
<span style="text-align:right;">
<?php

// if($_SESSION['placement_higherstudies'] <=2)
// {
//   echo(" <a class='navbar-brand' href='/college_project/RGIT/TPO/tpo_profile.php'>");
//   echo("<span style='margin-left:5px; margin-right:5px;'> > </span>");
//   echo(ucwords($_SESSION['company_name']));
//   echo("</a>");
// }

?>
</span>
  <table id="myTable" class="table table-hover overflow-y:auto;">
    <thead>
      <tr>
        <th>Company Name</th>
        <th>Min Eng percentage</th>
        <th>Annual Package</th>
        <th>Apply</th>
      </tr>
    </thead>
  
      <tbody>
        <?php
        if($results)
        {
        while($row = $results -> fetch_assoc()){
          ?>
          <tr style="
          <?php
            if($old_salary > 0 &&($row['company_id']!= $placed_company_id)  && (1.4*$old_salary) > $row['annual_package'] && (!in_array($row['company_id'],$available))){
              echo"background-color:#ff4b4b";
            }
            elseif(in_array($row['company_id'],$available))
              {echo"background-color:#35ec35";}
           ?>
          
          ">
            <td><?php echo ($row['company_name']);?></td>
            <td><?php echo ($row['minimum_percentage_eng']);?></td>
            <td><?php echo ($row['annual_package']);?></td>
            
            <?php
              if($old_salary > 0 &&($row['company_id']!= $placed_company_id)  && (1.4*$old_salary) > $row['annual_package'] && (!in_array($row['company_id'],$available))){
                ?>
                <td>Not Applicable Salary 40% ↓</td>
                <?php
              }
              elseif(!in_array($row['company_id'],$available)){  
            ?>
                    <td><form method="post" action="/college_project/RGIT/Student/apply.php" onsubmit="return confirm('Are you sure you want to apply for <?php echo($row['company_name']); ?> ?');">
                    <input type="number" name="company_id" value="<?php echo( $row['company_id']); ?>" hidden>
                    <button style="height:30px;" class="apply_button contact100-form-btn" type="submit">Apply</button>
                    </form>
                    </td>
            <?php
                }
                else{
            ?>
                    <td >Applied</td>
            <?php
                }
            ?>
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
  <!-- Footer -->

    <?php require '../includes/footer.php' ?>

  <!-- Bootstrap core JavaScript -->
  <script src="../style/profile/vendor/jquery/jquery.min.js"></script>
  <script src="../style/profile/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
