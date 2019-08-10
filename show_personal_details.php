<?php
include("includes/user_header.php");
$uname1 = $_SESSION['username'];
//echo $uname1;

$query = "SELECT * FROM new_assurance WHERE n_email = '$uname1' ";
//$query1 ="SELECT SUM(f_amount) FROM file_upload where f_name = '$uname1' AND Verifiation_status ='1'";
$query1 ="SELECT f_name , SUM(f_amount) FROM `file_upload` where f_name='$uname1' AND Verifiation_status ='1' AND opd_type='Normal'";
   $query2 ="SELECT f_name , SUM(f_amount) FROM `file_upload` where f_name='$uname1' AND Verifiation_status ='1' AND opd_type='Dental'";
//$retval = mysqli_query($conn, $query );
$result = $conn->query($query);
$result1 = $conn->query($query1);
$result2 = $conn->query($query2);
while($row1 = mysqli_fetch_assoc($result1)) {
	$f_amount =$row1["SUM(f_amount)"];
}
while($row2 = mysqli_fetch_assoc($result2)) {
	$f_amount1 =$row2["SUM(f_amount)"];
}
while($row = mysqli_fetch_assoc($result))
	{
        $n_name =   $row["n_name"];
        $n_bank_name = $row["n_bank_name"];
        $n_account_no=$row["n_account_no"];
        $n_ifsc=$row["n_ifsc"];
        $n_acc_type=$row["n_acc_type"];
        $n_bank_address=$row["n_bank_address"];
        $n_mobile=$row["n_mobile"];
        $n_email=$row["n_email"];
   }

?>

<div class="row " style="position: relative; margin-top:3%;">
<div class="col l8 offset-l2">
<ul class="collapsible center" data-collapsible="accordion">
    <li>
      <div class="collapsible-header active teal white-text"><i class="material-icons">perm_identity</i>Personal Information</div>
      

      <div class=" row ">
      <div class="col l12">

      	<table>

        <tbody>
          <tr>

            <tr>
            <td> Full Name : </td>
            <td><?= $n_name;?></td>
            </tr>

            <tr>
            <td> Bank Name : </td>
            <td><?= $n_bank_name;?></td>
            </tr>

            <tr>
            <td> Account No : </td>
            <td><?= $n_account_no;?></td>
            </tr>

   			<tr>
            <td> IFSC Code : </td>
            <td><?= $n_ifsc;?></td>
            </tr>

            <tr>
            <td> Account Type : </td>
            <td><?= $n_acc_type;?></td>
            </tr>

            <tr>
            <td> Bank Address  : </td>
            <td><?= $n_bank_address;?></td>
          </tr>

           <tr>
            <td> Mobile No : </td>
            <td><?= $n_mobile;?></td>
          </tr>
           <tr>
            <td> Email : </td>
            <td><?= $n_email;?></td>
          </tr>
		  <tr>
			<td> Total OPD Amount Claimed </td>
			<td>₹<?= $f_amount;?> (Limit ₹10,000)</td>
		  </tr>
		  <tr>
			<td> Total Dental Amount Claimed </td>
			<td>₹<?= $f_amount1;?> (Limit ₹10,000)</td>
		  </tr>
        </tbody>
      </table>
      <a class=" waves-effect waves-light btn" href="user_data.php">Print</a>
      </div>
      </div>
      </div>
    </li>
    </ul>
  </div>

  </div>


  <script type="text/javascript">
  	  $(document).ready(function(){
    $('.collapsible').collapsible();
  });
  	   $('.collapsible').collapsible({
    accordion: false, // A setting that changes the collapsible behavior to expandable instead of the default accordion style
    onOpen: function(el) { alert('Open'); }, // Callback for Collapsible open
    onClose: function(el) { alert('Closed'); } // Callback for Collapsible close
  });

     </script>
<?php
include("includes/footer.php");
?>
