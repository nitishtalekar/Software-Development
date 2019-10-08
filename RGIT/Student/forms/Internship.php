<?php require('../../dbconnect.php');

$grno = $_SESSION['userid'];
$name = $_SESSION['Name'];

$scomp1 = '';
$spos1 = '';
$sfrom1 = '';
$still1 = '';
$sdesc1 = '';
$sletter1 = '';
$scomp2 = '';
$spos2 = '';
$sfrom2 = '';
$still2 = '';
$sdesc2 = '';
$sletter2 = '';
$scomp3 = '';
$spos3 = '';
$sfrom3 = '';
$still3 = '';
$sdesc3 = '';
$sletter3 = '';

if ($_SESSION['exist'] == 1) {
	$query = "SELECT * FROM internship WHERE grno='$grno';";
	$results = mysqli_query($db, $query);
	$row = mysqli_fetch_assoc($results);
	$scomp1 = $row['company1'];
	$spos1 = $row['position1'];
	$sfrom1 = $row['date_from1'];
	$still1 = $row['date_till1'];
	$sdesc1 = $row['exp1'];
	$sletter1 = $row['letter1'];
	$scomp2 = $row['company2'];
	$spos2 = $row['position2'];
	$sfrom2 = $row['date_from2'];
	$still2 = $row['date_till2'];
	$sdesc2 = $row['exp2'];
	$sletter2 = $row['letter2'];
	$scomp3 = $row['company3'];
	$spos3 = $row['position3'];
	$sfrom3 = $row['date_from3'];
	$still3 = $row['date_till3'];
	$sdesc3 = $row['exp3'];
	$sletter3 = $row['letter3'];
}

