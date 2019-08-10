<?php
  include 'header.php';
  if (!isset($_SESSION['username']))
  {
    header("location:error.php");
    exit();
  }
?>

<div class="navbar-fixed">
<nav id="nav" >
	<div class="nav-wrapper col s6 teal">
		
		<a href="search_claims.php" class="brand-logo center"><li class="material-icons prefix">home</li>HEREMed</a>
		<a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">Menu</i></a>
		<ul id="nav-mobile" class="right hide-on-med-and-down " >
			<li><a href="#!"><?php echo $_SESSION['name']; ?></a></li>
			<li><a href="logout.php">Log out</a></li>
		</ul>
	</div>
</nav>

<?php
include("includes/sidebar.php");
?>
</div>
