<?php
include("includes/user_header.php");
$uname1 = $_SESSION['username'];
//echo $uname1;
$query = "SELECT * FROM new_assurance WHERE n_email = '$uname1' ";
$result = $conn->query($query);
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

<div class="row "style="position: relative; margin-top:3%;" id="personal-form">

<div class="row">
<div class="col l1 offset-l2 center-align">
        <img src="img/download.png" class="logo-image">
       
    </div>
    <div class="col l6 center-align">
        <p class=""><h5 style="font-weight:800; margin-top:25px; font-size:20px; margin-right:10px;" class="logo-header">THE NEW INDIA ASSURANCE COMPANY LIMITED</h5>
        D.O 110800, JAIN TOWER,10<sup>TH</sup> & 11<sup>TH</sup>FLOOR, 17 MATHEW ROAD.,<br> 
        OPP.ROXY CINEMA, OPERA HOUSE, MUMBAI, 400004.</p>
       <hr>
    </div>
   
</div>
<style type="text/css">
.personal-data-table tr, .personal-data-table td{
  border: 1px black solid;
}
</style>
<div class="col l7 offset-l2">

    <div class=" row ">
      <div class="col l10">

      	<table class="personal-data-table">
        <tbody>
          <tr>
          <tr>
            <td>1</td>
            <td>  Name of the Account holder : </td>
            <td>:</td>
            <td><?= $n_name;?></td>
            </tr>
            <tr>
            <td>2</td>
            <td> Bank name : </td>
            <td>:</td>
            <td><?= $n_bank_name;?></td>
            </tr>
            <tr>
            <td>3</td>
            <td> full Bank Account no. (without - any special characters)  : </td>
            <td>:</td>
            <td><?= $n_account_no;?></td>
            </tr>
   			<tr>
            <td>4</td>
            <td> IFSC Code : </td>
            <td>:</td>
            <td><?= $n_ifsc;?></td>
            </tr>
            <tr>
            <td>5</td>
            <td> Account type (savings/current) : </td>
            <td>:</td>
            <td><?= $n_acc_type;?></td>
            </tr>
            <tr>
            <td>6</td>
            <td> Bank address : </td>
            <td>:</td>
            <td><?= $n_bank_address;?></td>
          </tr>
           <tr>
           <td>7</td>
            <td> Mobile No : </td>
            <td>:</td>
            <td><?= $n_mobile;?></td>
          </tr>
           <tr>
           <td>8</td>
            <td> Email : </td>
            <td>:</td>
            <td><?= $n_email;?></td>
          </tr>
        </tbody>
      </table>
      <h6 style="font-size:10px; font-weight:800;">Attach copy of cancelled cheque leaf to ensure accuracy of details provided.</h6>
      </div>
      </div>
      </div>
  </div>
  <div class="center-align">
    <a class="waves-effect waves-light btn" onclick="printDiv()" style="overflow: hidden;">Print</a>
</div>
  </div>
  
  <br><br>


  <script type="text/javascript">
  $(document).ready(function() {
    
});

function printDiv() {
        var printContents = document.getElementById('personal-form').innerHTML;
        var originalContents = document.body.innerHTML;
        document.body.innerHTML = printContents;
        setTimeout(() => {
            window.print();
            document.body.innerHTML = originalContents;
        }, 100);
        
        
    }
     </script>


<?php
include("includes/footer.php");
?>
