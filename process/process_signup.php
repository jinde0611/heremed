<?php

include("../includes/connect.php");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
session_start();
$e_name = $_POST['e_name'];
$e_id = $_POST['e_id'];
$emp_id = $_POST['emp_id'];
$username = $_POST['username'];
$ido_location = $_POST['ido_location'];
$password = $_POST['password'];
$encrypted_password = md5($password);

$sql = "INSERT INTO signup (`e_name`, `e_id`, `emp_id`, `username`, `ido_location`, `password`) VALUES ('$e_name','$e_id','$emp_id','$username','$ido_location','$encrypted_password')";


if (mysqli_query($conn, $sql)) {
  header("Refresh:0,URL=../index.php");
    //echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
mysqli_close($conn);
?>