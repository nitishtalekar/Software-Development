<?php
$old_salary = -1;
$placed_company_id = -1;
$query = "select * from student where grno = $userid";
  $results = $conn -> query($query);
  $row = $results -> fetch_assoc();

  $placement_higherstudies = $row['placement_higherstudies'];
  if($placement_higherstudies >= 2){
    $query = "select * from placed_student where student_grno = $userid";
    $results = $conn ->query($query);
    if ($results -> num_rows ===0) {
      }else {
        $row = $results -> fetch_assoc();
        $placed_company_id = $row['company_id'];
        
        $query = "select * from company where company_id = $placed_company_id";
        $results = $conn -> query($query);
        $row = $results -> fetch_assoc();
        $old_salary = $row['annual_package'];
        $placed_company_name = $row['company_name'];
      }  
  }
?>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="/college_project/RGIT/Student/student_profile.php">Hi!! <?php echo(ucwords($username)) ?></a>
      <span style="color:white"><?php if($old_salary > 0){echo(" You are placed in ".$placed_company_name." With salary ".$old_salary);}?></span>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Home
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Services</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Contact</a>
          </li>
          <li>
            <a class="nav-link" href="../logout.php">Log Out</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
