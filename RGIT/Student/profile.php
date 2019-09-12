<?php require('../dbconnect.php');

  $grno = $_SESSION['GRNO'];
  $query = "SELECT * FROM student WHERE grno='$grno';";
  $results = mysqli_query($db, $query);
  $row = mysqli_fetch_assoc($results);
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
      $sdob = $row['student_dob'];
      $stenbrd = $row['tenth_board'];
      $stenper = $row['tenth_percent'];
			$stwelvebrd = $row['twelfth_board'];
      $stwelveper = $row['twelfth_percent'];
			$sdept = $row['student_dept'];
      $ssem = $row['student_sem'];
      $sdoj = $row['student_doj'];
    }
 ?>

<!DOCTYPE html>
<html lang="en">

<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	<link href="../../img/divas.png" rel="icon">

	<title><?=$sname?>'s Dashboard</title>

	<!-- Bootstrap core CSS -->
	<link href="../style/profile/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

	<!-- Custom fonts for this template -->
	<link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet">
	<link href="../style/profile/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<!-- Custom styles for this template -->
	<link href="../style/profile/css/inv.css" rel="stylesheet">
	<link href="../style/profile/owlcarousel.css" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>


	<style>
		input.error {
		    border: 1px dotted red;
		}
		label.error{
		    width: 100%;
		    color: red;
		    font-style: italic;
		    margin-left: 10px;
		    margin-bottom: 5px;
    }

    @media (max-width: 768px) {
            .back-to-top {
                bottom: 15px;
            }
        }
        .back-to-top {
            position: fixed;
            display: none;
            background: #0e3c58;
            color: #fff;
            width: 44px;
            height: 44px;
            text-align: center;
            line-height: 1;
            font-size: 16px;
            border-radius: 50%;
            right: 15px;
            bottom: 15px;
            transition: background 0.5s;
            z-index: 11;
        }

        .back-to-top i {
            padding-top: 12px;
            color: #fff;
        }
	</style>

	<script>
	    $(document).ready(function(){

	    load_json_data('country');

	    function load_json_data(id,parent_id,state_id)
	    {
	       //console.log(parent_id);
	       //console.log(id);
	     var html_code = '';
	     $.getJSON('../../json/location.json', function(data){

	      html_code += '<option value="">Select '+id+'</option>';
	      $.each(data, function(key, value){
	       if(id == 'country')
	       {

	         html_code += '<option value="'+value.name+'" id="'+value.id+'">'+value.name+'</option>';
	       }
	       else if(id == 'state')
	       {
	           if(value.id == parent_id)
	           {
	               $.each(data[parent_id-1].states, function(key, value){
	               html_code += '<option value="'+key+'">'+key+'</option>';
	           });
	           }
	       }
	       else
	       {
	           // console.log("Parent_id"+parent_id);
	           // console.log("State_id"+state_id);

	           if(value.id == parent_id)
	           {
	               $.each(data[parent_id-1].states, function(key, value){
	               if(key == state_id)
	               {
	                   for (var i = 0;i < value.length;i++)
	                   {
	                       html_code += '<option value="'+value[i]+'">'+value[i]+'</option>';
	                   }
	               }
	           });
	       }
	       }
	      });
	      $('#'+id).html(html_code);
	     });

	    }

	    $(document).on('change', '#country', function(){
	     var country_id = $('#country option:selected').attr('id');
	     //console.log("Hello"+country_id);
	     if(country_id != '')
	     {
	      load_json_data('state',country_id);
	     }
	     else
	     {
	      $('#state').html('<option value="">Select state</option>');
	      $('#city').html('<option value="">Select city</option>');
	     }
	    });
	    $(document).on('change', '#state', function(){

	       var e = document.getElementById("country");
	       var country_id = $('#country option:selected').attr('id');

	       //console.log("dafafafadfa"+country_id);

	       var e = document.getElementById("state");
	       var state_id = e.options[e.selectedIndex].text;

	   //   var state_id = $(this).val();
	   //   var state_id = "Maharashtra";

	     if(state_id != '')
	     {
	      load_json_data('city',country_id,state_id);
	     }
	     else
	     {
	      $('#city').html('<option value="">Select city</option>');
	     }
	    });
     });

     // Back to top button
     $(window).scroll(function() {
            if ($(this).scrollTop() > 100) {
            $('.back-to-top').fadeIn('slow');
            } else {
            $('.back-to-top').fadeOut('slow');
            }
        });
        $('.back-to-top').click(function(){
            $('html, body').animate({scrollTop : 0},1500, 'easeInOutExpo');
            return false;
        });
	</script>

