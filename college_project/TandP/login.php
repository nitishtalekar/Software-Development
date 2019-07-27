<?php
  $hour = date('H') + 4;
  $message = '';

  if($hour > 0 and $hour < 12)
    {
      $message = 'Good Morning';
    }
  elseif ($hour > 12 and $hour < 16) {
    $message = 'Good Afternoon';
  }
  else {
    $message = 'Good Night';
  }

  $invalid = false;
  $valid=false;
  if (array_key_exists('invalid', $_GET)) {
    $invalid = true;
  }
  if (array_key_exists('valid', $_GET)) {
    $valid = true;
  }

?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Login Here!</title>
    <link rel="stylesheet" href="/fndfrancis/css/login.css">
  </head>
  <body>
    <h1>Login Here! <?php echo($message); ?></h1>
    <img src="/fndfrancis/images/dead_pool_yo.jpeg" alt="">
    <form method="post" action="/college_project/TandP/authenticate.php">
      <?php
          if ($valid) {
        ?>
          <span class="success">Registration Successful</span>
        <?php
          }
      ?>
      <div class="form-element">
        <input type="text" placeholder="Username" name="username">
      </div>
      <div class="form-element">
        <input type="password" placeholder="Password" name="password">
      </div>
      <div class="form-element">
        <input type="radio" name="type" value="student" checked> Student<br>
        <input type="radio" name="type" value="teacher"> Teacher<br>
        <input type="radio" name="type" value="company"> Company
      </div>
      <div class="actions">
        <button type="submit">Login</button>
        <!-- <a href="/fndfrancis/html/register.html">Register</a> -->
      </div>
      <?php
          if ($invalid) {
        ?>
          <span class="error">Invalid username or password</span>
        <?php
          }
      ?>
    </form>
  </body>
</html>
