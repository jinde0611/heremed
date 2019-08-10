<?php
if(isset($_POST['Submit'])) {
  // do code
  // submitted to server through form
// build the email message by using
// info received by the HTML form
$msg = 'Name: ' .$_POST['name'] ."\n" 
.'Email: ' .$_POST['email'] ."\n"
.'Comment: ' ."\n" .$_POST['comment'];

// send email using PHP's built in 
// command, mail()
mail('nishantvjinde06@gmail.com', 
'Sample Comments', $msg);

// redirect to the thank you page
header('location: success.php');

// exit this script - just to make sure nothing else gets run
exit(0);
} else {
  // do other code block
  header('location: error.php');
}

?>