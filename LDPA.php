<?php
$mailto = "nishant.jinde@here.com";
    $mailSub = "Invitation";
    $mailMsg = "Hello";
    require 'PHPMailer\PHPMailerAutoload.php';
    $mail = new PHPMailer();
    $mail->IsSmtp();
    $mail->SMTPDebug = 4;

    $mail->SMTPAuth = true;
    $mail->SMTPSecure = 'tls';
    $mail->Host = "smtp.in.here.com";
    $mail->Port = 587; 

    $mail->IsHTML(true);
    $mail->Username = "nishant.jinde@here.com";
    $mail->Password = "Nishu@0611";
    $mail->setFrom("nishant.jinde@here.com");
    $mail->Subject = $mailSub;
    $mail->Body = $mailMsg;
    $mail->AddAddress($mailto);
	$mail->Send();
?>