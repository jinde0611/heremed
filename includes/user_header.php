<?php
  include 'header.php';
  if (!isset($_SESSION['username']))
  {
    header("location:error.php");
    exit();
  }
?>


<div  class="navbar-fixed">
	<nav id="nav" >
		<div class="nav-wrapper col s6 teal" >
			<a href="OPD_Claim.php" class="brand-logo center"><li class="material-icons prefix">group</li>HEREMed</a>
			<a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">Menu</i></a>
			<ul id="nav-mobile" class="right hide-on-med-and-down" >
				<li><a href="process/process_personal_details.php"><?php echo $_SESSION['name']; ?></a></li>
				<li><a href="OPD_claim.php">New Claim</a></li>
				<li><a href="status.php">Status</a></li>
				<li><a href="show_dependents.php">Dependent</a></li>
				
				<li><a href="logout.php">Log Out</a></li>
			</ul>
		</div>
	</nav>
<?php
include("includes/sidebar.php");
?>
</div>

