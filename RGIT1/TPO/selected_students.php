<?php
session_start();

if (!isset($_SESSION['userid']))
{

  header('Location: /college_project/RGIT/');
}elseif($_SESSION['type']!='tpo'){

  header('Location: /college_project/RGIT/');
}

$userid = $_SESSION['userid'];
$username = $_SESSION['username'];

require '../includes/dbconnect.php';
if ($conn -> connect_error){
  die($conn -> connect_error);
}
else{
 
$student_name = array();
$student_ph_no = array();
$student_dob = array();

$query=  'select * from student';
$results = $conn -> query($query);

while($row = $results -> fetch_assoc()){
  $student_name[strval($row['grno'])] = $row['student_name'];
  $student_ph_no[strval($row['grno'])] = $row['student_phone'];
  $student_dob[strval($row['grno'])] = $row['student_dob'];

  }
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
      $query = "select * from applied_student where company_id = $userid and selected_notselected = 1";
      $results = $conn -> query($query);
    ?>

    <div class="total_student">
        <h2>Total Number of Students = <?php echo($results -> num_rows); ?></h2>
    </div>

  
  <!-- Page Content -->
  <div class="container">

  <h2 id="after_nav">Selected Students</h2>
  <p>These are selected for this company</p>

    <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for Student">
<table id="myTable" class="table table-hover overflow-y:auto;">
<thead>
      <tr>
        <th>Student Grno</th>
        <th>Student Name</th>
        <th>Student Phone</th>
        <th>Student DOB</th>
        <th>Selected Date</th>
      </tr>
    </thead>
        <tbody>
              <?php
                while($row = $results -> fetch_assoc()){
                ?>
                <tr  class="sub_row">
                  <td><?php echo ($row['student_grno']);?></td>
                  <td><?php echo ($student_name[strval($row['student_grno'])]);?></td>
                  <td><?php echo ($student_ph_no[strval($row['student_grno'])]);?></td>
                  <td><?php echo ($student_dob[strval($row['student_grno'])]);?></td>
                  <td><?php echo ($row['selected_notselected_date']);?></td>
                </tr>
                <?php
                  }
                ?>
        </tbody>
    </table>

  </div>
  <!-- Footer -->

    <?php require '../includes/footer.php' ?>

  <!-- Bootstrap core JavaScript -->
  <script src="../style/profile/vendor/jquery/jquery.min.js"></script>
  <script src="../style/profile/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
