<?php require('dbconnect.php');


require('FPDF/fpdf.php');
function createQuestionnaires(){
    global $db;
    $pdf= new FPDF('P','mm','A4');
    $pdf->AddPage();
    //HEADER only on page 1
    $pdf->Image('data/RGIT.png',10,0,0,35);
    $pdf->SetFont('Arial','B',15);

    $pdf->SetXY(10,30);
    $pdf->SetFont('Arial','B',15);
    $pdf->Cell(0,10, 'DEPARTMENT OF '.strtoupper($teacherresults['teacher_dept']), 0,1,'C');

    $pdf->SetFont('Arial','B',14);
    $pdf->Cell(0,10, 'Feedback Questionnaire', 'T',1,'C');

    $q = "SELECT * FROM feedback_ques";
    $questions = mysqli_query($db, $q);

    while($row = mysqli_fetch_assoc($questions)){
        $pdf->SetFont('Arial','',12);
        $pdf->MultiCell(0, 15, 'Q.'.$ansindex.' '.ucfirst(strtolower($row['question'])), 0,'L');
        $pdf->SetFont('Arial','',11);
        for ($i=1; $i <= 5; $i++) {
            $pdf->SetXY(20, $pdf->GetY());
            $pdf->Cell(0,0,'Score '.(6-$i).' : '.$row['ans'.$i],0,1,'L');
        }
        $pdf->Ln(2);
    }

    $pdf->Output('FeedbackQuestionnaire.pdf', 'F');

}

echo "HELLOOOO"
createQuestionnaires()

?>