if (isset($_POST['student_int'])) {

	if (isset($_POST['comp1'])) {
		$comp1 = mysqli_real_escape_string($db, $_POST['comp1']);
		$q = "UPDATE internships SET company1='$comp1' where grno='$grno';";
		mysqli_query($db, $q);
		if (isset($_POST['pos1'])) {
			$pos1 = mysqli_real_escape_string($db, $_POST['pos1']);
			$q = "UPDATE internships SET position1='$pos1' where grno='$grno';";
			mysqli_query($db, $q);
		}
		if (isset($_POST['from1'])) {
			$from1 = mysqli_real_escape_string($db, $_POST['from1']);
			$q = "UPDATE internships SET date_from1='$from1' where grno='$grno';";
			mysqli_query($db, $q);
		}
		if (isset($_POST['till1'])) {
			$till1 = mysqli_real_escape_string($db, $_POST['till1']);
			$q = "UPDATE internships SET date_till1='$till1' where grno='$grno';";
			mysqli_query($db, $q);
		}
		if (isset($_POST['desc1'])) {
			$desc1 = mysqli_real_escape_string($db, $_POST['desc1']);
			$q = "UPDATE internships SET exp1='$desc1' where grno='$grno';";
			mysqli_query($db, $q);
		}
		if (isset($_POST['letter1'])) {
			$name = $grno . "_Internship1_" . $_FILES['letter1']['name'];
			$tmp_name = $_FILES['letter1']['tmp_name'];
			$position = strpos($name, ".");
			$fileextension = substr($name, $position + 1);
			$fileextension = strtolower($fileextension);
			$success = -1;
			if (isset($name)) {
				$pathas = '../uploads/internships/' . $name;
				$path = '../uploads/internships/' . $name;
				if (!empty($name)) {
					if ($fileextension !== "pdf") {
						$success = 0;
						echo '<script>alert("The file extension must be .pdf in order to be uploaded")</script>';
					} else if ($fileextension == "pdf") {
						$success = 1;
						if (copy($tmp_name, $path)) {
							echo '<script> alert("Uploaded!")</script>';
							$q = "UPDATE internships SET letter1='$pathas' where grno='$grno';";
							mysqli_query($db, $q);
							unlink($sletter1);
						}
					}
				}
			}
		}
	}

	if (isset($_POST['comp2'])) {
		$comp2 = mysqli_real_escape_string($db, $_POST['comp2']);
		$q = "UPDATE internships SET company2='$comp2' where grno='$grno';";
		mysqli_query($db, $q);
		if (isset($_POST['pos2'])) {
			$pos2 = mysqli_real_escape_string($db, $_POST['pos2']);
			$q = "UPDATE internships SET position2='$pos2' where grno='$grno';";
			mysqli_query($db, $q);
		}
		if (isset($_POST['from2'])) {
			$from2 = mysqli_real_escape_string($db, $_POST['from2']);
			$q = "UPDATE internships SET date_from2='$from2' where grno='$grno';";
			mysqli_query($db, $q);
		}
		if (isset($_POST['till2'])) {
			$till2 = mysqli_real_escape_string($db, $_POST['till2']);
			$q = "UPDATE internships SET date_till2='$till2' where grno='$grno';";
			mysqli_query($db, $q);
		}
		if (isset($_POST['desc2'])) {
			$desc2 = mysqli_real_escape_string($db, $_POST['desc2']);
			$q = "UPDATE internships SET exp2='$desc2' where grno='$grno';";
			mysqli_query($db, $q);
		}
		if (isset($_POST['letter2'])) {
			$name = $grno . "_Internship2_" . $_FILES['letter2']['name'];
			$tmp_name = $_FILES['letter2']['tmp_name'];
			$position = strpos($name, ".");
			$fileextension = substr($name, $position + 1);
			$fileextension = strtolower($fileextension);
			$success = -1;
			if (isset($name)) {
				$pathas = '../uploads/internships/' . $name;
				$path = '../uploads/internships/' . $name;
				if (!empty($name)) {
					if ($fileextension !== "pdf") {
						$success = 0;
						echo '<script>alert("The file extension must be .pdf in order to be uploaded")</script>';
					} else if ($fileextension == "pdf") {
						$success = 1;
						if (copy($tmp_name, $path)) {
							echo '<script> alert("Uploaded!")</script>';
							$q = "UPDATE internships SET letter2='$pathas' where grno='$grno';";
							mysqli_query($db, $q);
							unlink($sletter1);
						}
					}
				}
			}
		}
	}

	if (isset($_POST['comp3'])) {
		$comp3 = mysqli_real_escape_string($db, $_POST['comp3']);
		$q = "UPDATE internships SET company3='$comp3' where grno='$grno';";
		mysqli_query($db, $q);
		if (isset($_POST['pos3'])) {
			$pos3 = mysqli_real_escape_string($db, $_POST['pos3']);
			$q = "UPDATE internships SET position3='$pos3' where grno='$grno';";
			mysqli_query($db, $q);
		}
		if (isset($_POST['from3'])) {
			$from3 = mysqli_real_escape_string($db, $_POST['from3']);
			$q = "UPDATE internships SET date_from3='$from3' where grno='$grno';";
			mysqli_query($db, $q);
		}
		if (isset($_POST['till3'])) {
			$till3 = mysqli_real_escape_string($db, $_POST['till3']);
			$q = "UPDATE internships SET date_till3='$till3' where grno='$grno';";
			mysqli_query($db, $q);
		}
		if (isset($_POST['desc3'])) {
			$desc3 = mysqli_real_escape_string($db, $_POST['desc3']);
			$q = "UPDATE internships SET exp3='$desc3' where grno='$grno';";
			mysqli_query($db, $q);
		}
		if (isset($_POST['letter3'])) {
			$name = $grno . "_Internship3_" . $_FILES['letter3']['name'];
			$tmp_name = $_FILES['letter3']['tmp_name'];
			$position = strpos($name, ".");
			$fileextension = substr($name, $position + 1);
			$fileextension = strtolower($fileextension);
			$success = -1;
			if (isset($name)) {
				$pathas = '../uploads/internships/' . $name;
				$path = '../uploads/internships/' . $name;
				if (!empty($name)) {
					if ($fileextension !== "pdf") {
						$success = 0;
						echo '<script>alert("The file extension must be .pdf in order to be uploaded")</script>';
					} else if ($fileextension == "pdf") {
						$success = 1;
						if (copy($tmp_name, $path)) {
							echo '<script> alert("Uploaded!")</script>';
							$q = "UPDATE internships SET letter3='$pathas' where grno='$grno';";
							mysqli_query($db, $q);
							unlink($sletter1);
						}
					}
				}
			}
		}
	}
	if ($_SESSION['exist'] == 1) {
		header('location: ../profile.php');
	} else {
		header('location: ../index.php');
	}
}

?>
<html lang="en">

