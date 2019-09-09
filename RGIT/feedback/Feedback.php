<?php require('../dbconnect.php');

$dept = $_SESSION['Dept'];
$sem = $_SESSION['Sem'];
$div = $_SESSION['Div'];

$teach = array();
$sub = array();
$i = 0;

$iter = $_SESSION['iter'];

$query = "SELECT * FROM teaching WHERE dept='$dept' AND sem='$sem' AND lec_div='$div';";
$results = mysqli_query($db, $query);
while($row = mysqli_fetch_assoc($results)){
	$tid = $row['teacher_id'];
	$sid = $row['sub_id'];
	$qu1 = "SELECT * FROM teacher WHERE teacher_id='$tid';";
	$res1 = mysqli_query($db, $qu1);
	$row1 = mysqli_fetch_assoc($res1);
	$teach[$i] = $row1['teacher_name'];
	$qu2 = "SELECT * FROM subject WHERE sub_id='$sid';";
	$res2 = mysqli_query($db, $qu2);
	$row2 = mysqli_fetch_assoc($res2);
	$sub[$i] = $row2['sub_name'];
	$tids[$i] = $tid;
	$sids[$i] = $sid;
	$i = $i+1;
	}
	
	$arrlength = count($teach);
	$_SESSION['count'] = $arrlength-1;
	
	//
	// for($x = 0; $x < $arrlength; $x++) {
	//     echo $teach[$x];
	//     echo "<br>";
	// }
	// for($x = 0; $x < $arrlength; $x++) {
	//     echo $sub[$x];
	//     echo "<br>";
	// }
	// 

	if(isset($_POST['feedback'])){
		
		
		$ans1 = $_POST['answer1'];
		$ans2 = $_POST['answer2'];
		$ans3 = $_POST['answer3'];
		$ans4 = $_POST['answer4'];
		$ans5 = $_POST['answer5'];
		$ans6 = $_POST['answer6'];
		$ans7 = $_POST['answer7'];
		$ans8 = $_POST['answer8'];
		$ans9 = $_POST['answer9'];
		$ans10 = $_POST['answer10'];
		$ans11 = $_POST['answer11'];
		$ans12 = $_POST['answer12'];
		
		if ($_POST['remark']){
			$rmrk = mysqli_real_escape_string($db, $_POST['remark']);
		}
		else{
			$rmrk = "--";
		}
		
		$q = "INSERT INTO feedback_temp(t_id, sub_id, ques1, ques2, ques3, ques4, ques5, ques6, ques7, ques8, ques9, ques10, ques11, ques12,remark) VALUES ('$tids[$iter]','$sids[$iter]','$ans1','$ans2','$ans3','$ans4','$ans5','$ans6','$ans7','$ans8','$ans9','$ans10','$ans11','$ans12','$rmrk');";
		mysqli_query($db, $q);
		
		$_SESSION['iter'] = $_SESSION['iter']+1;
		if($_SESSION['iter']==$_SESSION['count']){
			header('location: complete.php');
		}
		else{
			header('location: Feedback.php');
		}
	}

?>
<html lang="en">
<head>
	<title>Feedback</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--===============================================================================================-->
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="../style/forms/vendor/bootstrap/css/bootstrap.min.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="../style/forms/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="../style/forms/fonts/iconic/css/material-design-iconic-font.min.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="../style/forms/vendor/animate/animate.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="../style/forms/vendor/css-hamburgers/hamburgers.min.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="../style/forms/vendor/animsition/css/animsition.min.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="../style/forms/vendor/select2/select2.min.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="../style/forms/vendor/daterangepicker/daterangepicker.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="../style/forms/vendor/noui/nouislider.min.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="../style/forms/css/util.css">
		<link rel="stylesheet" type="text/css" href="../style/forms/css/main.css">
	<!--===============================================================================================-->
