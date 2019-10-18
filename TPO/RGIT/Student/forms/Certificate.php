<?php require('../../dbconnect.php');

$grno = $_SESSION['userid'];
$name = $_SESSION['Name'];

$scourse1 = '';
$scourse_cert1 = '';
$svalid1 = '';
$scourse2 = '';
$scourse_cert2 = '';
$svalid2 = '';
$scourse3 = '';
$scourse_cert3 = '';
$svalid3 = '';

if ($_SESSION['exist'] == 1) {
	$query = "SELECT * FROM certification WHERE grno='$grno';";
	$results = mysqli_query($db, $query);
	$row = mysqli_fetch_assoc($results);
	$scourse1 = $row['course1'];
	$svalid1 = $row['validity1'];
	$scourse_cert1 = $row['certificate1'];
	$scourse2 = $row['course2'];
	$svalid2 = $row['validity2'];
	$scourse_cert2 = $row['certificate2'];
	$scourse3 = $row['course3'];
	$svalid3 = $row['validity3'];
	$scourse_cert3 = $row['certificate3'];
}

if (isset($_POST['student_certi'])) {
	if (isset($_POST['course1'])) {
		$course1 = mysqli_real_escape_string($db, $_POST['course1']);
		$q = "UPDATE certification SET course1='$course1'where grno='$grno';";
		mysqli_query($db, $q);
		if (isset($_POST['valid1'])) {
			$valid1 = mysqli_real_escape_string($db, $_POST['valid1']);
			$q = "UPDATE certification SET validity1='$valid1' where grno='$grno';";
			mysqli_query($db, $q);
		}
		if (isset($_FILES['course_cert1']['name'])) {
			$name = $grno . "_CourseCert1_" . $_FILES['course_cert1']['name'];
			$tmp_name = $_FILES['course_cert1']['tmp_name'];
			$position = strpos($name, ".");
			$fileextension = substr($name, $position + 1);
			$fileextension = strtolower($fileextension);
			$success = -1;
			if (isset($name)) {
				$pathas = '../uploads/certifications/' . $name;
				$path = '../uploads/certifications/' . $name;
				if (!empty($name)) {
					if ($fileextension !== "pdf") {
						$success = 0;
						echo '<script>alert("The file extension must be .pdf in order to be uploaded")</script>';
					} else if ($fileextension == "pdf") {
						$success = 1;
						if (copy($tmp_name, $path)) {
							echo '<script> alert("Uploaded!")</script>';
							$q = "UPDATE certification SET certificate1='$pathas' where grno='$grno';";
							mysqli_query($db, $q);
							unlink($scourse_cert1);
						}
					}
				}
			}
		}
	}
	if (isset($_POST['course2'])) {
		$course1 = mysqli_real_escape_string($db, $_POST['course2']);
		$q = "UPDATE certification SET course2='$course2'where grno='$grno';";
		mysqli_query($db, $q);
		if (isset($_POST['valid2'])) {
			$valid2 = mysqli_real_escape_string($db, $_POST['valid2']);
			$q = "UPDATE certification SET validity2='$valid2' where grno='$grno';";
			mysqli_query($db, $q);
		}
		if (isset($_FILES['course_cert2']['name'])) {
			$name = $grno . "_CourseCert2_" . $_FILES['course_cert2']['name'];
			$tmp_name = $_FILES['course_cert2']['tmp_name'];
			$position = strpos($name, ".");
			$fileextension = substr($name, $position + 1);
			$fileextension = strtolower($fileextension);
			$success = -1;
			if (isset($name)) {
				$pathas = '../uploads/certifications/' . $name;
				$path = '../uploads/certifications/' . $name;
				if (!empty($name)) {
					if ($fileextension !== "pdf") {
						$success = 0;
						echo '<script>alert("The file extension must be .pdf in order to be uploaded")</script>';
					} else if ($fileextension == "pdf") {
						$success = 1;
						if (copy($tmp_name, $path)) {
							echo '<script> alert("Uploaded!")</script>';
							$q = "UPDATE certification SET certificate2='$pathas' where grno='$grno';";
							mysqli_query($db, $q);
							unlink($scourse_cert2);
						}
					}
				}
			}
		}
	}
	if (isset($_POST['course3'])) {
		$course3 = mysqli_real_escape_string($db, $_POST['course3']);
		$q = "UPDATE certification SET course3='$course3'where grno='$grno';";
		mysqli_query($db, $q);
		if (isset($_POST['valid3'])) {
			$valid3 = mysqli_real_escape_string($db, $_POST['valid3']);
			$q = "UPDATE certification SET validity3='$valid3' where grno='$grno';";
			mysqli_query($db, $q);
		}
		if (isset($_FILES['course_cert3']['name'])) {
			$name = $grno . "_CourseCert3_" . $_FILES['course_cert3']['name'];
			$tmp_name = $_FILES['course_cert3']['tmp_name'];
			$position = strpos($name, ".");
			$fileextension = substr($name, $position + 1);
			$fileextension = strtolower($fileextension);
			$success = -1;
			if (isset($name)) {
				$pathas = '../uploads/certifications/' . $name;
				$path = '../uploads/certifications/' . $name;
				if (!empty($name)) {
					if ($fileextension !== "pdf") {
						$success = 0;
						echo '<script>alert("The file extension must be .pdf in order to be uploaded")</script>';
					} else if ($fileextension == "pdf") {
						$success = 1;
						if (copy($tmp_name, $path)) {
							echo '<script> alert("Uploaded!")</script>';
							$q = "UPDATE certification SET certificate3='$pathas' where grno='$grno';";
							mysqli_query($db, $q);
							unlink($scourse_cert3);
						}
					}
				}
			}
		}
	}
	if ($_SESSION['exist'] == 1) {
		header('location: ../profile.php');
	} else {
		header('location: Internship.php');
	}
}

