<?php require('../../dbconnect.php');

	$grno = $_SESSION['GRNO'];
	$exist = 0;
	$query = "SELECT * FROM student WHERE grno='$grno';";
  $results = mysqli_query($db, $query);
  $row = mysqli_fetch_assoc($results);
	$sfname = "";
	$smname = "";
	$slname = "";
	$semail = "";
	$spwd = "";
	$sphone = "";
	$sdob = "";
	$stenper = "";
	$stwelveper = "";
	$sdept = "";
	$ssem = "";
	$sdoj = "";
	$g0 = 'selected';
	$g1 = '';
	$g2 = '';
	$g3 = '';
	$ten0 = 'selected';
	$ten1 = '';
	$ten2 = '';
	$ten3 = '';
	$ten4 = '';
	$twelve0 = 'selected';
	$twelve1 = '';
	$twelve2 = '';
	$twelve3 = '';
	$twelve4 = '';
	$twelve5 = '';
	$sem0 = 'selected';
	$sem1 = '';
	$sem2 = '';
	$sem3 = '';
	$sem4 = '';
	$sem5 = '';
	$sem6 = '';
	$sem7 = '';
	$sem8 = '';
	$dept0 = 'selected';
	$dept1 = '';
	$dept2 = '';
	$dept3 = '';
	$dept4 = '';
	$dept5 = '';
	$dept6 = '';

  if (mysqli_num_rows($results) == 1) {
      $exist = 1;
			$sname = $row['student_name'];
			$spwd = $row['password'];
			$nameexp = explode(" ",$sname);
			$sfname = $nameexp[0];
			$smname = $nameexp[1];
			$slname = $nameexp[2];
			$semail = $row['student_mail'];
			$sphone = $row['student_phone'];
			$sgen = $row['student_gen'];
			if($sgen == 'Male'){
				$g0 = '';
				$g1 = 'selected';
			}
			else if($sgen == 'Female'){
				$g0 = '';
				$g2 = 'selected';
			}
			else if($sgen == 'Other'){
				$g0 = '';
				$g3 = 'selected';
			}
			$sdob = $row['student_dob'];
			$stenbrd = $row['tenth_board'];
			if($stenbrd == 'SSC'){
				$ten0 = '';
				$ten1 = 'selected';
			}
			else if($stenbrd == 'ICSE'){
				$ten0 = '';
				$ten2 = 'selected';
			}
			else if($stenbrd == 'CBSE'){
				$ten0 = '';
				$ten3 = 'selected';
			}
			else if($stenbrd == 'Other'){
				$ten0 = '';
				$ten4 = 'selected';
			}
			$stenper = $row['tenth_percent'];
			$stwelvebrd = $row['twelfth_board'];
			if($stwelvebrd == 'HSC'){
				$twelve0 = '';
				$twelve1 = 'selected';
			}
			else if($stwelvebrd == 'ICSE'){
				$twelve0 = '';
				$twelve2 = 'selected';
			}
			else if($stwelvebrd == 'CBSE'){
				$twelve0 = '';
				$twelve3 = 'selected';
			}
			else if($stwelvebrd == 'Diploma'){
				$twelve0 = '';
				$twelve4 = 'selected';
			}
			else if($stwelvebrd == 'Other'){
				$twelve0 = '';
				$twelve5 = 'selected';
			}
			$stwelveper = $row['twelfth_percent'];
			$sdept = $row['student_dept'];
			if($sdept == 'Applied Sciences'){
				$dept0 = '';
				$dept1 = 'selected';
			}
			else if($sdept == 'Mechanical Engineering'){
				$dept0 = '';
				$dept2 = 'selected';
			}
			else if($sdept == 'Computer Engineering'){
				$dept0 = '';
				$dept3 = 'selected';
			}
			else if($sdept == 'Electronics and Telecommunication'){
				$dept0 = '';
				$dept4 = 'selected';
			}
			else if($sdept == 'Instrumentation Engingeering'){
				$dept0 = '';
				$dept5 = 'selected';
			}
			else if($sdept == 'Information Technology'){
				$dept0 = '';
				$dept6 = 'selected';
			}
			$ssem = $row['student_sem'];
			if($ssem == '1'){
				$sem0 = '';
				$sem1 = 'selected';
			}
			else if($ssem == '2'){
				$sem0 = '';
				$sem2 = 'selected';
			}
			else if($ssem == '3'){
				$sem0 = '';
				$sem3 = 'selected';
			}
			else if($ssem == '4'){
				$sem0 = '';
				$sem4 = 'selected';
			}
			else if($ssem == '5'){
				$sem0 = '';
				$sem5 = 'selected';
			}
			else if($ssem == '6'){
				$sem0 = '';
				$sem6 = 'selected';
			}
			else if($ssem == '7'){
				$sem0 = '';
				$sem7 = 'selected';
			}
			else if($ssem == '8'){
				$sem0 = '';
				$sem8 = 'selected';
			}
			$sdoj = $row['student_doj'];

  }else {
      $exist = 0;
  }
	$_SESSION['exist'] = $exist;
	if(isset($_POST['student_info'])){
		$fname = mysqli_real_escape_string($db, $_POST['fname']);
		$mname = mysqli_real_escape_string($db, $_POST['mname']);
		$lname = mysqli_real_escape_string($db, $_POST['lname']);
		$email = mysqli_real_escape_string($db, $_POST['email']);
		$phone = mysqli_real_escape_string($db, $_POST['phone']);
		$pwd = mysqli_real_escape_string($db, $_POST['pwd']);
		$pwd2 = mysqli_real_escape_string($db, $_POST['pwd2']);
		$gen = $_POST['gender'];
		$dob = mysqli_real_escape_string($db, $_POST['dob']);
		$tenbrd = $_POST['tenboard'];
		$tenper = mysqli_real_escape_string($db, $_POST['tenpercent']);
		$twelvebrd= $_POST['twelveboard'];
		$twelveper = mysqli_real_escape_string($db, $_POST['twelvepercent']);
		$dept = $_POST['dept'];
		$sem = $_POST['sem'];
		$doj = mysqli_real_escape_string($db, $_POST['doj']);
		$name = $fname." ".$mname." ".$lname;

		// echo $name;
		// $grno,$name,$email,$phone,$gen,$dob,$tenbrd,$tenper,$twelvebrd,$twelveper,$doj,$dept,$sem
		// echo $grno;
		// echo $fname;
		// echo $mname;
		// echo $lname;
		// echo $email;
		// echo $phone;
		// echo $gen;
		// echo $dob;
		// echo $tenbrd;
		// echo $tenper;
		// echo $twelvebrd;
		// echo $twelveper;
		// echo $dept;
		// echo $sem;
		// echo $doj;
		// echo $pwd;
   if($exist==0){
		 if($pwd == $pwd2){
				$query = "INSERT INTO student(grno, student_name, password, student_mail, student_phone, student_gen, student_dob, tenth_board, tenth_percent, twelfth_board, twelfth_percent, student_doj, student_dept, student_sem) VALUES ('$grno','$name','$pwd','$email','$phone','$gen','$dob','$tenbrd','$tenper','$twelvebrd','$twelveper','$doj','$dept','$sem')";
		    $x = mysqli_query($db, $query);
				$query2 = "INSERT INTO achievement(grno) VALUES ('$grno')";
				mysqli_query($db, $query2);
				$query3 = "INSERT INTO certification(grno) VALUES ('$grno')";
				mysqli_query($db, $query3);
				$query4 = "INSERT INTO internship(grno) VALUES ('$grno')";
				mysqli_query($db, $query4);
		}
		else{
			echo "<script type='text/javascript'>alert('PASSWORDS DO NOT MATCH');</script>";
			// header('location: Student.php');
		}
	}
	else{
		$query = "UPDATE student SET student_name='$name',student_mail='$email',student_phone='$phone',student_gen='$gen',student_dob='$dob',tenth_board='$tenbrd',tenth_percent='$tenper',twelfth_board='$twelvebrd',twelfth_percent='$twelveper',student_doj='$doj',student_dept='$dept',student_sem='$sem' WHERE grno='$grno';";
		mysqli_query($db, $query);
	}
		$_SESSION['GRNO'] = $grno;
		$_SESSION['Name'] = $name;
		if($_SESSION['exist']==1){
			header('location: ../profile.php');
		}
		else{
			header('location: Achievement.php');
		}

	}

