<?php require('server.php');

	$grno = $_SESSION['GRNO'];
	$name = $_SESSION['Name'];
	
	if(isset($_POST['student_ach'])){
		header('location: Internship.php');
	}
	
?>
<html lang="en">
<head>
	<title>Achievements</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/noui/nouislider.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>


	<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form" method="POST">
				<span class="contact100-form-title">
					Achievements
				</span>
				
				<div class="wrap-input100">
					<center>
						<label class="label-inputx">GR. Number : <?= $grno ?></label>
						<label class="label-inputx">Name : <?= $name ?></label>
					</center>
				</div>
				<!-- Achievement 1 -->
				<div class="wrap-input100">
					<center><label class="label-inputx">Achievement 1</label></center>
				</div>
				<div class="wrap-input100  bg1 rs1-wrap-input100" >
					<span class="label-input100">Enter Achievement</span>
					<input class="input100" type="text" name="ach1" placeholder="Achievement">
				</div>

				<div class="wrap-input100 bg1 rs1-wrap-input100">
					<span class="label-input100">Upload Cerificate</span>
					<input class="input50" type="file" name="ach_cert1" placeholder="Upload Certificate">
				</div>
				
				<!-- Achievement 2 -->
				<div class="wrap-input100">
					<center><label class="label-inputx">Achievement 2</label></center>
				</div>
				<div class="wrap-input100  bg1 rs1-wrap-input100" >
					<span class="label-input100">Enter Achievement</span>
					<input class="input100" type="text" name="ach2" placeholder="Achievement">
				</div>

				<div class="wrap-input100 bg1 rs1-wrap-input100">
					<span class="label-input100">Upload Cerificate</span>
					<input class="input50" type="file" name="ach_cert2" placeholder="Upload Certificate">
				</div>
				
				<!-- Achievement 3 -->
				<div class="wrap-input100">
					<center><label class="label-inputx">Achievement 3</label></center>
				</div>
				<div class="wrap-input100  bg1 rs1-wrap-input100" >
					<span class="label-input100">Enter Achievement</span>
					<input class="input100" type="text" name="ach3" placeholder="Achievement">
				</div>

				<div class="wrap-input100 bg1 rs1-wrap-input100">
					<span class="label-input100">Upload Cerificate</span>
					<input class="input50" type="file" name="ach_cert3" placeholder="Upload Certificate">
				</div>

				<div class="container-contact100-form-btn">
					<button type="submit" class="contact100-form-btn" name="student_ach">
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
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>

</body>
</html>