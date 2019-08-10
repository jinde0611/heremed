<?php

include("../includes/connect.php");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$search_name = $_POST['search_name'];

$query = "SELECT * From file_upload WHERE f_name in (SELECT e_id FROM signup WHERE ido_location ='$search_name')";
$count = 0;

if ($result = $conn->query($query)) {
  $count = mysqli_num_rows($result);
  
}
session_start();
if ($count <= 0) {
  header("location:not_found.php");
  exit();
}else{
  $_SESSION['search_name'] = $search_name;
  header("location:../history1.php");
}

mysqli_close($conn);

?>