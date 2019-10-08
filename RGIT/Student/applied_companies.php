<?php
session_start();


if (!isset($_SESSION['userid'])) {

  header('Location: /RGIT/');
} elseif ($_SESSION['type'] != 'student') {

  header('Location: /RGIT/');
}

$userid = $_SESSION['userid'];
$username = $_SESSION['username'];

require '../includes/dbconnect.php';
if ($conn->connect_error) {
  die($conn->connect_error);
} else {
  // $query = "select * from applied_student where student_grno = $userid";
  // $results = $conn -> query($query);

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
  <style>
    .sub_row {
      background-color: #35ec35 !important;
    }

    .sub_row_not_selected {
      background-color: #ff4b4b !important;
    }

    .sub_row_no_answer {
      background-color: #5fb4f2 !important;
    }
  </style>
</head>

<body>
  <!-- Navigation -->
  <?php require '../includes/header.php'; ?>

  <?php
  $company_name = array();


  $query = "select * from company";
  $results = $conn->query($query);

  while ($row = $results->fetch_assoc()) {
    $company_name[strval($row['company_id'])] = $row['company_name'];
  }

  $query = "select * from applied_student where student_grno = $userid";
  $results = $conn->query($query);

  ?>

  <!-- Page Content -->
  <div class="container">

    <div class="container">
      <h2 id="after_nav">Applied Companies</h2>
      <p>You have applied for these companies</p>

      <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for Company">
      <table id="myTable" class="table table-hover overflow-y:auto;">
        <thead>
          <tr>
            <th>Company Name</th>
            <th>Date</th>
            <th>Updated On</th>
            <th>Status</th>
          </tr>
        </thead>
        <tbody>
          <?php
          if ($results) {
            while ($row = $results->fetch_assoc()) {
              ?>
              <tr <?php
                      if ($row['selected_notselected'] == -1) {
                        echo ("class='sub_row_no_answer'");
                      } elseif ($row['selected_notselected'] == 0) {
                        echo ("class='sub_row_not_selected'");
                      } elseif ($row['selected_notselected'] == 1) {
                        echo ("class='sub_row'");
                      } ?>>

                <td><?php echo ($company_name[strval($row['company_id'])]); ?></td>
                <td><?php echo ($row['date']); ?></td>
                <td><?php echo ($row['selected_notselected_date']); ?></td>
                <td><?php
                        if ($row['selected_notselected'] == -1) {
                          echo ("No Answer");
                        } elseif ($row['selected_notselected'] == 0) {
                          echo ("Not Selected");
                        } else {
                          echo ("Selected");
                        } ?>
                </td>
              </tr>
          <?php
            }
          } else {
            echo ("No Companies");
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