<?php
session_start();


if (!isset($_SESSION['tpo_id']))
{

  header('Location: /college_project/RGIT/');
}elseif($_SESSION['type']!='tpo'){

  header('Location: /college_project/RGIT/');
}

$username = $_SESSION['username'];

require '../includes/dbconnect.php';
if ($conn -> connect_error){
  die($conn -> connect_error);
}
else{
  
  }

  ?>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>RGIT-Home</title>

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
<?php require '../includes/header_tpo.php';?>


<?php

    $query = "select * from company";
    $results = $conn -> query($query);

?>
  
  <!-- Page Content -->
  <div class="container">

  <div class="container">
  <h2 id="after_nav">Companies</h2>
  <p>Search for Companies</p>

<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for Company">
  <table id="myTable" class="table table-hover overflow-y:auto;">
    <thead>
      <tr>
        <th>Company Name</th>
        <th>Min Eng percentage</th>
        <th>Annual Package</th>
        <th>Select</th>
      </tr>
    </thead>
  
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
            <td>
                <form method="post" action="/college_project/RGIT/TPO/to_profile.php" onsubmit="return confirm('Are you sure you want to select <?php echo($row['company_name']); ?> ?');">
                    <input type="number" name="company_id" value="<?php echo( $row['company_id']); ?>" hidden>
                    <input type="text" name="company_name" value="<?php echo( $row['company_name']); ?>" hidden>
                    <button style="height:30px;" class="apply_button contact100-form-btn" type="submit">Select</button>
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
  <!-- Footer -->

    <?php require '../includes/footer.php' ?>

  <!-- Bootstrap core JavaScript -->
  <script src="../style/profile/vendor/jquery/jquery.min.js"></script>
  <script src="../style/profile/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
