<?php require('dbconnect.php');

if($_SESSION['admin'] == 0){
  header('location: index.php');
}


if(isset($_POST['upload_fb'])){
    $query = "SELECT DISTINCT teacher_id,sub_id FROM feedback_temp;";
    $results = mysqli_query($db, $query);
    if(mysqli_num_rows($results) > 0){
      while($row = mysqli_fetch_assoc($results)){
          $t = $row['teacher_id'];
          $s = $row['sub_id'];
          $ans = array(0,0,0,0,0,0,0,0,0,0,0,0);
          $rmrks = '';
          $q = "SELECT * FROM feedback_temp WHERE teacher_id = '$t' AND sub_id = '$s';";
          $res = mysqli_query($db, $q);
          $length = mysqli_num_rows($res);
          $cnt = array(array(0,0,0,0,0),array(0,0,0,0,0),array(0,0,0,0,0),array(0,0,0,0,0),array(0,0,0,0,0),array(0,0,0,0,0),array(0,0,0,0,0),array(0,0,0,0,0),array(0,0,0,0,0),array(0,0,0,0,0),array(0,0,0,0,0),array(0,0,0,0,0));
          while($row1 = mysqli_fetch_assoc($res)){
              $ans[0] = $ans[0] + (int)$row1['ques1'];
              $cnt[0][(int)$row1['ques1'] - 1] = $cnt[0][(int)$row1['ques1'] - 1] + (int)1;

              $ans[1] = $ans[1] + (int)$row1['ques2'];
              $cnt[1][(int)$row1['ques2'] - 1] = $cnt[1][(int)$row1['ques2'] - 1] + (int)1;

              $ans[2] = $ans[2] + (int)$row1['ques3'];
              $cnt[2][(int)$row1['ques3'] - 1] = $cnt[2][(int)$row1['ques3'] - 1] + (int)1;

              $ans[3] = $ans[3] + (int)$row1['ques4'];
              $cnt[3][(int)$row1['ques4'] - 1] = $cnt[3][(int)$row1['ques4'] - 1] + (int)1;

              $ans[4] = $ans[4] + (int)$row1['ques5'];
              $cnt[4][(int)$row1['ques5'] - 1] = $cnt[4][(int)$row1['ques5'] - 1] + (int)1;

              $ans[5] = $ans[5] + (int)$row1['ques6'];
              $cnt[5][(int)$row1['ques6'] - 1] = $cnt[5][(int)$row1['ques6'] - 1] + (int)1;

              $ans[6] = $ans[6] + (int)$row1['ques7'];
              $cnt[6][(int)$row1['ques7'] - 1] = $cnt[6][(int)$row1['ques7'] - 1] + (int)1;

              $ans[7] = $ans[7] + (int)$row1['ques8'];
              $cnt[7][(int)$row1['ques8'] - 1] = $cnt[7][(int)$row1['ques8'] - 1] + (int)1;

              $ans[8] = $ans[8] + (int)$row1['ques9'];
              $cnt[8][(int)$row1['ques9'] - 1] = $cnt[8][(int)$row1['ques9'] - 1] + (int)1;

              $ans[9] = $ans[9] + (int)$row1['ques10'];
              $cnt[9][(int)$row1['ques10'] - 1] = $cnt[9][(int)$row1['ques10'] - 1] + (int)1;

              $ans[10] = $ans[10] + (int)$row1['ques11'];
              $cnt[10][(int)$row1['ques11'] - 1] = $cnt[10][(int)$row1['ques11'] - 1] + (int)1;

              $ans[11] = $ans[11] + (int)$row1['ques12'];
              $cnt[11][(int)$row1['ques12'] - 1] = $cnt[11][(int)$row1['ques12'] - 1] + (int)1;

              $rmrks = $rmrks.'<->'.str_replace(array("'", "\""), "", $row1['remark']);
          }
          // echo $t."-------".$s."<br><br>";
          for($i = 0; $i < 12; $i++)
          {
            $c1 = $cnt[$i][0];
            $c2 = $cnt[$i][1];
            $c3 = $cnt[$i][2];
            $c4 = $cnt[$i][3];
            $c5 = $cnt[$i][4];
            $qn = $i+1;

            // echo $c1."--".$c2."--".$c3."--".$c4."--".$c5."<br>";
            $q = "INSERT INTO feedback_count(teacher_id, sub_id, question_no, count_1, count_2, count_3, count_4, count_5) VALUES ('$t','$s','$qn','$c1','$c2','$c3','$c4','$c5')";
            mysqli_query($db,$q);

          }


          $avg_ans = array();
          for($i=0;$i<12;$i++){
              $avg_ans[$i] = strval(round((float)$ans[$i]/(float)$length));
          }
          $yr = strval(date('Y'));
          $qu = "INSERT INTO feedback(teacher_id, sub_id, year, score1, score2, score3, score4, score5, score6, score7, score8, score9, score10, score11, score12, remark)";
          $qu = $qu."VALUES ('$t','$s','$yr','$avg_ans[0]','$avg_ans[1]','$avg_ans[2]','$avg_ans[3]','$avg_ans[4]','$avg_ans[5]','$avg_ans[6]','$avg_ans[7]','$avg_ans[8]','$avg_ans[9]','$avg_ans[10]','$avg_ans[11]','$rmrks')";
          mysqli_query($db, $qu);

      }
      $qt = "TRUNCATE table feedback_temp";
      mysqli_query($db, $qt);
      echo "<script>alert('Data Uploaded!')</script>";
    }
    else{
      echo "<script>alert('No Data to Upload!')</script>";
    }


}

