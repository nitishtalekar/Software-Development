
<?php

session_start();

if (!isset($_SESSION['emails']))
{

  header('Location: /college_project/RGIT/');
}elseif($_SESSION['type']!='tpo'){

  header('Location: /college_project/RGIT/');
}

// foreach($_SESSION['emails'] as $email){
// echo(gettype($email));}




require '../vendor/autoload.php';

$mail = new PHPMailer\PHPMailer\PHPMailer(True);                              // Passing `true` enables exceptions
try {
    //Server settings
    $mail->SMTPDebug = 0;                                 // Enable verbose debug output
    $mail->isSMTP();                                      // Set mailer to use SMTP
    $mail->Host = 'smtp.gmail.com';  // Specify main and backup SMTP servers
    $mail->SMTPAuth = true;                               // Enable SMTP authentication
    $mail->Username = 'sagarraspproject@gmail.com';                 // SMTP username
    $mail->Password = 'sagarrasp';                           // SMTP password
    $mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
    $mail->Port = 587;                                    // TCP port to connect to

    //Recipients
    $mail->setFrom('sagarraspproject@gmail.com', 'Mailer');
    // $mail->addAddress('sagarambilpure@gmail.com', 'Sagar');     // Add a recipient
    foreach ($_SESSION['emails'] as  $email){
      if($email!=""){
    $mail->addAddress($email);}
    } 
    // $mail->addAddress('npt503@gmail.com', 'Nitish');
    // $mail->addAddress('aayushipsingh@gmail.com', 'Aayush');
    // $mail->addAddress('ellen@example.com');               // Name is optional
    // $mail->addReplyTo('info@example.com', 'Information');
    // $mail->addCC('cc@example.com');
    // $mail->addBCC('bcc@example.com');

    //Attachments
    // $mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
    // $mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name
    $mail->addAttachment('../images/a.png');
    //Content
    $mail->isHTML(true);                                  // Set email format to HTML
    $mail->Subject = 'Sent using PHP';
    $mail->Body    = 'Bolala hosakata hai <b>Jalwaaa!!! with image</b>';
    $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

    $mail->send();
    echo(1);
} catch (Exception $e) {
    echo 'Message could not be sent. Mailer Error: ', $mail->ErrorInfo;
}
?>
