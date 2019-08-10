<?php

include("../includes/connect.php");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
session_start();
$id = 0;
$query1 = "SELECT f_id FROM form_details ";
$result1 = $conn->query($query1);
while($row = mysqli_fetch_assoc($result1))
	{
        $id = $row["f_id"];
  }


$user_name = $_SESSION['username'];
$f_name = $_POST['f_name'];
$f_relation = $_POST['f_relation'];
$f_nature = $_POST['f_nature'];
$claim_id = $_SESSION['claim_id'];

$user_name1 = $_SESSION['username'];
$p_name = $_POST['p_name'];
$start_date = $_POST['start_date'];
$end_date = $_POST['end_date'];
$f_address = $_POST['f_address'];
$p_telephone = $_POST['p_telephone'];
$r_no = $_POST['r_no'];




$sql = "INSERT INTO form_details (`f_id`,`name`, `patient_relation`,`illness_nature`,`user_id`,`doctor_name`,`treatment_st_date`,`treatment_end_date`,`doctor_address`,`doctor_phone_no`,`registration_no`) VALUES (($id+1),'$f_name','$f_relation','$f_nature','$user_name','$p_name','$start_date','$end_date','$f_address','$p_telephone','$r_no')";

if (mysqli_query($conn, $sql)) {
  $last_id = mysqli_insert_id($conn);
  $_SESSION['claim_id'] = $last_id;
  header("Refresh:0,URL=../file_upload.php");
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);

?>