</head>

<body id="page-top">

  <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
    <a class="navbar-brand js-scroll-trigger" href="#page-top">
      <span class="d-block d-lg-none"><?= $sname ?></span>
      
    </a>
    <div>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <!-- <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarhome" aria-controls="navbarhome" aria-expanded="false" aria-label="Toggle navigation">
      <a href="../../index.php" style="color:white"><span class="fa fa-home" ></span></a>
    </button> -->

    </div>





    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav">
        <li class="nav-item">
        <a class="nav-link js-scroll-trigger" href="#home">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="#education">Education</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="#degree">Degree Education</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="#achievements">Achievements</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="#certificates">Certifications</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="#internships">Internships</a>
        </li>
        </li>
        <li class="nav-item">
          <a class="nav-link d-lg-none d-xl-none d-md-block d-sm-block" href="../logout.php">Logout</a>
        </li>
      </ul>
    </div>
  </nav>

  <div class="container-fluid p-0">

    <section class="sticky-top shadow p-2 bg-white d-none d-lg-block ">
      <div class="row m-0">
        <div class="col-12 text-right">
        <button class="btn" >RGIT</button>
        <button class="btn dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <i class="fa fa-user" style="font-size:20px"></i>
        </button>
          <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
              <a class="dropdown-item" href="../../logout.php">Logout</a>
          </div>
        </div>
      </div>
    </section>

    <section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="home">
      <div class="w-100">
	      <div class="row">
	        <h1 class="mb-0 col-md-12">
	          <span class="text-primary"><?= $sname ?></span>
	        </h1>
	        <!-- <div class="text-right col-md-3">
	          <button class="btn btn-member" onclick="window.open('../browse/browsestartup.php')">Browse Startups</button>
	        </div> -->
	      </div>

        <div class="subheading mb-5">RAJIV GANDHI INSTITUTE OF TECHNOLOGY.
  		</div>
          <p class="lead mb-2" style="text-transform:uppercase;">
            DEPARTMENT OF <?= $sdept ?>
            <!-- <a href="student_profile.php"> LINK TO companies</a> -->
          </p>
        </div>
    </section>
    
    <section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="education">
      <div class="w-100">
        <div class="row">
          <h1 class="mb-0 col-md-12">
            <span class="text-primary">EDUCATION</span>
          </h1>
        </div>

        <div class="subheading mb-5">
          CLASS 10TH:
          <br>
          <p class="lead mb-2">
            BOARD : <?=$stenbrd?><br>
            PERCENTAGE : <?=$stenper?>
            <!-- <a href="student_profile.php"> LINK TO companies</a> -->
          </p>
      </div>
      <div class="subheading mb-5">
        CLASS 12TH:
        <br>
        <p class="lead mb-2">
          BOARD : <?=$stwelvebrd?><br>
          PERCENTAGE : <?=$stwelveper?>
          <!-- <a href="student_profile.php"> LINK TO companies</a> -->
        </p>
    </div>
        </div>
    </section>
    
    <section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="degree">
      <div class="w-100">
        <div class="row">
          <h1 class="mb-0 col-md-12">
            <span class="text-primary"><?= $sname ?></span>
          </h1>
          <!-- <div class="text-right col-md-3">
            <button class="btn btn-member" onclick="window.open('../browse/browsestartup.php')">Browse Startups</button>
          </div> -->
        </div>

        <div class="subheading mb-5">RAJIV GANDHI INSTITUTE OF TECHNOLOGY.
      </div>
          <p class="lead mb-2">
            DEPARTMENT OF <?= $sdept ?>
            <!-- <a href="student_profile.php"> LINK TO companies</a> -->
          </p>
        </div>
    </section>
    
    <section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="achievements">
      <div class="w-100">
        <div class="row">
          <h1 class="mb-0 col-md-12">
            <span class="text-primary"><?= $sname ?></span>
          </h1>
          <!-- <div class="text-right col-md-3">
            <button class="btn btn-member" onclick="window.open('../browse/browsestartup.php')">Browse Startups</button>
          </div> -->
        </div>

        <div class="subheading mb-5">RAJIV GANDHI INSTITUTE OF TECHNOLOGY.
      </div>
          <p class="lead mb-2">
            DEPARTMENT OF <?= $sdept ?>
            <!-- <a href="student_profile.php"> LINK TO companies</a> -->
          </p>
        </div>
    </section>
    
    <section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="certificates">
      <div class="w-100">
        <div class="row">
          <h1 class="mb-0 col-md-12">
            <span class="text-primary"><?= $sname ?></span>
          </h1>
          <!-- <div class="text-right col-md-3">
            <button class="btn btn-member" onclick="window.open('../browse/browsestartup.php')">Browse Startups</button>
          </div> -->
        </div>

        <div class="subheading mb-5">RAJIV GANDHI INSTITUTE OF TECHNOLOGY.
      </div>
          <p class="lead mb-2">
            DEPARTMENT OF <?= $sdept ?>
            <!-- <a href="student_profile.php"> LINK TO companies</a> -->
          </p>
        </div>
    </section>
    
    <section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="internships">
      <div class="w-100">
        <div class="row">
          <h1 class="mb-0 col-md-12">
            <span class="text-primary"><?= $sname ?></span>
          </h1>
          <!-- <div class="text-right col-md-3">
            <button class="btn btn-member" onclick="window.open('../browse/browsestartup.php')">Browse Startups</button>
          </div> -->
        </div>

        <div class="subheading mb-5">RAJIV GANDHI INSTITUTE OF TECHNOLOGY.
      </div>
          <p class="lead mb-2">
            DEPARTMENT OF <?= $sdept ?>
            <!-- <a href="student_profile.php"> LINK TO companies</a> -->
          </p>
        </div>
    </section>

    <hr class="m-0">

  </div>
  <a href="#" class="back-to-top" style="display:inline"><i class="fa fa-chevron-up"></i></a>

  <!-- Bootstrap core JavaScript -->
  <script src="../style/profile/vendor/jquery/jquery.min.js"></script>
  <script src="../style/profile/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="../style/profile/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="../style/profile/js/inv.js"></script>

  <!--owl carousal-->
  <script src="../style/profile/js/owlcarousel.js"></script>
  <!--theme script-->
  <script src="../style/profile/js/invscripts.js"></script>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.js"></script>
  <script src="../style/profile/js/validation.js"></script>

  <script>

