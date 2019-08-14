<?php
	require '../../server.php';
	if(!isset($_SESSION['InvID'])){
		header('location: ../../account/login.php');
	}
	$u = $_SESSION['InvID'];
	$qu = "SELECT * FROM inv_details WHERE InvID='$u'";
	$results = mysqli_query($db, $qu);
	$row = mysqli_fetch_assoc($results);
	$fname = $row['FName'];
	$lname = $row['LName'];
	$web = $row['Website'];
	$city = $row['City'];
	$state = $row['State'];
	$country = $row['Country'];
	$phone = $row['Phone'];
	$email = $row['Email'];

	$qu = "SELECT * FROM inv_addetails WHERE InvID='$u'";
	$results = mysqli_query($db, $qu);
	$row = mysqli_fetch_assoc($results);
	$indOfInt=$row['IOI']==""? '--':$row['IOI'];
	$facebook=$row['Facebook']==""? '--':$row['Facebook'];
	$twitter=$row['Twitter']==""? '--':$row['Twitter'];
	$linkedin=$row['LinkedIn']==""? '--':$row['LinkedIn'];
	$instagram=$row['Instagram']==""? '--':$row['Instagram'];
	$others = $row['Others']==""? '--':$row['Others'];
	$invrange = $row['InvRange']==""? '--':$row['InvRange'];
	$summary=$row['Summary']==""? 'Describe yourself and the value of your investment.':$row['Summary'];

	$q = "SELECT * FROM inv_uploads WHERE InvID='$u'";
	$results = mysqli_query($db, $q);
	$row = mysqli_fetch_assoc($results);
	$img = $row['ProfilePic'];

	$q = "SELECT * FROM membership WHERE InvID='$u'";
	$memresults = mysqli_query($db, $q);
	$memrow = mysqli_fetch_assoc($memresults);
	$member = 0;
	if(mysqli_num_rows($memresults) > 0){
		$member = 1;
		$memid = $memrow['MemID'];
	}

	if(isset($_POST["cbsave"])){
    $cbfname = mysqli_real_escape_string($db, $_POST['cbfname']);
    $cblname = mysqli_real_escape_string($db, $_POST['cblname']);
    $cbcity = mysqli_real_escape_string($db, $_POST['cbcity']);
    $cbstate = mysqli_real_escape_string($db, $_POST['cbstate']);
	  $cbcountry = mysqli_real_escape_string($db, $_POST['cbcountry']);
	  $cbioi = mysqli_real_escape_string($db, $_POST['cbioi']);
    $cbrange = mysqli_real_escape_string($db, $_POST['cbrange']);
    $summary = mysqli_real_escape_string($db, $_POST['summary']);

		if($cbfname != "")
		{
			$q = "UPDATE inv_details set FName ='$cbfname' where InvID='$u';";
			mysqli_query($db, $q);
        }

    	if($cblname != "")
		{
			$q = "UPDATE inv_details set LName ='$cblname' where InvID='$u';";
			mysqli_query($db, $q);
		}

		if($cbcity != "")
		{
			$q = "UPDATE inv_details set City='$cbcity' where InvID='$u';";
			mysqli_query($db, $q);
		}
		if($cbstate != "")
		{
			$q = "UPDATE inv_details set State='$cbstate' where InvID='$u';";
			mysqli_query($db, $q);
		}
		if($cbcountry != "")
		{
			$q = "UPDATE inv_details set Country='$cbcountry' where InvID='$u';";
			mysqli_query($db, $q);
		}
        if($cbioi != "")
		{
			$q = "UPDATE inv_addetails set IOI ='$cbioi' where InvID='$u';";
			mysqli_query($db, $q);
		}
		if($cbrange != 'Select Investment')
		{
			$q = "UPDATE inv_addetails set InvRange='$cbrange' where InvID='$u';";
			mysqli_query($db, $q);
        }
		if($cbweb != "")
		{
			$q = "UPDATE inv_details set Website='$cbweb' where InvID='$u';";
			mysqli_query($db, $q);
	    }

	    if($summary != "")
		  {
				$q = "UPDATE inv_addetails set Summary='$summary' where InvID='$u'";
				mysqli_query($db, $q);
	    }
		header('location: index.php');
	}


	if(isset($_POST["cfsave"])){
		$sllinkin = mysqli_real_escape_string($db, $_POST['sflinkedin']);
		$sltwit = mysqli_real_escape_string($db, $_POST['sftwitter']);
		$slfb = mysqli_real_escape_string($db, $_POST['sffacebook']);
		$slinst = mysqli_real_escape_string($db, $_POST['sfinstagram']);
		$slots = mysqli_real_escape_string($db, $_POST['sfothers']);
		$sfemail = mysqli_real_escape_string($db, $_POST['sfemail']);
		$sfphone = mysqli_real_escape_string($db, $_POST['sfphone']);

		if($sfemail != NULL)
		{
			$q = "UPDATE inv_details set Email='$sfemail' where InvID='$u'";
			mysqli_query($db, $q);
		}
		if($sfphone != NULL)
		{
			$q = "UPDATE inv_details set Phone='$sfphone' where InvID='$u'";
			mysqli_query($db, $q);
		}


		if($sllinkin != NULL)
		{
			$q = "UPDATE inv_addetails set LinkedIn='$sllinkin' where InvID='$u'";
			mysqli_query($db, $q);
        }
		if($sltwit != NULL)
		{
			$q = "UPDATE inv_addetails set Twitter='$sltwit' where InvID='$u'";
			mysqli_query($db, $q);
        }
		if($slfb != NULL)
		{
			$q = "UPDATE inv_addetails set Facebook='$slfb' where InvID='$u'";
			mysqli_query($db, $q);
		}
		if($slinst != NULL)
		{
			$q = "UPDATE inv_addetails set Instagram='$slinst' where InvID='$u'";
			mysqli_query($db, $q);
		}
		if($slots != NULL)
		{
			$q = "UPDATE inv_addetails set Others='$slots' where InvID='$u'";
			mysqli_query($db, $q);
		}
		header('location: index.php');
	}

	if(isset($_POST['pisave'])){
		$piname = mysqli_real_escape_string($db, $_POST['piname']);
		$piyear = mysqli_real_escape_string($db, $_POST['piyear']);
		$piamount = mysqli_real_escape_string($db, $_POST['piamount']);
		$pistage = mysqli_real_escape_string($db, $_POST['pistage']);
		$pistake = mysqli_real_escape_string($db, $_POST['pistake']);
    	$piweb = mysqli_real_escape_string($db, $_POST['piweb']);

		$q = "INSERT INTO inv_previnvestment (InvID, Name, Year,Amount, Stage, Stake, Website) VALUES ('$u', '$piname', '$piyear', '$piamount','$pistage','$pistake','$piweb');";
		mysqli_query($db, $q);

		header('location: index.php');
  	}

  	if(isset($_POST['imgsave'])){

    	$check = getimagesize($_FILES["cbpic"]["tmp_name"]);
		if($check != false)
		{
			$file_name = $fname."_".$lname."_".$_FILES['cbpic']['name'];
			$file_size = $_FILES['cbpic']['size'];
			$file_tmp = $_FILES['cbpic']['tmp_name'];
			$file_type = $_FILES['cbpic']['type'];
			$file_ext=strtolower(end(explode('.',$_FILES['cbpic']['name'])));

			$extensions= array("jpeg","jpg","png");

			if(in_array($file_ext,$extensions)=== false)
			{
				echo "<script>alert('Extension not allowed, please choose a JPEG or PNG file.')</script>";
			}
			else
			{
				if($file_size > 5242880)
				{
					echo "<script>alert('File size must be less than 5 MB')</script>";
				}
				else
				{
					$uploadas = "uploads/investor/".$file_name;
					$upload = "../../uploads/investor/".$file_name;
					if(move_uploaded_file($file_tmp, $upload)){
						$q = "UPDATE inv_uploads set ProfilePic='$uploadas' where InvID='$u';";
						mysqli_query($db, $q);
						echo "<script>alert('Successfully Uploaded')</script>";
					}
				}
    		}
  		}
  		header('location: index.php');
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

	<title><?=$fname?>'s Dashboard | Billennium Divas</title>

	<!-- Bootstrap core CSS -->
	<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

	<!-- Custom fonts for this template -->
	<link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet">
	<link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<!-- Custom styles for this template -->
	<link href="../css/inv.css" rel="stylesheet">
	<link href="../css/owlcarousel.css" rel="stylesheet">
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

<script type="text/javascript">
    function social() {
    var x = document.getElementById("soc").value;
    if (x== "Facebook")
    {
      document.getElementById("Facebook").style.display = "inline-block";
    }
    if (x== "LinkedIn")
    {
      document.getElementById("LinkedIn").style.display = "inline-block";
    }
    if (x== "Instagram")
    {
      document.getElementById("Instagram").style.display = "inline-block";
    }
    if (x== "Twitter")
    {
      document.getElementById("Twitter").style.display = "inline-block";
    }
    if (x== "Others")
    {
      document.getElementById("Others").style.display = "inline-block";
    }
  }


</script>

<body id="page-top">

  <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
    <a class="navbar-brand js-scroll-trigger" href="#page-top">
      <span class="d-block d-lg-none"><?= $fname ?>&nbsp;<?= $lname ?></span>
      <span class="d-none d-lg-block">
        <div class="d-none d-lg-block imagebox ">
          <?= "<img class='img-fluid img-profile rounded-circle mx-auto mb-2' src='../../".$img."' />";?>
          <a class="imagebox-desc" href="" data-toggle="modal" data-target="#profileImageForm">Edit</a>
        </div>
      </span>
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
          <a class="nav-link js-scroll-trigger" href="#investorbasics">Investor Basics</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="#membership">Membership</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="../browse/browsestartup.php" target="_blank">Browse Startups</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="#investment">Investments </a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="#consultancy">Consultancy</a>
        </li>
        </li>
        <li class="nav-item">
          <a class="nav-link d-lg-none d-xl-none d-md-block d-sm-block" href="account.php"> Account Settings</a>
        </li>
        <li class="nav-item">
          <a class="nav-link d-lg-none d-xl-none d-md-block d-sm-block" href="../logout.php">Logout</a>
        </li>
      </ul>
    </div>
  </nav>

  <div class="container-fluid p-0">


    <div class="modal fade" id="modalContactForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header text-center">
            <h4 class="modal-title w-100 font-weight-bold">Contact and Social Presence</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body mx-3">
            <form name="contact-social" id="contact-social"  method="post" action="index.php#investorbasics">
            <div class="accordion" id="accordionExample">
              <div class="card">
                <h2 class="mb-0">
                <button class="btn btn-light btn-block btn-lg" type="button" data-toggle="collapse" data-target="#contact" aria-expanded="true" aria-controls="collapseOne">
                  Contact Details
                </button>
                </h2>
                <div id="contact" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                  <div class="card-body">
                    <div class="form-group">
                      <label>Phone</label>
                      <input type="number" class="form-control" name="sfphone" placeholder="<?=$phone?>">
                    </div>
                    <div class="form-group">
                      <label for="sfemail">Email</label>
                      <input type="email" class="form-control" id="sfemail" name="sfemail" placeholder="<?=$email?>">
                    </div>
                  </div>
                </div>
              </div>
              <div class="card">
                <div>
                  <h2 class="mb-0">
                  <button class="btn btn-light btn-block btn-lg collapsed" type="button" data-toggle="collapse" data-target="#social" aria-expanded="false" aria-controls="collapseTwo">
                  Social Presence
                  </button>
                  </h2>
                </div>
                <div id="social" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                  <div class="card-body">
                    <div class="form-group">
                      <label>Social Media</label>
                        <select class="custom-select" name="sfsocialmedia" id="soc" required onchange="social()">
                          <option>Select Social media</option>
                          <option value="LinkedIn">LinkedIn</option>
                          <option value="Facebook">Facebook</option>
                          <option value="Instagram">Instagram</option>
                          <option value="Twitter">Twitter</option>
                          <option value="Others">Others</option>
                        </select>

                        <div id="LinkedIn" class="form-group">
                          <i class="fa fa-linkedin">&nbsp;&nbsp;
                          <input type="text" class="form-control" name="sflinkedin" placeholder="<?=$linkedin?>"></i>
                        </div>
                        <div id="Facebook" class="form-group">
                          <i class="fa fa-facebook">&nbsp;&nbsp;
                          <input type="text" class="form-control" name="sffacebook" placeholder="<?=$facebook?>"></i>
                        </div>
                        <div id="Instagram" class="form-group">
                          <i class="fa fa-instagram">&nbsp;&nbsp;
                          <input type="text" class="form-control" name="sfinstagram" placeholder="<?=$instagram?>"></i>
                        </div>
                        <div id="Twitter" class="form-group">
                          <i class="fa fa-twitter">&nbsp;&nbsp;
                          <input type="text" class="form-control" name="sftwitter" placeholder="<?=$twitter?>"></i>
                        </div>
                        <div id="Others" class="form-group">
                          <i class="fa fa-globe">&nbsp;&nbsp;
                          <input type="text" class="form-control" name="sfothers" placeholder="<?=$others?>"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="modal-footer d-flex justify-content-center">
            <button class="btn btn-unique" name="cfsave">Save</i></button>
          </div>
        </form>
        </div>
      </div>
    </div>

    <div class="modal fade" id="modalBasicForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header text-center">
            <h4 class="modal-title w-100 font-weight-bold">Investor Basics</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body mx-3">
            <form name="investor-basics" id="investor-basics" method="POST" action="index.php#investorbasics">
            <div class="accordion" id="accordionExample">
              <div class="card">
                <h2 class="mb-0">
                <button class="btn btn-light btn-block btn-lg" type="button" data-toggle="collapse" data-target="#basics" aria-expanded="true" aria-controls="collapseOne">
                Investor Details
                </button>
                </h2>
                <div id="basics" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                  <div class="card-body">
                    <div class="form-group">
                      <label>First Name</label>
                      <input type="text" class="form-control" name="cbfname" id="cbfname" placeholder="<?=$fname?>">
                    </div>
                    <div class="form-group">
                      <label>Last Name</label>
                      <input type="text" class="form-control" name="cblname" placeholder="<?=$lname?>">
                    </div>
                    <div class="form-group">
                      <label>Country</label>
                        <select class="custom-select" name="cbcountry" id="country">
                        <option value="">Select country</option>
                        </select>
                    </div>
                    <div class="form-group">
                      <label>State</label>
                        <select class="custom-select" name="cbstate" id="state">
                        <option value="">Select state</option>
                        </select>
                    </div>
                    <div class="form-group">
                      <label>City</label>
                        <select class="custom-select" name="cbcity" id="city">
                        <option value="">Select city</option>
                        </select>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card">
                <div>
                  <h2 class="mb-0">
                  <button class="btn btn-light btn-block btn-lg collapsed" type="button" data-toggle="collapse" data-target="#industry" aria-expanded="false" aria-controls="collapseTwo">
                  Industry details
                  </button>
                  </h2>
                </div>
                <div id="industry" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                  <div class="card-body">
                    <div class="form-group">
                      <label>Industry of Interest</label>
                      <select class="form-control input-sm font-small" name="cbioi" id="type">
                            <option value="">Select Industry Type</option>
                      </select>
                    </div>
                    <div class="form-group">
                      <label>Investment range</label>
                        <select class="custom-select" name="cbrange">
                          <option>Select Investment</option>
                          <option>0 - 1,00,000</option>
                          <option>1,00,000 - 10,00,000</option>
                          <option>10,00,000 - 50,00,000</option>
                          <option>50,00,000 - 1,00,00,000</option>
                          <option>More than 1,00,00,000</option>
                        </select>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card">
                <h2 class="mb-0">
                <button class="btn btn-light btn-block btn-lg collapsed" type="button" data-toggle="collapse" data-target="#description" aria-expanded="false" aria-controls="collapseTwo">
                  Investor Description
                </button>
                </h2>
                <div id="description" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                  <div class="card-body">
                    <div class="form-group">
                      <label>Description</label>
                      <textarea row="3" name="summary" class="form-control"></textarea>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            </div>
            <div class="modal-footer d-flex justify-content-center">
              <button class="btn btn-unique" name="cbsave">Save</button>
            </div>
          </form>
          </div>
        </div>
    </div>

    <div class="modal fade" id="modalInvestmentForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header text-center">
            <h4 class="modal-title w-100 font-weight-bold">Add a previous investment (max. 3)</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body mx-3">
            <form name="previous-inv" id="previous-inv" method="post" action="index.php#investment">
              <div class="form-group">
                <label>Startup Name</label>
                <input type="text" class="form-control" name="piname">
              </div>
              <div class="form-group">
                <label>Year of Investment</label>
                <input type="number" step="1" class="form-control" name="piyear">
              </div>
              <div class="form-group">
                <label>Amount of Investment</label>
                <input type="number" class="form-control" name="piamount">
              </div>
              <div class="form-group">
                <label>Stage</label>
                <select class="custom-select" name="pistage" required>
                  <option value="">Select Stage</option>
                  <option value="Concept Only">Concept Only</option>
                  <option value="Product in Development">Product in Development</option>
                  <option value="Prototype ready">Prototype ready</option>
                  <option value="Full Product Ready">Full Product Ready</option>
                  <option value="Early Revenue Stage">Early Revenue Stage</option>
                  <option value="Growth Stage">Growth Stage</option>
                </select>
              </div>
              <div class="form-group">
                <label>Stake holding(%)</label>
                <input type="number" size="3" class="form-control" name="pistake">
              </div>
              <div class="form-group">
                <label>Website of Startup</label>
                <input type="text" class="form-control" name="piweb">
              </div>
            </div>
            <div class="modal-footer d-flex justify-content-center">
              <button class="btn btn-unique" name="pisave" type="submit">Save</button>
            </div>
          </form>
        </div>
      </div>
    </div>

    <div class="modal fade" id="profileImageForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header text-center">
            <h4 class="modal-title w-100 font-weight-bold">Change Profile Image</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <form method="post" action="index.php#home" enctype="multipart/form-data">
          <div class="modal-body mx-3">
            <div class="form-group">
              <label>Profile Image</label>
              <input name="cbpic" class="row" type="file" title="Choose file of type .jpeg, .png, .jpg of size less than 5MB!">
            </div>
          </div>
          <div class="modal-footer d-flex justify-content-center">
            <button class="btn btn-unique" name="imgsave">Save </button>
          </div>
        </div>
        </form>
      </div>
    </div>

    <section class="sticky-top shadow p-2 bg-white d-none d-lg-block ">
      <div class="row m-0">
        <div class="col-12 text-right">
        <button class="btn" >B-Divas</button>
        <button class="btn dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <i class="fa fa-user" style="font-size:20px"></i>
        </button>
          <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
              <a class="dropdown-item" href="account.php" target="_blank">Account Settings</a>
              <a class="dropdown-item" href="../../logout.php">Logout</a>
          </div>
        </div>
      </div>
    </section>

    <section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="home">
      <div class="w-100">
	      <div class="row">
	        <h1 class="mb-0 col-md-9">
	          <span class="text-primary">Hello <?= $fname ?></span>
	        </h1>
	        <div class="text-right col-md-3">
	          <button class="btn btn-member" onclick="window.open('../browse/browsestartup.php')">Browse Startups</button>
	        </div>
	      </div>

        <div class="subheading mb-5">GET STARTED.

		<p class="subheading mb-6">
			<?php
				if($member == 0){
					echo "<a href='../../account/direct_member_individual.php' target='_blank'>Become a member</a>";
				}
				else{
					if($_SESSION['memexp'] == "EXPIRED"){
						echo "<p class='text-danger'>You're Membership has expired. Please renew asap.</p>";
					}
					else if($_SESSION['memexp'] == "MONTHLEFT"){
						echo "<p class='text-warning'>You're Membership expires within a month. Please contact Billennium Divas for renewal purposes</p>";
					}
					echo "Membership ID :- ".$memid;
				}


			?>


		</p>
		</div>
        <p class="lead mb-2">Thank you for your interest in Billennium Divas!
          Our team will contact you shortly to discuss your needs and schedulea demo. In the meantime,
          take a look at some startups in your area.
        </p>

        <div class="row" style="padding-top:10px">
          <div class="col-md-12">
            <div class="row">
              <div class="col-md-12" style="padding-top:20px">
                <div class="profile-item">
                  <div class="media">
                    <div class="media-body">
                      <h4 class="media-heading">Next Steps</h4>
                        Follow the next steps to invest in starups of your interest.
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-12">
            <div class="row">
              <div class="col-md-4" style="padding-top:20px">
                <div class="profile-item">
                  <div class="media">
                    <div class="media-body step-icons">
                      <a href="#">
                      <i class="fa fa-calendar"></i>
                      </a>
                      <button class="btn btn-steps">Schedule a demo</button>
                      <p>Schedule an introductory call or demo</p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-4" style="padding-top:20px">
                <div class="profile-item">
                  <div class="media">
                    <div class="media-body step-icons">
                      <a href="#">
                      <i class="fa fa-registered"></i>
                      </a>
                      <button class="btn btn-steps">Get Registered</button>
                      <p>Complete your enterprise registration</p>
                    </div>
                  </div>
                </div>
               </div>
               <div class="col-md-4" style="padding-top:20px">
                <div class="profile-item">
                  <div class="media">
                    <div class="media-body step-icons">
                      <a href="#">
                      <i class="fa fa-address-book"></i>
                      </a>
                      <button class="btn btn-steps">Browse Startups</button>
                      <p>Explore latest startups</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="social-icons" style="padding-top: 50px">
          <a href="#">
            <i class="fab fa-linkedin-in"></i>
          </a>
          <a href="#">
            <i class="fab fa-github"></i>
          </a>
          <a href="#">
            <i class="fab fa-twitter"></i>
          </a>
          <a href="#">
            <i class="fab fa-facebook-f"></i>
          </a>
        </div>
      </div>
    </section>

    <hr class="m-0">

    <section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="investorbasics">
      <div class="w-100">
        <div class="row">
          <div class="col-md-9">
            <h1 class="mb-0">
              <span class="text-primary"><?= $fname ?>&nbsp;<?= $lname ?></span>
            </h1>
          </div>
          <div class="col-md-3">
            <div class="text-right">
              <a href="" class="btn btn-default btn-rounded mb-4" data-toggle="modal" data-target="#modalBasicForm">Edit</a>
            </div>
          </div>
        </div>
      <div class="subheading mb-5"><?= $city ?> ,&nbsp;<?= $state ?> ,&nbsp;<?= $country ?>.
      </div>
      <div class="row" >
          <div class="col-md-12">
              <div class="section-title"><h3>Industry of interest  :  <?= $indOfInt ?></h3></div>
          </div>
      </div>
      <div class="row" >
          <div class="col-md-12">
              <div class="section-title"><h3>Investment range  :  <?= $invrange ?></h3></div>
          </div>
      </div>
      <div class="row" >
          <div class="col-md-12">
              <div class="section-title" style="padding-top:50px"><h3>Investor Description</h3></div>
          </div>
      </div>
      <p class="lead mb-5">Investor Description ---- <?php echo $summary;?>
      </p>
      <div class="row">
          <div class="col-md-9">
              <div class="section-title"><h3>Email  :  <?=$email?></h3></div>
          </div>
          <div class="col-md-3">
            <div class="text-right">
              <a href="" class="btn btn-default btn-rounded mb-4" data-toggle="modal" data-target="#modalContactForm">Edit</a>
            </div>
          </div>
      </div>
      <div class="row" >
          <div class="col-md-4">
              <div class="section-title"><h3>Contact  :  <?=$phone?></h3></div>
          </div>
      </div>
      <div class="social-icons">
        <a href="#">
          <i class='fab fa-react'></i>
        </a>
        <a href="#">
          <i class="fab fa-linkedin-in"></i>
        </a>
        <a href="#">
          <i class="fab fa-github"></i>
        </a>
        <a href="#">
          <i class="fab fa-twitter"></i>
        </a>
        <a href="#">
          <i class="fab fa-facebook-f"></i>
        </a>
      </div>
      </div>
    </section>

    <hr class="m-0">

    <section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="membership">
      <div class="w-100">
        <h2 class="mb-5">Membership</h2>
        <p class="lead mb-5">"A great business starts from small investment, whereas the small investments start from a big risk." </p>
        <div class="row">
          <div class="col-md-6" style="padding-top:20px">
            <div class="profile-item">
              <div class="media">
                <div class="media-body">
                  <h3 class="media-heading">Why become a member?</h3>
                  <p class="lead">Becoming a member of Billennium Divas enables you to explore the startups and look through their details before investing.
                  Become a member of Billennium Divas network, browse through unlimited industries and get premium treatment.</p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6" style="padding-top:20px">
            <div class="row">
              <div class="col-md-3">
                <div class="profile-item">
                  <div class="media">
                    <div class="media-body im">
                      <img src="../img/Internet.png" height="100px">
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-3">
                <div class="profile-item">
                  <div class="media">
                    <div class="media-body im">
                      <img src="../img/Food.png" height="100px">
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-3">
                <div class="profile-item">
                  <div class="media">
                    <div class="media-body im">
                      <img src="../img/Education.png" height="100px">
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="container-fluid col-md-6 col-sm-12">
            <button type="button" class="btn btn-member mb-4" onclick="window.open('../../account/direct_member_individual.php')" style="margin:20px 50px 0px 50px">BECOME OUR MEMBER</button>
					</div>
					<div class="container-fluid col-md-6 col-sm-12">
            <!-- <p class="lead">Already a member? Start browsing!!</p> -->
            <button type="button" class="btn btn-member" onclick="window.open('../browse/browsestartup.php')" style="margin:20px 50px 0px 50px">START BROWSING</button>
					</div>
        </div>
    </section>

    <hr class="m-0">

    <section class="resume-section p-3 p-lg-5 d-flex justify-content-center" id="investment">
      <div class="w-100">
        <div class="row">
          <div class="col-md-9">
            <h2 class="mb-5">
              Previous Investments
            </h2>
          </div>
          <div class="col-md-3">
            <div class="text-right">
              <a href="" class="btn btn-default btn-rounded mb-4" data-toggle="modal" data-target="#modalInvestmentForm">Add</a>
            </div>
          </div>
        </div>
            <div class="row">
              <?php
                $q = "SELECT * FROM inv_previnvestment where InvID='$u';";
                $results=mysqli_query($db, $q);
                if (mysqli_num_rows($results) > 0){
                  while($row = mysqli_fetch_assoc($results)) {
                  echo'<div class="col-md-4">';
                    echo'<div class="profile-item">';
                      echo'<div class="media">';
                        echo'<div class="media-body">';
                          echo '<h3 class="media-heading">'.$row["Name"].'</h3>';
                          echo '<div class="subheading">'.$row["Website"].'</div>';
                            echo '<p>Stage of investment: '.$row["Stage"].'</p>';
                            echo '<p>Stake holding: '.$row["Stake"].'</p>';
                            echo '<p>Amount: '.$row['Amount'].'</p>';
                            echo '<p>Year of investment: '.$row["Year"].'</p>';
                          echo'</div>';
                        echo'</div>';
                      echo'</div>';
                    echo'</div>';
                  }
                }
                else{
                  echo'<div class="col-md-4">';
                    echo'<div class="profile-item">';
                      echo'<div class="media">';
                        echo'<div class="media-body">';
                          echo '<h3 class="subheading">Add your previous investments!</h3>';
                          echo '<p>Mention the best three investments done and its details.</p>';
                          echo'</div>';
                        echo'</div>';
                      echo'</div>';
                    echo'</div>';
                }
            ?>
          </div>

        <div class="row">
            <div class="col-md-3">
              <div class="section-title">
                <h3>Investments Through Billennium Divas</h3>
              </div>
            </div>
            <div class="col-md-9">
              <?php
                $q = "SELECT * FROM requests where Inv_ID='$u';";
                $results=mysqli_query($db, $q);
                if (mysqli_num_rows($results) > 0) {
                  while($row = mysqli_fetch_assoc($results)) {
                    $stid=$row['St_ID'];
                    $qu = "SELECT Stname FROM st_details where StpID='$stid';";
                    $result = mysqli_query($db, $qu);
                    $row1= mysqli_fetch_assoc($result);
                    echo'<div id="review">';
                      echo'<div class="item">';
                        echo'<div class="media">';
                          echo'<div class="media-body">';
                            echo'<div class="user-name">'.$row1['Stname'].'</div>';
                          echo'</div>';
                        echo'</div>';
                        echo'<div class="review-text">';
                        if($row['Deal'] == 0){
                          echo 'Transaction in progress';
                        }
                        if($row['Deal'] == 1){
                          echo 'Invested';
                          echo 'Amount: '.$row['Amount'];
                          echo 'Stakeholding: '.$row['Stakehold'];
                          echo 'Date: '.$row['Date'];
                        }
                        echo'</div>';
                        echo'</div>';
                  }
                }
                else{
                  echo'<div id="review">';
                    echo'<div class="item">';
                      echo'<div class="media">';
                        echo'<div class="media-body">';
                          echo'<div class="user-name">Hello '.$fname.'</div>';
                        echo'</div>';
                      echo'</div>';
                      echo'<div class="review-text">';
                      echo'Start browsing startups and invest now!!';
                      echo'<br>';
                      echo'<a class="nav-link" target="_blank" href="../browse/browsestartup.php">Browse Startups</a>';
                    echo'</div>';
                  echo'</div>';
                }
              ?>
          </div>
        </div>
      </div>

      </section>

    <hr class="m-0">

    <section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="consultancy">
      <div class="w-100">
        <h2 class="mb-5">Contact Billennium Divas</h2>
      <div class="col-md-12">
        <div class="row">
          <div class="col-md-6" style="padding-top:10px">
            <div class="media-body step-icons">
              <a href="#">
                <i class="fa fa-phone"></i>
              </a>
            <button class="btn btn-steps">Introductory call</button>
            <div><img src="../img/Call.png" height="250px" width="350px"></div>
              <br>
              <i class="fa fa-phone" style="font-size:20px"> +91 9876543211</i><br>
              <i class="fa fa-phone" style="font-size:20px"> +91 9876543211</i>
              <p>Contact us on any of these numbers for an introductory call.</p>
            </div>
          </div>
          <div class="col-md-6" style="padding-top:10px">
            <div class="media-body step-icons">
                <a href="#">
                  <i class="fa fa-comments"></i>
                </a>
              <button class="btn btn-steps">Schedule a meeting</button>
              <div><img src="../img/Meet.png" height="300px" width="350px"></div>
              <br>
              <button class="btn btn-meetus">Meet us</button>
            </div>
          </div>
        </div>
      </div>
    </section>

    <hr class="m-0">


  </div>
  <a href="#" class="back-to-top" style="display:inline"><i class="fa fa-chevron-up"></i></a>

  <!-- Bootstrap core JavaScript -->
  <script src="../vendor/jquery/jquery.min.js"></script>
  <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="../js/inv.js"></script>

  <!--owl carousal-->
  <script src="../js/owlcarousel.js"></script>
  <!--theme script-->
  <script src="../js/invscripts.js"></script>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.js"></script>
  <script src="../js/validation.js"></script>

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
