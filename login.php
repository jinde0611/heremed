 <?php
include("includes/header.php");

?>

<link rel="stylesheet" type="text/css" href="style/css/style1.css">
<div class="login-box" style="margin-top:23px">
<img src="img/doctor1.png" class="avatar">
<h1>Admin Login</h1>
<form method="post" action="process/process_login.php">
<p>Username</p>
<input type="text" name="name" placeholder="Enter Username">
<p>Password</p>
<input type="password" name="pass" placeholder="Enter Password">
<input type="submit" name="submit" value="Login">

</form>
</div>

<style type="text/css">
   body {
   background-image: url("img/download.jpg");

}

</style>
<?php
include("includes/footer.php");
?>
