<?php
include("includes/header.php");

?>
<link rel="stylesheet" type="text/css" href="style/css/style1.css">
<div class="login-box">
<img src="img/icons.jpg" class="avatar">
<h1>Login Here</h1>
<form>
<p>Username</p>
<input type="text" name="name" placeholder="Username">
<p>Password</p>
<input type="password" name="pass" placeholder="Password">
<input type="submit" name="submit" value="Login">
<a href="#">Forget Password</a>
</form>
</div>
<?php
include("includes/footer.php");
?>



<!--<div class="materialContainer">


   <div class="box">

      <div class="title">LOGIN</div>
      <form method="post" action="process/process_user_login.php">
      <div class="input">
         <label for="name">Username</label>
         <input type="text" name="name" id="name">
         <span class="spin"></span>
      </div>

      <div class="input">
         <label for="pass">Password</label>
         <input type="password" name="pass" id="pass">
         <span class="spin"></span>
      </div>

      <div class="button login">
         <button><span>SUBMIT</span> <i class="fa fa-check"></i></button>
      </div>

      <a href="user_reg.php" class="pass-forgot red-text">Register Patient</a>

   </div>
</form>
</div>-->
