<?php

include("../includes/connect.php");
session_start();
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$username = $_POST['name'];
$password = $_POST['pass'];
$encrypted_password = md5($password);


$query = "SELECT * FROM signup WHERE e_id='$username' and password='$encrypted_password'";

$result = mysqli_query($conn, $query) or die(mysqli_error($conn));
$count = mysqli_num_rows($result);
while($row = mysqli_fetch_assoc($result)) {
	$name = $row['e_name'];
}

if ($count == 1){
//$_SESSION['username'] = $username;
	$_SESSION['username'] = $username;
	$_SESSION['is_doctor'] = 0;
	$_SESSION['name'] = $name;
	header("Refresh:0,url=process_personal_details.php");
	//echo "Valid user";
}else{

$fmsg = "Invalid Login Credentials.";
header("location:../index.php");

}

?>