require('FPDF/fpdf.php');

function createpdf($fbresults, $teacherresults, $subjectresults,$subjectid,$teacherid){
    // Cell(float w , float h , string txt , mixed border , int ln , string align , boolean fill , mixed link)
    global $db;
    $pdf= new FPDF('P','mm','A4');
    $pdf->AddPage();

    //HEADER only on page 1
    $pdf->Image('data/RGIT.png',10,0,0,35);
    $pdf->SetFont('Arial','B',15);

    $pdf->SetXY(10,30);
    $pdf->SetFont('Arial','B',15);
    $pdf->Cell(0,10, 'DEPARTMENT OF '.strtoupper($teacherresults['teacher_dept']), 0,1,'C');

    $pdf->SetFont('Arial','',12);
    $pdf->Cell(35,5, 'Professor Name', 0,0,'L');
    $pdf->Cell(100,5, ': '.strtoupper($teacherresults['teacher_name']), 0,1,'L');

    $pdf->SetFont('Arial','',12);
    $pdf->Cell(35,5, 'Subject Name', 0,0,'L');
    $pdf->Cell(100,5, ': '.strtoupper($subjectresults['sub_name']), 0,1,'L');

    $pdf->SetFont('Arial','',12);
    $pdf->Cell(35,5, 'Year', 0,0,'L');
    $pdf->Cell(100,5, ': '.strtoupper($fbresults['year']), 0,1,'L');

    $pdf->Ln(5);

    $pdf->SetFont('Arial','B',14);
    $pdf->Cell(0,10, 'Feedback Questionnaire', 'T',1,'C');


    $q = "SELECT * FROM feedback_ques";
    $questions = mysqli_query($db, $q);
    $ansindex = 1;

    while($row = mysqli_fetch_assoc($questions)){
        $pdf->SetFont('Arial','',12);
        $pdf->MultiCell(0, 15, 'Q.'.$ansindex.' '.ucfirst(strtolower($row['question'])), 0,'L');
        $pdf->SetFont('Arial','',11);
        $fbscore = $fbresults['score'.$ansindex];
        $pdf->SetXY(20, $pdf->GetY());
        $pdf->Cell(0,0,'Feedback: '.$row['ans'.$fbscore],0,1,'L');
        $pdf->Ln(2);
        $ansindex = $ansindex + 1;
    }

   //  //--------------------------//
    $pdf->AddPage();

    $pdf->Image('data/RGIT.png',10,0,0,35);
    $pdf->SetFont('Arial','B',15);

    $pdf->SetXY(10,30);
    $pdf->SetFont('Arial','B',15);
    $pdf->Cell(0,10, 'DEPARTMENT OF '.strtoupper($teacherresults['teacher_dept']), 0,1,'C');

    $pdf->Ln(5);

    $width_cell=array(35,20,20,20,20,20,20,30);
    $pdf->SetFont('Arial','',12);

    //Background color of header//
    $pdf->SetFillColor(255,255,255);
    $pdf->SetXY(10,40);
    // Header starts ///
    //First header column //
    $pdf->Cell($width_cell[0],10,'Question no',1,0,'C',true);
    //Second header column//
    $pdf->Cell($width_cell[1],10,'A',1,0,'C',true);
    //Third header column//
    $pdf->Cell($width_cell[2],10,'B',1,0,'C',true);
    //Fourth header column//
    $pdf->Cell($width_cell[3],10,'C',1,0,'C',true);
    //Third header column//
    $pdf->Cell($width_cell[4],10,'D',1,0,'C',true);
    $pdf->Cell($width_cell[5],10,'E',1,0,'C',true);
    $pdf->Cell($width_cell[6],10,'Total',1,0,'C',true);
    $pdf->Cell($width_cell[7],10,'Average %',1,1,'C',true);

    $q = "SELECT * FROM feedback_count where teacher_id='$teacherid' and sub_id='$subjectid' ";
    $questions = mysqli_query($db, $q);

    $fill=false;

    $totalsum = 0;

    while($row = mysqli_fetch_assoc($questions)){

      $pdf->Cell($width_cell[0],10,$row['question_no'],1,0,'C',$fill);
      $pdf->Cell($width_cell[1],10,$row['count_5'],1,0,'C',$fill);
      $pdf->Cell($width_cell[2],10,$row['count_4'],1,0,'C',$fill);
      $pdf->Cell($width_cell[3],10,$row['count_3'],1,0,'C',$fill);
      $pdf->Cell($width_cell[4],10,$row['count_2'],1,0,'C',$fill);
      $pdf->Cell($width_cell[5],10,$row['count_1'],1,0,'C',$fill);
      $sum = $row['count_1'] + $row['count_2'] + $row['count_3'] + $row['count_4'] + $row['count_5'] ;
      $avg = $row['count_1'] + $row['count_2'] * 2 + $row['count_3'] * 3 + $row['count_4'] * 4 + $row['count_5'] * 5 ;
      $rndavg = round(($avg/(int)$sum)*20,2);
      $totalsum = $totalsum + $rndavg;
      $pdf->Cell($width_cell[6],10,$sum,1,0,'C',$fill);
      $pdf->Cell($width_cell[7],10,$rndavg."%",1,1,'C',$fill);
    }

    $pdf->SetFont('Arial','B',20);
    $pdf->Cell(0,10, 'Overall Average :'.round($totalsum/(int)12, 2)."%", 'T',1,'C');

    $pdf->AddPage();
    $remarks = explode('<->', $fbresults['remark']);
    $x = count($remarks)-1;
    $pdf->SetFont('Arial','B',14);
    $pdf->Cell(0,10, 'Student Reviews', 'T',1,'C');
    while($x >= 0){
        $pdf->SetFont('Arial','',12);
        // $pdf->SetXY(20, $pdf->GetY());
        $pdf->MultiCell(0, 10, ucfirst(strtolower($remarks[$x])), 0,'L');
        $x = $x-1;
    }
    $pdf->Output('FeedbackOutputs/'.$teacherresults['teacher_dept'].'-'.$teacherresults['teacher_name'].'-'.$subjectresults['sub_name'].'-'.$fbresults['year'].'.pdf', 'F');

}



