<?php
session_start();


if (!isset($_SESSION['userid'])) {

  header('Location: /RGIT/');
} elseif ($_SESSION['type'] != 'tpo') {

  header('Location: /RGIT/');
}


$userid = $_SESSION['userid'];
$username = $_SESSION['username'];

require '../includes/dbconnect.php';
if ($conn->connect_error) {
  die($conn->connect_error);
} else {


  $query = "select * from student where grno = $userid";
  $results = $conn->query($query);
  $row = $results->fetch_assoc();

  $tenth_percent = $row['tenth_percent'];
  $twelfth_percent = $row['twelfth_percent'];
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

</head>

<body>
  <!-- Navigation -->
  <?php require '../includes/header_tpo.php'; ?>

  <!-- Page Content -->
  <div class="container">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    </nav>

    <!-- Heading Row -->
    <div class="row align-items-center my-5">
      <div class="col-lg-7">
        <img class="img-fluid rounded mb-4 mb-lg-0" src="http://placehold.it/900x400" alt="">
      </div>
      <!-- /.col-lg-8 -->
      <div class="col-lg-5">
        <h1 class="font-weight-light">Rajiv Gandhi Institute of Technology</h1>
        <p>This is a template that is great for small businesses. It doesn't have too much fancy flare to it, but it makes a great use of the standard Bootstrap core components. Feel free to use this template for any project you want!</p>
      </div>
      <!-- /.col-md-4 -->
    </div>
    <!-- /.row -->

    <!-- Call to Action Well -->
    <div class="my-5 py-4 text-center">
      <div>
        <h1 class="m-0">SELECT</h1>
      </div>
    </div>

    <!-- Content Row -->
    <div class="row">
      <div class="col-md-4 mb-5">
        <div class="card h-100">
          <div class="card-body">
            <h2 class="card-title">Eligible Students</h2>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem magni quas ex numquam, maxime minus quam molestias corporis quod, ea minima accusamus.</p>
          </div>
          <form class="contact100-form validate-form" action="eligible_students.php" method="POST" enctype="multipart/form-data">
            <div class="container-contact100-form-btn mx-2 my-2">
              <button type="submit" class="contact100-form-btn" name="student">
                <span>
                  Enter
                  <i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
                </span>
              </button>
            </div>
          </form>
        </div>
      </div>
      <!-- /.col-md-4 -->
      <div class="col-md-4 mb-5">
        <div class="card h-100">
          <div class="card-body">
            <h2 class="card-title">Applied Students</h2>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem magni quas ex numquam, maxime minus quam molestias corporis quod, ea minima accusamus.</p>
          </div>
          <form class="contact100-form validate-form" action="applied_students.php" method="POST" enctype="multipart/form-data">
            <div class="container-contact100-form-btn mx-2 my-2">
              <button type="submit" class="contact100-form-btn" name="professor">
                <span>
                  Enter
                  <i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
                </span>
              </button>
            </div>
          </form>
        </div>
      </div>
      <div class="col-md-4 mb-5">
        <div class="card h-100">
          <div class="card-body">
            <h2 class="card-title">Selected Students</h2>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem magni quas ex numquam, maxime minus quam molestias corporis quod, ea minima accusamus.</p>
          </div>
          <form class="contact100-form validate-form" action="selected_students.php" method="POST" enctype="multipart/form-data">
            <div class="container-contact100-form-btn mx-2 my-2">
              <button type="submit" class="contact100-form-btn" name="student">
                <span>
                  Enter
                  <i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
                </span>
              </button>
            </div>
          </form>
        </div>
      </div>

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

  <!-- Footer -->
  <?php require '../includes/footer.php' ?>
  <!-- Bootstrap core JavaScript -->
  <script src="../style/profile/vendor/jquery/jquery.min.js"></script>
  <script src="../style/profile/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>