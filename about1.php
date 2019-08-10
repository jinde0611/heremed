<?php
// Import PHPMailer classes into the global namespace
// These must be at the top of your script, not inside a function
require 'PHPMailer\class.phpmailer.php';
require 'PHPMailer\class.smtp.php';
require 'PHPMailer\class.phpmaileroauth.php';
//Load Composer's autoloader
require 'PHPMailer\PHPMailerAutoload.php';
$mail = new PHPMailer;

$mail = new PHPMailer(true);                              // Passing `true` enables exceptions
try {
    //Server settings
    $mail->SMTPDebug = 2;                                 // Enable verbose debug output
    $mail->isSMTP();                                      // Set mailer to use SMTP
    $mail->Host = 'smtp.office365.com';  // Specify main and backup SMTP servers
    $mail->SMTPAuth = true;                               // Enable SMTP authentication
    //$mail->UserName = "kuldeep.z.singh@here.com";                 // SMTP username
    //$mail->Password = "9869wW**";                           // SMTP password
    $mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
    $mail->Port = 587; 
    $mail->AuthType = 'XOAUTH2';
    $mail->oauthUserEmail = 'nishant.jinde@here.com';
    //Obtained From Google Developer Console
   $mail->oauthClientId = "6bc358c8-8c1d-4377-804d-91ae470e59b6";
   $mail->oauthClientSecret="Nish@nt0611";
    $mail->oauthRefreshToken="OAQABAAAAAACEfexXxjamQb3OeGQ4Gugv2vyOa-hl0LCGkIS6brsO72vgNQ1KRNvlHbc9rpjE0O8P3144uKvfkGgBYsGm0CBKTSACZm_Pj9MzYB3Ntz8Nk1ZF5gvHx3qWNDqEXFw7WSTZlpft4beVUz_JTz7oIJ7rp_HmHS5n9vsGgCZQlCsHDd8naCjjHhjvszrCMRic7EfAvZcaO4GcG5qcGzZXmDajr5RZpGMOhQ64b2qWA1K8xmbQooeTrIW0TqYOTQRL1WEEzCkj_hwc6euFKB1Mt40miWxh1iUuU7GIFSJRd3aeaWaGWLwvvTxXBwYa_jEMAdGOZko9m78Y9uxkuXVnSEWG1r_80WIuP-X6n_rmpRckH8g828uZGDswdmSDpHmtNEn_7tKTdw9envlkdUw8X2GvWjVsWnMgWSaEY9gdi1mQPDGzf11uJUDSQ2SP3xVZ8ReHchhXPoeDklMTKPDQezv-6DGMv7ziJMXADlUnRUV4bikXP9cXRDXFflIZjUmntSRxHDdx5Iubs3asFs81qyxYBNa9J4AqFbbNnHnZcfQXT3pPVDVFdCK0vBBBFvyM_R8di6vDrnSg_ObdlvwzlOKXK91eFNBmDd-L8_hx7TLiiosQ2ggO6ggev3aCTajYDmCEd3LW_ZSi-dAWeJqNGGuEQPcR76vHZqPeeqdagHg4v2o6SJF2UMwy4h1ChhuZ5xmcfB8899Gb-E4LLJiXZcBAOq78s2Di6_Oo3jEM8P_pXDL--euP1W8Y_I6wReM7SrBC0b9IAFNaHSneb6yrcaruzKN1hytdGEC7Bhplzb6tRXokWKOm1M-vJ-BcKK653tG8YGiOKzoYiJ-d_Z5krnI5YqLQZkZXp8OujWicqcamH8v0KBawpScmVUSEhX7sCPkgAA";
    
    //Recipients
    $mail->setFrom('nishant.jinde@here.com', 'Mailer');
    $mail->addAddress('nishant.jinde@here.com', 'Joe User');     // Add a recipient
    
    //Content
    $mail->isHTML(true);                                  // Set email format to HTML
    $mail->Subject = 'Here is the subject';
    $mail->Body    = 'This is the HTML message body <b>in bold!</b>';
    $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

    $mail->send();
    echo 'Message has been sent';
} catch (Exception $e) {
    echo 'Message could not be sent. Mailer Error: ', $mail->ErrorInfo;
}
?>