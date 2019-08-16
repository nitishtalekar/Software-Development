<?php

  $company_id = $_POST['company_id'];
  $company_name = $_POST['company_name'];

  session_start();

    if (!isset($_SESSION['tpo_id']))
    {

        header('Location: /college_project/RGIT/');
    }   elseif($_SESSION['type']!='tpo'){

        header('Location: /college_project/RGIT/');
    }

    $_SESSION['userid'] = $company_id;
    $_SESSION['company_name'] = $company_name;
    
    header('Location: /college_project/RGIT/TPO/tpo_profile.php');

?>