if(isset($_POST['summary_fb'])){

    $q1 = "SELECT * FROM feedback";
    $result = mysqli_query($db, $q1);

    if(mysqli_num_rows($result)>0){
      while($fbresults = mysqli_fetch_assoc($result)){
          $subjectid = $fbresults['sub_id'];
          $teacherid = $fbresults['teacher_id'];

          $q2 = "SELECT * FROM teacher WHERE teacher_id = '$teacherid'";
          $teacherresults = mysqli_query($db, $q2);
          $teacherresults = mysqli_fetch_array($teacherresults);

          $q3 = "SELECT * FROM subject WHERE sub_id = '$subjectid'";
          $subjectresults = mysqli_query($db, $q3);
          $subjectresults = mysqli_fetch_array($subjectresults);

          createpdf($fbresults, $teacherresults, $subjectresults,$subjectid,$teacherid);

      }
      $qtr = "TRUNCATE table feedback_count";
      mysqli_query($db, $qtr);
      echo "<script>alert('Summary Created!')</script>";
    }
    else{
      echo "<script>alert('No data to summarize!')</script>";
    }


}
if(isset($_POST['trunc_fb'])){

    $q1 = "TRUNCATE table feedback_temp";
    mysqli_query($db, $q1);
    $qt = "TRUNCATE table feedback_count";
    mysqli_query($db, $qt);
    echo "<script>alert('Data Cleared!')</script>";
}

