<?php
include("includes/header.php");

?>

<div class="row">
<div class="background">
<link rel="stylesheet" type="text/css" href="style/css/style1.css">

<div class="login-box" style="margin-top:23px">
<img src="img/patient.png" class="avatar">
<h1>Employee Login</h1>
<form method="post" action="process\process_user_login.php">
<p>Email ID</p>
<input type="text" name="name" placeholder="Enter Email ID" >
<p>Password</p>
<input type="password" name="pass" placeholder="Enter Password">
<input type="submit" name="submit" value="Login" >
<div class="center"><a href="signup.php">Sign Up</a></div>


</form>
</div>
</div>
</div>

<style>
  
body {
  background-image: url(img/1.jpg);
}
.center{
  color: #2979ff;
  font-size: 14px;
}
.background{
	opacity: 2;
}
</style>


<?php
include("includes/footer.php");
?>
