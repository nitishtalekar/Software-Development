<?php require('../../dbconnect.php');


if (isset($_POST['student_id'])) {
	$grno = mysqli_real_escape_string($db, $_POST['grno']);
	$query = "SELECT * FROM student WHERE grno='$grno';";
	$results = $conn->query($query);;
	if ($results->num_rows <= 0) {
		header('location: Student.php');
		$_SESSION['pre_userid'] = $grno;
	} else {
		header('location: ../student_login.php?exist=1');
	}
}
?>

<html lang="en">

<head>
	<title>Student ID</title>
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
			<form class="contact100-form validate-form" action="index.php" method="POST" enctype="multipart/form-data">
				<span class="contact100-form-title">
					Student Information - Gr. Number
				</span>

				<div class="wrap-input100 validate-input bg1" data-validate="Please Fill Field">
					<span class="label-input100">G.R Number</span>
					<input class="input100" type="text" name="grno" placeholder="Enter Your G.R Number" required>
				</div>

				<div class="container-contact100-form-btn">
					<button type="submit" class="contact100-form-btn" name="student_id">
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
		$(".js-select2").each(function() {
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
	<!--===============================================================================================-->
	<script src="../../style/forms/vendor/daterangepicker/moment.min.js"></script>
	<script src="../../style/forms/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="../../style/forms/vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="../../style/forms/js/main.js"></script>

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