?>
<html lang="en">
<head>
	<title>Feedback</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--===============================================================================================-->
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="style/forms/vendor/bootstrap/css/bootstrap.min.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="style/forms/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="style/forms/fonts/iconic/css/material-design-iconic-font.min.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="style/forms/vendor/animate/animate.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="style/forms/vendor/css-hamburgers/hamburgers.min.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="style/forms/vendor/animsition/css/animsition.min.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="style/forms/vendor/select2/select2.min.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="style/forms/vendor/daterangepicker/daterangepicker.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="style/forms/vendor/noui/nouislider.min.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="style/forms/css/util.css">
		<link rel="stylesheet" type="text/css" href="style/forms/css/main.css">
	<!--===============================================================================================-->
</head>
<body>


	<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form" action="AdminPage.php" method="POST" enctype="multipart/form-data">
				<span class="contact100-form-title">
					Feedback
				</span>

				<div class="wrap-input100">
					<center><label class="label-inputx">FEEDBACK ADMIN</label></center>
				</div>


				<div class="container-contact100-form-btn">
					<button type="submit" class="contact100-form-btn" name="upload_fb">
						<span>
							Upload Data
							<i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
						</span>
					</button>
				</div>

        <div class="container-contact100-form-btn">
					<button type="submit" class="contact100-form-btn" name="summary_fb">
						<span>
							Obtain Feedback Summary
							<i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
						</span>
					</button>
				</div>

        <div class="container-contact100-form-btn">
					<button type="submit" class="contact100-form-btn" name="trunc_fb">
						<span>
							Truncate Collected Data
							<i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
						</span>
					</button>
				</div>
			</form>
		</div>
	</div>

  <?php require "include/footer.php"?>



	<!--===============================================================================================-->
		<script src="style/forms/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
		<script src="style/forms/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
		<script src="style/forms/vendor/bootstrap/js/popper.js"></script>
		<script src="style/forms/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
		<script src="style/forms/vendor/select2/select2.min.js"></script>
		<script>
			$(".js-select2").each(function(){
				$(this).select2({
					minimumResultsForSearch: 20,
					dropdownParent: $(this).next('.dropDownSelect2')
				});
			})
		</script>
	<!--===============================================================================================-->
		<script src="style/forms/vendor/daterangepicker/moment.min.js"></script>
		<script src="style/forms/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
		<script src="style/forms/vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
		<script src="style/forms/js/main.js"></script>

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
