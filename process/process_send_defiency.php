<?php

include("../includes/connect.php");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

//$query = "SELECT * FROM file_upload WHERE r_date = '$search_date' ";
//$result = $conn->query($query);
//$row = mysqli_fetch_assoc($result);


session_start();

$id = $_POST['id'];



$sql = "UPDATE file_upload set Verifiation_status = '2'  where file_id = '$id' ";

if (mysqli_query($conn, $sql)) {
  echo 1;
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
mysqli_close($conn);

?>