$(document).ready(function(){
load_json_data('type');

function load_json_data(id){
   var html_code = '';
   $.getJSON('../../json/industry.json', function(data){

       function SortByName(x,y){
           return (((x.name).toLowerCase() == (y.name).toLowerCase()) ? 0 : (((x.name).toLowerCase() > (y.name).toLowerCase()) ? 1 : -1 ));
       }

       // Call Sort By Name
       data.sort(SortByName);

       function removeDumplicateValue(myArray){
           var newArray = [];

           $.each(myArray, function(key, value) {
               var exists = false;
               $.each(newArray, function(k, val2) {
                   if(value.name == val2.name){ exists = true };
               });
               if(exists == false && value.name != "") { newArray.push(value); }
           });

           return newArray;
       }

       data = removeDumplicateValue(data);
       var count = Object.keys(data).length;
       console.log(count);

       html_code += '<option value="">Select Industry '+id+'</option>';
       $.each(data, function(key, value){
           if(value.name != "Others")
               html_code += '<option value="'+value.name+'" id="'+value.name+'">'+value.name+'</option>';
       });
       html_code += '<option value="Others" id="Others">Others</option>';

       $('#'+id).html(html_code);
   });
}
});
</script>

  </body>
</html>
<script>
	if ( window.history.replaceState ) {
		window.history.replaceState( null, null, window.location.href );
	}
</script>
<script type="text/javascript">
  inactivityTimeout = false;
  resetTimeout();
  function onUserInactivity() {
     window.location.href = "../../logoutwarned.php";
  }
  function resetTimeout() {
     clearTimeout(inactivityTimeout);
     inactivityTimeout = setTimeout(onUserInactivity, 1000 * 600);
  }
  window.onmousemove = resetTimeout;
</script>
