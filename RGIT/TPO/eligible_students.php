<?php
session_start();
$userid = $_SESSION['userid'];
$username = $_SESSION['username'];

require '../includes/dbconnect.php';
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
            // MODIFIED FOR 2 COLUMNS
            function myFunction() {
            var input, filter, table, tr, td, i, txtValue;
            input = document.getElementById("myInput");
            filter = input.value.toUpperCase();
            table = document.getElementById("myTable");
            tr = table.getElementsByTagName("tr");
            for (i = 0; i < tr.length; i++) {
                td = tr[i].getElementsByTagName("td")[0];
                td2 = tr[i].getElementsByTagName("td")[1];
                // MODIFIED FOR 2 COLUMNS
                if (td || td2) {
                    if(td){
                        txtValue = td.textContent || td.innerText;
                    }
                    if(td2){
                        txtValue2 = td2.textContent || td2.innerText;
                    }// MODIFIED FOR 2 COLUMNS
                    if (txtValue.toUpperCase().indexOf(filter) > -1 || txtValue2.toUpperCase().indexOf(filter) > -1 ) {
                        tr[i].style.display = "";
                    } else {
                        tr[i].style.display = "none";
                        
                    }
                }
            }
            }
    </script>
    <style>
      .sub_row{background-color:#35ec35  !important;}
    </style>
</head>
<body>
    <!-- Navigation -->
    <?php require '../includes/header_tpo.php';?>

    <?php
        $query = "select * from student where tenth_percent >= $minimum_percentage_eng";
        $results = $conn -> query($query);
    ?>

    <div class="total_student">
        <h2>Total Number of Students = <?php echo($results -> num_rows); ?></h2>
    </div>

  
  <!-- Page Content -->
  <div class="container">

  <div class="container">
  <h2>Eligible Students</h2>
  <p>These can apply for the company</p>

<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for Company">
  <table id="myTable" class="table table-hover overflow-y:auto;">
    <thead>
      <tr>
        <th>Student Grno</th>
        <th>Student Name</th>
        <th>Student Phone</th>
        <th>Student dob</th>
      </tr>
    </thead>
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





  </div>
  <!-- Footer -->

    <?php require '../includes/footer.php' ?>

  <!-- Bootstrap core JavaScript -->
  <script src="../style/profile/vendor/jquery/jquery.min.js"></script>
  <script src="../style/profile/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
