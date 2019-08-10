<?php

include("../includes/connect.php");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$search_date = $_POST['search_date'];

$query = "SELECT * FROM file_upload WHERE r_date = '$search_date' ";
$count = 0;

if ($result = $conn->query($query)) {
  $count = mysqli_num_rows($result);
}
session_start();
if ($count <= 0) {
  header("location:../not_found.php");
  exit();
}else{
  $_SESSION['search_date'] = $search_date;
  header("location:../history.php");
}

mysqli_close($conn);

?>