</head>
<body>


	<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form" action="Feedback.php" method="POST" enctype="multipart/form-data">
				<span class="contact100-form-title">
					Feedback Form
				</span>
				
				<div class="fb2-wrap-input100">
					<center><label class="label-inputx">Deapartment:<br><?= $dept ?></label></center>
				</div>
				<div class="fb2-wrap-input100">
					<center><label class="label-inputx">Semester: <br><?= $sem ?></label></center>
				</div>
				<div class="fb2-wrap-input100">
					<center><label class="label-inputx">Division: <br><?= $div ?></label></center>
				</div>
				<div class="fb1-wrap-input100">
					<center><label class="label-inputx">Professor: <br><?= $teach[$iter] ?> </label></center>
				</div>
				<div class="fb1-wrap-input100">
					<center><label class="label-inputx">Subject: <br><?= $sub[$iter] ?> </label></center>
				</div>
				<div class="wrap-input100 bg1">
					<center><label class="label-inputx">QUESTIONS</label></center>
				</div>
				<!-- QUESTIONS sections -->
				<div class="fb1-wrap-input100">
					<center><label class="label-inputx2">HOW DOES THE TEACHER EXPLAIN THE SUBJECT ?</label></center>
				</div>
				<div class="fb1-wrap-input100">
					<center><label class="label-inputx2">HOW IS THE LANGUAGE AND COMMUNICATION OF THE TEACHER ?</label></center>
				</div>
				<div class="wrap-input100 input100-select bg1 rs1-wrap-input100 validate-input" data-validate="Please Fill Field">
					<span class="label-input100">Answer</span>
					<div>
						<select class="js-select2" name="answer1" required>
							<option selected disabled value="">Choose Option</option>
							<option value="5">Exceedingly Well</option>
							<option value="4">Adequately Well</option>
							<option value="3">Reasonably Well</option>
							<option value="2">Inadequate</option>
							<option value="1">Totally Inadequate</option>
						</select>
						<div class="dropDownSelect2"></div>
					</div>
				</div>
				<div class="wrap-input100 input100-select bg1 rs1-wrap-input100 validate-input" data-validate="Please Fill Field">
					<span class="label-input100">Answer</span>
					<div>
						<select class="js-select2" name="answer2" required>
							<option selected disabled value="">Choose Option</option>
							<option value="5">Excellent</option>
							<option value="4">Very Good</option>
							<option value="3">Good</option>
							<option value="2">Satisfactory</option>
							<option value="1">Poor</option>
						</select>
						<div class="dropDownSelect2"></div>
					</div>
				</div>
				<div class="fb1-wrap-input100">
					<center><label class="label-inputx2">HOW MUCH OPPORTUNITY DOES THE TEACHER GIVE FOR Q & A ?</label></center>
				</div>
				<div class="fb1-wrap-input100">
					<center><label class="label-inputx2">HOW IS THE TEACHER'S CONTROL AND COMMAND OVER THE CLASS ?</label></center>
				</div>
				<div class="wrap-input100 input100-select bg1 rs1-wrap-input100 validate-input" data-validate="Please Fill Field">
					<span class="label-input100">Answer</span>
					<div>
						<select class="js-select2" name="answer3" required>
							<option selected disabled value="">Choose Option</option>
							<option value="5">Ample Opportunity</option>
							<option value="4">Sufficient Opportunity</option>
							<option value="3">Occasional Opportunity</option>
							<option value="2">Rare Opportunity</option>
							<option value="1">Never</option>
						</select>
						<div class="dropDownSelect2"></div>
					</div>
				</div>
				<div class="wrap-input100 input100-select bg1 rs1-wrap-input100 validate-input" data-validate="Please Fill Field">
					<span class="label-input100">Answer</span>
					<div>
						<select class="js-select2" name="answer4" required>
							<option selected disabled value="">Choose Option</option>
							<option value="5">Maintains Good Discipline</option>
							<option value="4">Maintains Reasonable Discipline</option>
							<option value="3">Some Disorder in class</option>
							<option value="2">Class is Frequently Disordered</option>
							<option value="1">Class is Noisy</option>
						</select>
						<div class="dropDownSelect2"></div>
					</div>
				</div>
				<div class="fb1-wrap-input100">
					<center><label class="label-inputx2">HOW DOES THE TEACHER STIMULATE YOU TO THINK ABOUT THE SUBJECT ?</label></center>
				</div>
				<div class="fb1-wrap-input100">
					<center><label class="label-inputx2">WHAT IS THE ATTITUDE OF THE TEACHER TOWARDS YOU ?</label></center>
				</div>
				<div class="wrap-input100 input100-select bg1 rs1-wrap-input100 validate-input" data-validate="Please Fill Field">
					<span class="label-input100">Answer</span>
					<div>
						<select class="js-select2" name="answer5" required>
							<option selected disabled value="">Choose Option</option>
							<option value="5">Highly Stimulating</option>
							<option value="4">Adequately Stimulating</option>
							<option value="3">Stimulating</option>
							<option value="2">Rarely Stimulating</option>
							<option value="1">Never</option>
						</select>
						<div class="dropDownSelect2"></div>
					</div>
				</div>
				<div class="wrap-input100 input100-select bg1 rs1-wrap-input100 validate-input" data-validate="Please Fill Field">
					<span class="label-input100">Answer</span>
					<div>
						<select class="js-select2" name="answer6" required>
							<option selected disabled value="">Choose Option</option>
							<option value="5">Usually Sympathetic and Helpful</option>
							<option value="4">Somtimes Sympathetic and Helpful</option>
							<option value="3">Sympathetic</option>
							<option value="2">Avoids Personal Contact</option>
							<option value="1">Appears Indifferent</option>
						</select>
						<div class="dropDownSelect2"></div>
					</div>
				</div>
				<div class="fb1-wrap-input100">
					<center><label class="label-inputx2">HOW MUCH OF THE SYLLABUS DOES THE TEACHER COMPLETE ?</label></center>
				</div>
				<div class="fb1-wrap-input100">
					<center><label class="label-inputx2">DOES THE TEACHER VICTIMIZE SOME STUDENTS ?</label></center>
				</div>
				<div class="wrap-input100 input100-select bg1 rs1-wrap-input100 validate-input" data-validate="Please Fill Field">
					<span class="label-input100">Answer</span>
					<div>
						<select class="js-select2" name="answer7" required>
							<option selected disabled value="">Choose Option</option>
							<option value="5">Above 90%</option>
							<option value="4">75% - 90%</option>
							<option value="3">60% - 75%</option>
							<option value="2">50% - 60%</option>
							<option value="1">Below 50%</option>
						</select>
						<div class="dropDownSelect2"></div>
					</div>
				</div>
				<div class="wrap-input100 input100-select bg1 rs1-wrap-input100 validate-input" data-validate="Please Fill Field">
					<span class="label-input100">Answer</span>
					<div>
						<select class="js-select2" name="answer8" required>
							<option selected disabled value="">Choose Option</option>
							<option value="5">Always</option>
							<option value="4">Very Often</option>
							<option value="3">Frequently</option>
							<option value="2">Occasionally</option>
							<option value="1">Never</option>
						</select>
						<div class="dropDownSelect2"></div>
					</div>
				</div>
				<div class="fb1-wrap-input100">
					<center><label class="label-inputx2">HOW MUCH OF CLASS TIME DOES TEACHER USE FOR TEACHING THE SUBJECT AND DOESNT DIVIATE ?</label></center>
				</div>
				<div class="fb1-wrap-input100">
					<center><label class="label-inputx2">DOES THE TEACHER SHOW FAVOURITEISM TOWARDS THE STUDENTS IN OR OUTSIDE CLASS ?</label></center>
				</div>
				<div class="wrap-input100 input100-select bg1 rs1-wrap-input100 validate-input" data-validate="Please Fill Field">
					<span class="label-input100">Answer</span>
					<div>
						<select class="js-select2" name="answer9" required>
							<option selected disabled value="">Choose Option</option>
							<option value="5">Above 90%</option>
							<option value="4">80% - 90%</option>
							<option value="3">70% - 80%</option>
							<option value="2">60% - 70%</option>
							<option value="1">Below 60%</option>
						</select>
						<div class="dropDownSelect2"></div>
					</div>
				</div>
				<div class="wrap-input100 input100-select bg1 rs1-wrap-input100 validate-input" data-validate="Please Fill Field">
					<span class="label-input100">Answer</span>
					<div>
						<select class="js-select2" name="answer10" required>
							<option selected disabled value="">Choose Option</option>
							<option value="5">Always</option>
							<option value="4">Very Often</option>
							<option value="3">Frequently</option>
							<option value="2">Occasionally</option>
							<option value="1">Never</option>
						</select>
						<div class="dropDownSelect2"></div>
					</div>
				</div><div class="fb1-wrap-input100">
					<center><label class="label-inputx2">WHEN DOES THE TEACHER RETURN THE CORRECTED PERIODIC TEST OR ASSIGNMENT ?</label></center>
				</div>
				<div class="fb1-wrap-input100">
					<center><label class="label-inputx2">HOW PUNTUAL IS THE TEACHER WHEN COMING TO THE CLASS ?</label></center>
				</div>
				<div class="wrap-input100 input100-select bg1 rs1-wrap-input100 validate-input" data-validate="Please Fill Field">
					<span class="label-input100">Answer</span>
					<div>
						<select class="js-select2" name="answer11" required>
							<option selected disabled value="">Choose Option</option>
							<option value="5">Within a Week</option>
							<option value="4">Within a Fortnight</option>
							<option value="3">Within 3 Weeks</option>
							<option value="2">After a Month</option>
							<option value="1">Never</option>
						</select>
						<div class="dropDownSelect2"></div>
					</div>
				</div>
				<div class="wrap-input100 input100-select bg1 rs1-wrap-input100 validate-input" data-validate="Please Fill Field">
					<span class="label-input100">Answer</span>
					<div>
						<select class="js-select2" name="answer12" required>
							<option selected disabled value="">Choose Option</option>
							<option value="5">Always on Time</option>
							<option value="4">Occasionally Late</option>
							<option value="3">Frequently Late</option>
							<option value="2">Often Late</option>
							<option value="1">Never on Time</option>
						</select>
						<div class="dropDownSelect2"></div>
					</div>
				</div>
				
				<div class="wrap-input100  bg1 rs1-alert-validate" >
					<span class="label-input100">Comments</span>
					<textarea class="input100" name="remark" placeholder="Enter Comments Here"></textarea>
				</div>
				
				
				<div class="container-contact100-form-btn">
					<button type="submit" class="contact100-form-btn" name="feedback">
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
		<script src="../style/forms/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
		<script src="../style/forms/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
		<script src="../style/forms/vendor/bootstrap/js/popper.js"></script>
		<script src="../style/forms/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
		<script src="../style/forms/vendor/select2/select2.min.js"></script>
		<script>
			$(".js-select2").each(function(){
				$(this).select2({
					minimumResultsForSearch: 20,
					dropdownParent: $(this).next('.dropDownSelect2')
				});
			})
		</script>
	<!--===============================================================================================-->
		<script src="../style/forms/vendor/daterangepicker/moment.min.js"></script>
		<script src="../style/forms/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
		<script src="../style/forms/vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
		<script src="../style/forms/js/main.js"></script>

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
