
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>RGIT-Home</title>

  <!-- Bootstrap core CSS --> 
  <link href="../style/home/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="../style/home/css/start.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="../style/forms/css/main.css">

</head>
<body  onload="send_email()">


<div style="font-size:300%;">
    <span id="status"></span>
</div>

<script>   
    function send_email() {
        document.getElementById("status").innerHTML = "Please wait email sending in progress";
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                $result = this.responseText;
                if($result == 1){
                    document.getElementById("status").innerHTML = "Email successfully sent to all students";
                }else{
                    document.getElementById("status").innerHTML = $result;
                }
            }
        };
        xmlhttp.open("GET", "sending_result.php", true);
        xmlhttp.send();
    }
</script>   

  <!-- Bootstrap core JavaScript -->
  <script src="../style/profile/vendor/jquery/jquery.min.js"></script>
  <script src="../style/profile/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