?>
<html lang="en">

<head>
	<title>Certificate</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../style/forms/vendor/bootstrap/css/bootstrap.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../style/forms/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../style/forms/fonts/iconic/css/material-design-iconic-font.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../style/forms/vendor/animate/animate.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../style/forms/vendor/css-hamburgers/hamburgers.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../style/forms/vendor/animsition/css/animsition.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../style/forms/vendor/select2/select2.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../style/forms/vendor/daterangepicker/daterangepicker.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../style/forms/vendor/noui/nouislider.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../style/forms/css/util.css">
	<link rel="stylesheet" type="text/css" href="../../style/forms/css/main.css">
	<!--===============================================================================================-->
</head>

<body>


	<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form" action="Certificate.php" method="POST" enctype="multipart/form-data">
				<span class="contact100-form-title">
					Certifications
				</span>

				<div class="wrap-input100">
					<center>
						<label class="label-inputx">GR. Number : <?= $grno ?></label><br>
						<label class="label-inputx">Name : <?= $name ?></label>
					</center>
				</div>

				<!-- Certification 1 -->
				<div class="wrap-input100">
					<center><label class="label-inputx">Certification 1</label></center>
				</div>
				<div class="wrap-input100  bg1">
					<span class="label-input100">Course of Certification</span>
					<input class="input100" type="text" value="<?= $scourse1 ?>" name="course1" placeholder="Enter Course">
				</div>

				<div class="wrap-input100  bg1 rs1-wrap-input100">
					<span class="label-input100">Validity Until Year </span>
					<input class="input100" type="text" name="valid1" value="<?= $svalid1 ?>" placeholder="Validity Year">
				</div>

				<div class="wrap-input100 bg1 rs1-wrap-input100">
					<?php
					if ($scourse_cert1 != "") {
						echo '<label class="label-inputx"><a href="' . $scourse_cert1 . '" target="_blank">Certificate-1</a></label><br>';
					}
					?>
					<span class="label-input100">Upload Cerificate</span>
					<input class="input50" type="file" name="course_cert1" placeholder="Upload Certificate">
				</div>

				<!-- Certification 2 -->
				<div class="wrap-input100">
					<center><label class="label-inputx">Certification 2</label></center>
				</div>
				<div class="wrap-input100  bg1">
					<span class="label-input100">Course of Certification</span>
					<input class="input100" type="text" value="<?= $scourse2 ?>" name="course2" placeholder="Enter Course">
				</div>

				<div class="wrap-input100  bg1 rs1-wrap-input100">
					<span class="label-input100">Validity Until Year</span>
					<input class="input100" type="text" name="valid2" value="<?= $svalid2 ?>" placeholder="Validity Year">
				</div>

				<div class="wrap-input100 bg1 rs1-wrap-input100">
					<?php
					if ($scourse_cert2 != "") {
						echo '<label class="label-inputx"><a href="' . $scourse_cert2 . '" target="_blank">Certificate-2</a></label><br>';
					}
					?>
					<span class="label-input100">Upload Cerificate</span>
					<input class="input50" type="file" name="course_cert2" placeholder="Upload Certificate">
				</div>

				<!-- Certification 3 -->
				<div class="wrap-input100">
					<center><label class="label-inputx">Certification 3</label></center>
				</div>
				<div class="wrap-input100  bg1">
					<span class="label-input100">Course of Certification</span>
					<input class="input100" type="text" value="<?= $scourse3 ?>" name="course3" placeholder="Enter Course">
				</div>

				<div class="wrap-input100  bg1 rs1-wrap-input100">
					<span class="label-input100">Validity Until Year</span>
					<input class="input100" type="text" name="valid3" value="<?= $svalid3 ?>" placeholder="Validity Year">
				</div>

				<div class="wrap-input100 bg1 rs1-wrap-input100">
					<?php
					if ($scourse_cert3 != "") {
						echo '<label class="label-inputx"><a href="' . $scourse_cert3 . '" target="_blank">Certificate-3</a></label><br>';
					}
					?>
					<span class="label-input100">Upload Cerificate</span>
					<input class="input50" type="file" name="course_cert3" placeholder="Upload Certificate">
				</div>

				<div class="container-contact100-form-btn">
					<button type="submit" class="contact100-form-btn" name="student_certi">
						<span>
							Next
							<i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
						</span>
					</button>
				</div>
			</form>
		</div>
	</div>

	<!--===============================================================================================-->
	<script src="../vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="../vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="../vendor/bootstrap/js/popper.js"></script>
	<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="../vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").ecourse(function() {
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
	<!--===============================================================================================-->
	<script src="../vendor/daterangepicker/moment.min.js"></script>
	<script src="../vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="../vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="../js/main.js"></script>

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
		window.dataLayer = window.dataLayer || [];

		function gtag() {
			dataLayer.push(arguments);
		}
		gtag('js', new Date());

		gtag('config', 'UA-23581568-13');
	</script>

</body>

</html>