<?php

include("../includes/connect.php");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$query1 = "SELECT n_id FROM new_assurance ";

$id = 0;
//$retval = mysqli_query($conn, $query );
$result1 = $conn->query($query1);
while($row = mysqli_fetch_assoc($result1))
	{
        $id = $row["n_id"];
  }



$n_name = $_POST['n_name'];
$n_bank_name = $_POST['n_bank_name'];
$n_account_no = $_POST['n_account_no'];
$n_ifsc = $_POST['n_ifsc'];
$n_acc_type = $_POST['n_acc_type'];
$n_bank_address = $_POST['n_bank_address'];
$n_mobile = $_POST['n_mobile'];
$n_email = $_POST['n_email'];



$sql = "INSERT INTO new_assurance VALUES (($id+1),'$n_name','$n_bank_name','$n_account_no','$n_ifsc','$n_acc_type','$n_bank_address','$n_mobile','$n_email')";

if (mysqli_query($conn, $sql)) {
  header("Refresh:0,URL=../show_personal_details.php");
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);

?>


