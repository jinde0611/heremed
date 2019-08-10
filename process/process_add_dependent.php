<?php
include("../includes/connect.php");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
session_start();
$id = 0;

$query1 = "SELECT de_id FROM dependents ";
$result1 = $conn->query($query1);
while($row = mysqli_fetch_assoc($result1))
	{
        $id = $row["de_id"];
  }

$user_name = $_SESSION['username'];
$d_name = $_POST['d_name'];
$relation_name = $_POST['relation_name'];
$d_relation = $_POST['d_relation'];
$d_occupation = $_POST['d_occupation'];
$d_address = $_POST['d_address'];
$d_age = $_POST['d_age'];
$d_mobile = $_POST['d_mobile'];


$sql = "INSERT INTO dependents VALUES (($id+1),'$user_name','$d_name','$relation_name','$d_relation','$d_occupation','$d_address','$d_age','$d_mobile')";

if (mysqli_query($conn, $sql)) {
    header("Refresh:0,URL=../show_dependents.php");
      echo "New record created successfully";
  } else {
      echo "Error: " . $sql . "<br>" . mysqli_error($conn);
  }
  
  mysqli_close($conn);



?>