<?php require('../includes/dbconnect.php');
$db = mysqli_connect($database_host, $database_username, $database_password, $database_name);
session_start();


if (!isset($_SESSION['userid'])) {

  header('Location: /RGIT/');
}

$grno = $_SESSION['userid'];
$query = "SELECT * FROM student WHERE grno='$grno';";
$results = mysqli_query($db, $query);
$row = mysqli_fetch_assoc($results);
if (mysqli_num_rows($results) == 1) {
  $name = $row['student_name'];
  $pwd = $row['password'];
  $nameexp = explode(" ", $name);
  $fname = $nameexp[0];
  $mname = $nameexp[1];
  $lname = $nameexp[2];
  $email = $row['student_mail'];
  $phone = $row['student_phone'];
  $gen = $row['student_gen'];
  $dob = $row['student_dob'];
  $tenbrd = $row['tenth_board'];
  $tenper = $row['tenth_percent'];
  $twelvebrd = $row['twelfth_board'];
  $twelveper = $row['twelfth_percent'];
  $dept = $row['student_dept'];
  $sem = $row['student_sem'];
  $doj = $row['student_doj'];
  $ep = $row['eng_percentage'];
  $ak = $row['active_kt'];
  $gap =  $row['gap'];
}
$query = "SELECT * FROM achievement WHERE grno='$grno';";
$results = mysqli_query($db, $query);
$row = mysqli_fetch_assoc($results);
if (mysqli_num_rows($results) == 1) {
  $ach1 = $row['achievement1'];
  $ach_cert1 = $row['ach_certi1'];
  $ach2 = $row['achievement2'];
  $ach_cert2 = $row['ach_certi2'];
  $ach3 = $row['achievement3'];
  $ach_cert3 = $row['ach_certi3'];
}
$query = "SELECT * FROM certification WHERE grno='$grno';";
$results = mysqli_query($db, $query);
$row = mysqli_fetch_assoc($results);
if (mysqli_num_rows($results) == 1) {
  $course1 = $row['course1'];
  $valid1 = $row['validity1'];
  $course_cert1 = $row['certificate1'];
  $course2 = $row['course2'];
  $valid2 = $row['validity2'];
  $course_cert2 = $row['certificate2'];
  $course3 = $row['course3'];
  $valid3 = $row['validity3'];
  $course_cert3 = $row['certificate3'];
}
$query = "SELECT * FROM internship WHERE grno='$grno';";
$results = mysqli_query($db, $query);
$row = mysqli_fetch_assoc($results);
if (mysqli_num_rows($results) == 1) {
  $comp1 = $row['company1'];
  $pos1 = $row['position1'];
  $from1 = $row['date_from1'];
  $till1 = $row['date_till1'];
  $desc1 = $row['exp1'];
  $letter1 = $row['letter1'];
  $comp2 = $row['company2'];
  $pos2 = $row['position2'];
  $from2 = $row['date_from2'];
  $till2 = $row['date_till2'];
  $desc2 = $row['exp2'];
  $letter2 = $row['letter2'];
  $comp3 = $row['company3'];
  $pos3 = $row['position3'];
  $from3 = $row['date_from3'];
  $till3 = $row['date_till3'];
  $desc3 = $row['exp3'];
  $letter3 = $row['letter3'];
}
$query = "SELECT * FROM result WHERE grno='$grno';";
$results = mysqli_query($db, $query);
$row = mysqli_fetch_assoc($results);
$sem_marks = array();
if (mysqli_num_rows($results) == 1) {
  for ($i = 0; $i < 8; $i++) {
    if ($row['sem' . ($i + 1)] != "") {
      $sem_marks[$i] = $row['sem' . ($i + 1)];
    }
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
  <link href="../../img/divas.png" rel="icon">

  <title><?= $name ?>'s Dashboard</title>

  <!-- Bootstrap core CSS -->
  <link href="../style/profile/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet">
  <link href="../style/profile/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <!-- Custom styles for this template -->
  <link href="../style/profile/css/profile.css" rel="stylesheet">
  <link href="../style/profile/owlcarousel.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>


  <style>
    input.error {
      border: 1px dotted red;
    }

    label.error {
      width: 100%;
      color: red;
      font-style: italic;
      margin-left: 10px;
      margin-bottom: 5px;
    }

    @media (max-width: 768px) {
      .back-to-top {
        bottom: 15px;
      }
    }

    .back-to-top {
      position: fixed;
      display: none;
      background: #0e3c58;
      color: #fff;
      width: 44px;
      height: 44px;
      text-align: center;
      line-height: 1;
      font-size: 16px;
      border-radius: 50%;
      right: 15px;
      bottom: 15px;
      transition: background 0.5s;
      z-index: 11;
    }

    .back-to-top i {
      padding-top: 12px;
      color: #fff;
    }
  </style>

</head>

<body id="page-top">

  <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
    <a class="navbar-brand js-scroll-trigger" href="#page-top">
      <span class="d-block d-lg-none"><?= $name ?></span>

    </a>
    <div>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <!-- <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarhome" aria-controls="navbarhome" aria-expanded="false" aria-label="Toggle navigation">
      <a href="../../index.php" style="color:white"><span class="fa fa-home" ></span></a>
    </button> -->

    </div>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="#home">Home</a>
        </li>
        <!-- <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="#education">Education</a>
        </li> -->
        <!-- <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="#degree">Degree Education</a>
        </li> -->
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="#achievements">Achievements</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="#certificates">Certifications</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="#internships">Internships</a>
        </li>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="../logout.php">Logout</a>
        </li>
      </ul>
    </div>
  </nav>

  <div class="container-fluid p-0">

    <!-- <section class="sticky-top shadow p-2 bg-white d-none d-lg-block ">
      <div class="row m-0">
        <div class="col-12 text-right">
        <button class="btn" >RGIT</button>
        <button class="btn dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <i class="fa fa-user" style="font-size:20px"></i>
        </button>
          <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
              <a class="dropdown-item" href="../../logout.php">Logout</a>
          </div>
        </div>
      </div>
    </section> -->

    <section class="resume-section p-3 p-lg-5 d-flex align-items-center border" id="home">
      <div class="w-100">
        <div class="row">
          <h1 class="mb-0 col-md-12">
            <span class="text-primary"><?= $name ?></span>
          </h1>
        </div>

        <div class="subheading mb-1">
          RAJIV GANDHI INSTITUTE OF TECHNOLOGY.
        </div>
        <div class="subheading mb-3">
          <a href="forms/Student.php"> EDIT PROFILE </a>
        </div>

        <p class="lead mb-2" style="text-transform:uppercase;">
          DEPARTMENT OF <?= $dept ?><br>
          CURRENT SEMESTER: <?= $sem ?><br>
          DATE OF BIRTH: <?= $dob ?><br>
          DATE OF JOINING: <?= $doj ?><br>
          ENGINEERING PERCENTAGE: <?= $ep ?><br>
          ACTIVE KT: <?= $ak ?><br>
          GAP YEAR: <?= $gap ?><br>

          <!-- <a href="student_profile.php"> LINK TO companies</a> -->
        </p>
        <div class="row">
          <h3 class="col-md-12 mb-1">EDUCATION</h3>
          <p class="lead mb-2 col-md-12" style="text-transform:uppercase;">
            <br>CLASS 10: <?= $tenbrd ?> : <?= $tenper ?>%
            <br>CLASS 12: <?= $twelvebrd ?> : <?= $twelveper ?>%
          </p>

          <p class="lead mb-2 col-md-12" style="text-transform:uppercase;">
            <?php
            for ($i = 0; $i < 8; $i++) {
              if (isset($sem_marks[$i]))
                echo "<br>Semester " . ($i + 1) . ": " . $sem_marks[$i];
            }
            ?>
          </p>
        </div>
        <div class="row">
          <h3 class="col-md-12 mb-1">Training And Placement</h3>
          <p class="lead mb-2 col-md-12" style="text-transform:uppercase;">
            <br><a class="subheading mb-3" href="applied_companies.php"> Applied companies </a>
            <br><a class="subheading mb-3" href="available_companies.php"> Available companies </a>
          </p>
        </div>





      </div>
    </section>

    <!-- <section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="education">
        <div class="w-100">





      </div>
    </section> -->

    <!-- <section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="degree">
      <div class="w-100">
        <div class="row">
          <h1 class="mb-0 col-md-12">
            <span class="text-primary"><?= $name ?></span>
          </h1>
        </div>

        <div class="subheading mb-5">RAJIV GANDHI INSTITUTE OF TECHNOLOGY.
      </div>
          <p class="lead mb-2">
            DEPARTMENT OF <?= $dept ?>
          </p>
        </div>
    </section> -->

    <section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="achievements">
      <div class="w-100">
        <div class="row">
          <h1 class="mb-0 col-md-12">
            <span class="text-primary"><?= $name ?></span>
          </h1>
        </div>
      </div>
    </section>

    <section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="certificates">
      <div class="w-100">
        <div class="row">
          <h1 class="mb-0 col-md-12">
            <span class="text-primary"><?= $name ?></span>
          </h1>

        </div>

        <div class="subheading mb-5">RAJIV GANDHI INSTITUTE OF TECHNOLOGY.
        </div>
        <p class="lead mb-2" style="text-transform:uppercase;">
          DEPARTMENT OF <?= $dept ?>

        </p>
      </div>
    </section>

    <section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="internships">
      <div class="w-100">
        <div class="row">
          <h1 class="mb-0 col-md-12">
            <span class="text-primary"><?= $name ?></span>
          </h1>
        </div>

        <div class="subheading mb-5">RAJIV GANDHI INSTITUTE OF TECHNOLOGY.
        </div>
        <p class="lead mb-2">
          DEPARTMENT OF <?= $dept ?>

        </p>
      </div>
    </section>

    <hr class="m-0">

  </div>
  <a href="#" class="back-to-top" style="display:inline"><i class="fa fa-chevron-up"></i></a>

  <!-- Bootstrap core JavaScript -->
  <script src="../style/profile/vendor/jquery/jquery.min.js"></script>
  <script src="../style/profile/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="../style/profile/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="../style/profile/js/inv.js"></script>

  <!--owl carousal-->
  <script src="../style/profile/js/owlcarousel.js"></script>
  <!--theme script-->
  <script src="../style/profile/js/invscripts.js"></script>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.js"></script>
  <script src="../style/profile/js/validation.js"></script>


</body>

</html>
<script>
  if (window.history.replaceState) {
    window.history.replaceState(null, null, window.location.href);
  }
</script>
<script type="text/javascript">
  inactivityTimeout = false;
  resetTimeout();

  function onUserInactivity() {
    window.location.href = "../../logoutwarned.php";
  }

  function resetTimeout() {
    clearTimeout(inactivityTimeout);
    inactivityTimeout = setTimeout(onUserInactivity, 1000 * 600);
  }
  window.onmousemove = resetTimeout;
</script>