<head>
	<title>Internships</title>
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
			<form class="contact100-form validate-form" action="Internship.php" method="POST" enctype="multipart/form-data">
				<span class="contact100-form-title">
					Internships
				</span>

				<div class="wrap-input100">
					<center>
						<label class="label-inputx">GR. Number : <?= $grno ?></label><br>
						<label class="label-inputx">Name : <?= $name ?></label>
					</center>
				</div>
				<!-- Internship 1 -->
				<div class="wrap-input100">
					<center><label class="label-inputx">Internship 1</label></center>
				</div>
				<div class="wrap-input100  bg1">
					<span class="label-input100">Company Name</span>
					<input class="input100" type="text" value="<?= $scomp1 ?>" name="comp1" placeholder="Enter Company Name">
				</div>
				<div class="wrap-input100  bg1">
					<span class="label-input100">Position</span>
					<input class="input100" type="text" name="pos1" value="<?= $spos1 ?>" placeholder="Enter your Position">
				</div>

				<div class="wrap-input100  bg1 rs1-wrap-input100">
					<span class="label-input100">Date From</span>
					<input class="input100" type="date" name="from1" value="<?= $sfrom1 ?>" placeholder="Date From">
				</div>

				<div class="wrap-input100 bg1 rs1-wrap-input100">
					<span class="label-input100">Date Till</span>
					<input class="input100" type="date" name="till1" value="<?= $still1 ?>" placeholder="Date Till">
				</div>

				<div class="wrap-input100 bg1">
					<center>
						<?php
						if ($sletter1 != "") {
							echo '<label class="label-inputx"><a href="' . $sletter1 . '" target="_blank">Letter-1</a></label><br>';
						}
						?>
						<label class="label-input100">Upload Letter</label><br>
						<input class="input50" type="file" name="letter1" placeholder="Upload Latter">
					</center>
				</div>

				<div class="wrap-input100  bg1 rs1-alert-validate">
					<span class="label-input100">Description</span>
					<textarea class="input100" name="desc1" value="<?= $sdesc1 ?>" placeholder="Describe your experiance"></textarea>
				</div>

				<!-- Internship 2 -->
				<div class="wrap-input100">
					<center><label class="label-inputx">Internship 2</label></center>
				</div>
				<div class="wrap-input100  bg1">
					<span class="label-input100">Company Name</span>
					<input class="input100" type="text" name="comp2" value="<?= $scomp2 ?>" placeholder="Enter Company Name">
				</div>
				<div class="wrap-input100  bg1">
					<span class="label-input100">Position</span>
					<input class="input100" type="text" name="pos2" value="<?= $spos2 ?>" placeholder="Enter your Position">
				</div>

				<div class="wrap-input100  bg1 rs1-wrap-input100">
					<span class="label-input100">Date From</span>
					<input class="input100" type="date" name="from2" value="<?= $sfrom2 ?>" placeholder="Date From">
				</div>

				<div class="wrap-input100 bg1 rs1-wrap-input100">
					<span class="label-input100">Date Till</span>
					<input class="input100" type="date" name="till2" value="<?= $still2 ?>" placeholder="Date Till">
				</div>

				<div class="wrap-input100 bg1">
					<center>
						<?php
						if ($sletter2 != "") {
							echo '<label class="label-inputx"><a href="' . $sletter2 . '" target="_blank">Letter-2</a></label><br>';
						}
						?>
						<label class="label-input100">Upload Letter</label><br>
						<input class="input50" type="file" name="letter2" placeholder="Upload Latter">
					</center>
				</div>

				<div class="wrap-input100  bg1 rs1-alert-validate">
					<span class="label-input100">Description</span>
					<textarea class="input100" name="desc2" value="<?= $sdesc2 ?>" placeholder="Describe your experiance"></textarea>
				</div>

				<!-- Internship 3 -->
				<div class="wrap-input100">
					<center><label class="label-inputx">Internship 3</label></center>
				</div>
				<div class="wrap-input100  bg1">
					<span class="label-input100">Company Name</span>
					<input class="input100" type="text" name="comp3" value="<?= $scomp3 ?>" placeholder="Enter Company Name">
				</div>
				<div class="wrap-input100  bg1">
					<span class="label-input100">Position</span>
					<input class="input100" type="text" name="pos3" value="<?= $spos3 ?>" placeholder="Enter your Position">
				</div>

				<div class="wrap-input100  bg1 rs1-wrap-input100">
					<span class="label-input100">Date From</span>
					<input class="input100" type="date" name="from3" value="<?= $sfrom3 ?>" placeholder="Date From">
				</div>

				<div class="wrap-input100 bg1 rs1-wrap-input100">
					<span class="label-input100">Date Till</span>
					<input class="input100" type="date" name="till3" value="<?= $still3 ?>" placeholder="Date Till">
				</div>

				<div class="wrap-input100 bg1">
					<center>
						<?php
						if ($sletter3 != "") {
							echo '<label class="label-inputx"><a href="' . $sletter3 . '" target="_blank">Letter-3</a></label><br>';
						}
						?>
						<label class="label-input100">Upload Letter</label><br>
						<input class="input50" type="file" name="letter3" placeholder="Upload Latter">
					</center>
				</div>

				<div class="wrap-input100  bg1 rs1-alert-validate">
					<span class="label-input100">Description</span>
					<textarea class="input100" name="desc3" value="<?= $sdesc3 ?>" placeholder="Describe your experiance"></textarea>
				</div>

				<div class="container-contact100-form-btn">
					<button type="submit" class="contact100-form-btn" name="student_int">
						<span>
							Submit
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
		$(".js-select2").each(function() {
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