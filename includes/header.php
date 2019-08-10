<?php
  include("connect.php");
  if ($conn->connect_error)
  {
    die("Connection failed: " . $conn->connect_error);
  }
  session_start();
?>

<html>
<head><title>HEREMED</title>
<link type="text/css" href="style/css/materialize.min.css" rel="stylesheet">
<link type="text/css" href="style/css/materialize.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
<link type="text/css" href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.js"integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
<link type="text/css" href="style/css/style.css"  rel="stylesheet">
<script type="text/javascript" src="style/js/materialize.min.js"></script>
<!--
<link type="text/css" href="style/css/style.css"  rel="stylesheet">
<link type="text/css" href="style/css/icon.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>-->



<!-- Optional theme -->
<!-- Latest compiled and minified JavaScript -->
</head>

<?php
  if (!isset($_SESSION['username']))
  {
?>
<body>

<div class="navbar-fixed">
<nav id="nav" >
	<div class=" nav-wrapper col s6  teal" >	
    <a href="index.php" class="brand-logo center "><i class="fa fa-hospital-o">HEREMed</i></a>
    <ul id="nav-mobile" class="right hide-on-med-and-down" >
      <li><a href="login.php">Admin Portal</a></li>
    </ul>
	
    <ul id="nav-mobile" class="right hide-on-med-and-down" >
      <li><a href="find_hospital.php">Find Hospital</a></li>
    </ul>
	<ul id="nav-mobile" class="right hide-on-med-and-down" >
      <li><a href="signup.php">Sign Up</a></li>
    </ul>
	</div>
</nav>
<?php
include("includes/sidebar.php");
?>
</div>

<?php
  }
?>
