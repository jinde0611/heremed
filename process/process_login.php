<?php

include("../includes/connect.php");
session_start();
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$username = $_POST['name'];
$password = $_POST['pass'];
$encrypted_password = md5($password);


$query = "SELECT * FROM doctors WHERE username='$username' and password='$encrypted_password'";

$result = mysqli_query($conn, $query) or die(mysqli_error($conn));
$count = mysqli_num_rows($result);
while($row = mysqli_fetch_assoc($result)) {
	$name = $row['dname'];
}
if ($count == 1){
//$_SESSION['username'] = $username;
	$_SESSION['username'] = $username;
	$_SESSION['is_doctor'] = 1;
	$_SESSION['name'] = $name;
	header("Refresh:0,url=../search_claims.php");
	//echo "Valid user";
}else{

$fmsg = "Invalid Login Credentials.";
header("Refresh:0,url=../login.php");
}


?>
