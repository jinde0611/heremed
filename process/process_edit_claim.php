<?php

include("../includes/connect.php");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
session_start();
$id=$_REQUEST['id'];
$id1=$_REQUEST['id1'];
$user_name = $_SESSION['username'];
$f_name = $_POST['f_name'];
$f_relation = $_POST['f_relation'];
$f_nature = $_POST['f_nature'];

$user_name1 = $_SESSION['username'];
$p_name = $_POST['p_name'];
$start_date = $_POST['start_date'];
$end_date = $_POST['end_date'];
$f_address = $_POST['f_address'];
$p_telephone = $_POST['p_telephone'];
$r_no = $_POST['r_no'];




$sql = "UPDATE  form_details SET name='".$f_name."', patient_relation='".$f_relation."',illness_nature='".$f_nature."',user_id='".$user_name."',doctor_name='".$p_name."',	treatment_st_date='".$start_date."',treatment_end_date='".$end_date."',doctor_address='".$f_address."',doctor_phone_no='".$p_telephone."',registration_no='".$r_no."' WHERE f_id='".$id."'";

if (mysqli_query($conn, $sql)) {
  $last_id = mysqli_insert_id($conn);
  //$_SESSION['claim_id'] = $last_id;
  $_SESSION["file"] = $id1;
  header("Refresh:0,URL=../file_edit.php");
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);

?>