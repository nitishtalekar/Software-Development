<?php
  session_start();

  session_destroy();
  header('Location: /college_project/TandP/login.php');
?>
