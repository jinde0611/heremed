<?php

session_start();


$e_id=$_REQUEST['id'];
define('BASE_URL', '../');
$folder = BASE_URL."Reports/";

$claim_id=$_POST['claim'];
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



$sql ="UPDATE file_upload SET receipt_no='".$receipt_no."',receipt_date='".$receipt_date."',f_expenditure='".$f_expenditure."',f_amount='".$f_amount."',f_name='".$f_name."',file_path='".$file_path."',r_date='".$date."',claim_id='".$claim_id."',opd_type='".$opd_type."' WHERE file_id=$e_id";


if (mysqli_query($conn, $sql)) {
 header("Refresh:0,URL=../status.php");
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
