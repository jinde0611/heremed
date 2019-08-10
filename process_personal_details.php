<?php

include("includes/connect.php");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
session_start();
$uname1 = $_SESSION['username'];

$query = "SELECT * FROM new_assurance WHERE n_email = '$uname1' ";

$result = $conn->query($query) or die(mysqli_error($conn));

if($row = mysqli_fetch_assoc($result))
{

header("location:show_personal_details.php");
}
else{
	header("location:add_personal_details.php");
}