?>
<html lang="en">
<head>
	<title>Student</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--===============================================================================================-->
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
			<form class="contact100-form validate-form" action="Student.php" method="POST" enctype="multipart/form-data">
				<span class="contact100-form-title">
					Student Information
				</span>

				<div class="wrap-input100">
					<center><label class="label-inputx">GR. Number : <?= $grno ?></label></center>
				</div>

				<!-- NAME -->
				<div class="wrap-input100 bg1 validate-input rs2-wrap-input100" data-validate="Please Fill Field">
					<span class="label-input100">First Name</span>
					<input class="input100" type="text" name="fname" value="<?= $sfname ?>" placeholder="First Name">
				</div>

				<div class="wrap-input100 bg1 validate-input rs2-wrap-input100" data-validate="Please Fill Field">
					<span class="label-input100">Middle Name</span>
					<input class="input100" type="text" name="mname" value="<?= $smname ?>" placeholder="Middle Name">
				</div>

				<div class="wrap-input100 bg1 validate-input rs2-wrap-input100" data-validate="Please Fill Field">
					<span class="label-input100">Last Name</span>
					<input class="input100" type="text" name="lname" value="<?= $slname ?>" placeholder="Last Name">
				</div>

				<div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate="Please Fill Field">
					<span class="label-input100">Password</span>
					<input class="input100" type="password" name="pwd" value="<?= $spwd ?>" placeholder="Enter Your Password ">
				</div>

				<div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate="Please Fill Field">
					<span class="label-input100">Comfirm Password</span>
					<input class="input100" type="password" name="pwd2" value="<?= $spwd ?>" placeholder="Re-Enter Your Password ">
				</div>

				<!-- CONTACT -->
				<div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate="Please Fill Field">
					<span class="label-input100">Email ID</span>
					<input class="input100" type="text" name="email" value="<?= $semail ?>" placeholder="Enter Your Email ">
				</div>

				<div class="wrap-input100 bg1 validate-input rs1-wrap-input100" data-validate="Please Fill Field">
					<span class="label-input100">Phone Number</span>
					<input class="input100" type="text" name="phone" value="<?= $sphone ?>" placeholder="Enter Phone Number">
				</div>

				<div class="wrap-input100 input100-select bg1 rs1-wrap-input100 validate-input" data-validate="Please Fill Field">
					<span class="label-input100">Gender</span>
					<div>
						<select class="js-select2" name="gender" required>
							<option <?= $g0 ?> disabled value="">Choose Gender</option>
							<option <?= $g1 ?> value="Male">Male</option>
							<option <?= $g2 ?> value="Female">Female</option>
							<option <?= $g3 ?> value="Other">Others</option>
						</select>
						<div class="dropDownSelect2"></div>
					</div>
				</div>
				<div class="wrap-input100 bg1 rs1-wrap-input100">
					<span class="label-input100">D.O.B</span>
					<input class="input100" type="date" value="<?= $sdob ?>" name="dob" placeholder="dd-mm-yyyy" required>
				</div>


				<!-- 10th -->
				<div class="wrap-input100 input100-select bg1 rs1-wrap-input100">
					<span class="label-input100">10th Board</span>
					<div>
						<select class="js-select2" name="tenboard" required>
							<option <?= $ten0 ?> disabled value="">Choose Board</option>
							<option <?= $ten1 ?> value="SSC">SSC</option>
							<option <?= $ten2 ?> value="ICSE">ICSE</option>
							<option <?= $ten3 ?> value="CBSE">CBSE</option>
							<option <?= $ten4 ?> value="Other">Others</option>
						</select>
						<div class="dropDownSelect2"></div>
					</div>
				</div>
				<div class="wrap-input100 bg1 validate-input rs1-wrap-input100"  data-validate="Please Fill Field">
					<span class="label-input100">Percentage</span>
					<input class="input100" type="text" value="<?= $stenper ?>" name="tenpercent" placeholder="%">
				</div>

				<!-- 12th -->
				<div class="wrap-input100 input100-select bg1 rs1-wrap-input100" required>
					<span class="label-input100">12th Board</span>
					<div>
						<select class="js-select2" name="twelveboard">
							<option <?= $twelve0 ?> disabled value="">Choose Board</option>
							<option <?= $twelve1 ?> value="HSC">HSC</option>
							<option <?= $twelve2 ?> value="ICSE">ICSE</option>
							<option <?= $twelve3 ?> value="CBSE">CBSE</option>
							<option <?= $twelve4 ?> value="Diploma">Diploma</option>
							<option <?= $twelve5 ?> value="Other">Others</option>
						</select>
						<div class="dropDownSelect2"></div>
					</div>
				</div>
				<div class="wrap-input100 bg1 validate-input rs1-wrap-input100" data-validate="Please Fill Field">
					<span class="label-input100">Percentage</span>
					<input class="input100" type="text" value="<?= $stwelveper ?>" name="twelvepercent" placeholder="%">
				</div>

				<div class="wrap-input100 input100-select bg1 rs1-wrap-input100">
					<span class="label-input100">Branch</span>
					<div>
						<select class="js-select2" name="dept" required>
							<option <?= $dept0 ?> disabled value="">Choose Department</option>
							<option <?= $dept1 ?> value="Applied Sciences">Applied Sciences</option>
							<option <?= $dept2 ?> value="Mechanical Engineering">Mechanical Engineering</option>
							<option <?= $dept3 ?> value="Computer Engineering">Computer Engineering</option>
							<option <?= $dept4 ?> value="Electronics and Telecommunication">Electronics and Telecommunication</option>
							<option <?= $dept5 ?> value="Instumentation Engineering">Instumentation Engineering</option>
							<option <?= $dept6 ?> value="Information Technology">Information Technology</option>
						</select>
						<div class="dropDownSelect2"></div>
					</div>
				</div>

				<div class="wrap-input100 input100-select bg1 rs1-wrap-input100">
					<span class="label-input100">Semester</span>
					<div>
						<select class="js-select2" name="sem" required>
							<option <?= $sem0 ?> disabled value="">Choose Semester</option>
							<option <?= $sem1 ?> value="1">1</option>
							<option <?= $sem2 ?> value="2">2</option>
							<option <?= $sem3 ?> value="3">3</option>
							<option <?= $sem4 ?> value="4">4</option>
							<option <?= $sem5 ?> value="5">5</option>
							<option <?= $sem6 ?> value="6">6</option>
							<option <?= $sem7 ?> value="7">7</option>
							<option <?= $sem8 ?> value="8">8</option>
						</select>
						<div class="dropDownSelect2"></div>
					</div>
				</div>

				<div class="wrap-input100 bg1">
					<span class="label-input100">Date of Joining</span>
					<input class="input100" value="<?= $sdoj ?>" type="date" name="doj" required>
				</div>

				<div class="container-contact100-form-btn">
					<button type="submit" class="contact100-form-btn" name="student_info">
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
		<script src="../../style/forms/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
		<script src="../../style/forms/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
		<script src="../../style/forms/vendor/bootstrap/js/popper.js"></script>
		<script src="../../style/forms/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
		<script src="../../style/forms/vendor/select2/select2.min.js"></script>
		<script>
			$(".js-select2").each(function(){
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
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>

</body>
</html>
