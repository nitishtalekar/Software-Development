<?php require('../dbconnect.php');

// $qu = "SELECT teacher_id,teacher_name FROM teacher;";
// $results = mysqli_query($db, $qu);
// while($row = mysqli_fetch_assoc($results)){
//   echo $row['teacher_id'];
//   echo $row['teacher_name'];
//   echo '<br>';
// }

$qu = "SELECT DISTINCT t_id,sub_id FROM feedback_temp;";
$results = mysqli_query($db, $qu);
while($row = mysqli_fetch_assoc($results)){
  echo $row['t_id'];
  echo '===>';
  echo $row['sub_id'];
  echo '<br>';
}


 ?>