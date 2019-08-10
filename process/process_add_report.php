<?php
include("../includes/connect.php");
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
session_start();
$id = 0;
$query1 = "SELECT file_id FROM file_upload ";
$result1 = $conn->query($query1);
while($row = mysqli_fetch_assoc($result1))
	{
        $id = $row["file_id"];
  }

$claim_id= isset($_SESSION['claim_id'])?$_SESSION['claim_id']:" ";

define('BASE_URL', '../');

$folder = BASE_URL."Reports/";
//echo print_r($_FILES);
$receipt_no = $_POST['receipt_no'];
$receipt_date = $_POST['receipt_date'];
$f_expenditure = $_POST['f_expenditure'];
$f_amount = $_POST['f_amount'];
$opd_type =$_POST['opd_type'];
$date = date("d-m-Y");
$f_name = $_SESSION['username'];
$temp = explode(".", $_FILES["uploaded"]["name"]);
//var_dump($temp);
$newfilename = round(microtime(true)).'.'. end($temp);
$db_path =$folder.$newfilename;
$listtype = array(
'.doc'=>'application/msword',
'.docx'=>'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
'.rtf'=>'application/rtf',
'.pdf'=>'application/pdf');

if ( is_uploaded_file( $_FILES['uploaded']['tmp_name'] ) )
{
if($key = array_search($_FILES['uploaded']['type'],$listtype))
{
  if (move_uploaded_file($_FILES['uploaded']  ['tmp_name'],$folder.$newfilename))
{
include('../includes/connect.php');

$file_path = substr($db_path, 3);



$sql ="INSERT INTO file_upload (file_id,receipt_no,receipt_date,f_expenditure,f_amount,f_name,file_path,r_date,claim_id,opd_type) VALUES (($id+1),'$receipt_no','$receipt_date','$f_expenditure','$f_amount','$f_name','$file_path','$date','$claim_id','$opd_type')";


if (mysqli_query($conn, $sql)) {
 header("Refresh:0,URL=../file_upload.php");
    //echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
}
}
}
else
{
echo "File Type Should Be .Docx or .Pdf or .Rtf Or .Doc";
}

?>
