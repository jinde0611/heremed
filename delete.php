<?php
include("includes/connect.php");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
session_start();
$id=$_REQUEST['id'];
$sql = "DELETE form_details, file_upload FROM form_details INNER JOIN file_upload ON form_details.f_id=file_upload.claim_id WHERE form_details.f_id=$id"; 
if (mysqli_query($conn, $sql)) {
    header("Refresh:0,URL=status.php");
  } else {
      echo "Error: " . $sql . "<br>" . mysqli_error($conn);
  }
  
  mysqli_close($conn);
?>