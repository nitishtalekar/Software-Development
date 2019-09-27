<?php
session_start();


if (!isset($_SESSION['userid']))
{

  header('Location: /college_project/RGIT/');
}elseif($_SESSION['type']!='tpo'){

  header('Location: /college_project/RGIT/');
}

$username = $_SESSION['username'];
$userid = $_SESSION['userid'];

require "../includes/dbconnect.php";

if($conn -> connect_error){
  die($conn -> connect_error);
}

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
      .sub_row_not_selected{background-color:#ff4b4b   !important;}
      .sub_row_no_answer{background-color:#5fb4f2   !important;}
    </style>
</head>
<body>
 <!-- Navigation -->
<?php require '../includes/header_tpo.php';?>

<?php

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

$selected_students = array();
$rejected_students = array();

$query = "select student_grno,selected_notselected from applied_student where company_id = $userid";
$results = $conn -> query($query);
while($row = $results -> fetch_assoc()){
    if ($row['selected_notselected'] == 1){
        $selected_students[]=$row['student_grno'];
    }
    elseif($row['selected_notselected'] == 0){
        $rejected_students[]=$row['student_grno'];
    }
}


// $query = "select * from applied_student where student_grno = $userid";
// $results = $conn -> query($query);



?>
  
  <!-- Page Content -->
  <div class="container">

  <div class="container">
  <h2 id="after_nav">Applied Students</h2>
  <p>Students who have applied for this companies</p>


  <?php
      $query = "select * from applied_student where company_id = $userid";
      $results = $conn -> query($query);
    ?>

    <div class="total_student">
      <h2>Total Number of Applied Students = <?php echo($results -> num_rows); ?> </h2>
    </div>

<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for Student">
  <table id="myTable" class="table table-hover overflow-y:auto;">
    <thead>
      <tr>
        <th>Student Grno</th>
        <th>Student Name</th>
        <th>Student DOB</th>
        <th>Date</th>
        <th colspan=2>Status/Action</th>
      </tr>
    </thead>
    <tbody>
        <?php
          while($row = $results -> fetch_assoc()){
              $student_selected_bool = in_array($row['student_grno'],$selected_students);
              $student_rejected_bool = in_array($row['student_grno'],$rejected_students);
          ?>
          <tr
            <?php
              if ($student_selected_bool) {
                echo("class='sub_row'");
              }elseif ($student_rejected_bool) {
                echo("class='sub_row_not_selected'");
              }else{
                echo("class='sub_row_no_answer'");
                } 
            ?>
          
          >
            <td><?php echo ($row['student_grno']);?></td>
            <td><?php echo ($student_name[strval($row['student_grno'])]);?></td>
            <td><?php echo ($student_dob[strval($row['student_grno'])]);?></td>
            <td><?php echo ($row['date']);?></td>
            <?php if(!$student_selected_bool){ 
            ?>
                <td
                    <?php
                        if($student_rejected_bool){
                            echo(" colspan=2");
                        }
                    ?>
                ><form method="post" action="/college_project/RGIT/TPO/select_reject.php" onsubmit="return confirm('Are you sure you want to select <?php echo($row['student_grno']); ?> ?');">
                    <input type="number" name="grno" value="<?php echo( $row['student_grno']); ?>" hidden>
                    <input type="number" name="status" value="1" hidden>
                    <button style="height:30px;" class="apply_button contact100-form-btn" type="submit">Select</button>
                    </form>
                </td>
            <?php
                if(!$student_rejected_bool){
            ?>
                <td><form method="post" action="/college_project/RGIT/TPO/select_reject.php" onsubmit="return confirm('Are you sure you want to reject <?php echo($row['student_grno']); ?> ?');">
                    <input type="number" name="grno" value="<?php echo( $row['student_grno']); ?>" hidden>
                    <input type="number" name="status" value="0" hidden>
                    <button style="height:30px;" class="apply_button contact100-form-btn" type="submit">Reject</button>
                    </form>
                </td>
            <?php
                }
                 }
                else{
            ?>
                    <td colspan=2>Selected</td>
            <?php
                }
            ?>
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
