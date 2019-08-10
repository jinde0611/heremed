<?php
include("includes/user_header.php");
$uname1 = $_SESSION['username'];
$id=$_REQUEST['id'];
$query = "SELECT * FROM form_details AS a, file_upload as b WHERE b.claim_id=$id AND b.claim_id=a.f_id ";
$result = $conn->query($query);
$i = 1;

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
.personal-data-table tr, .personal-data-table td,.personal-data-table th{
  border: 1px black solid;
}
table{
  width:700px;
}
th{
  text-align:center;
  
}
</style>
<div class="col l10 offset-l2">

    <div class=" row " >
    <h6 style="text-decoration:underline; font-weight:700;">SCHEDULE OF EXPENSES INCURRED AND BEING CLAIMED BY THE CLAIMANT</h6>
      <div class="col l10" >

      	<table class=" personal-data-table" >
        <tbody>
          <tr>
          <tr>
            <th rowspan="2">Sr.No</th>
            <th colspan="2">  Receipt </th>
            <th rowspan="2">Nature of Expenditure</th>
            <th rowspan="2">Amt. claimed ( ` )</th>
            
            </tr>
            <tr>
            <th> NO. </th>
            <th>Date</th>
            </tr>
            <?php

        while($row = mysqli_fetch_assoc($result)) :

      ?>
            <td><?= $i; ?></td>
            <td><?=  $row["receipt_no"]; ?></td>
            <td><?=  $row["receipt_date"]; ?></td>
            <td><?=  $row["f_expenditure"]; ?></td>
            <td><?=  $row["f_amount"]; ?></td>
            </tr>
            <?php $i++;
endwhile;
?>
           
            
   			
        </tbody>
      </table>
      
        <h6 style="font-weight:700;">•	Discharge Card incorporating detailed Discharge Summary and Case History is mandatory to be <br>submitted separately with the Claim Form.</h6>
        <br><br><br><br><br>
        
        <h6 style="text-decoration:underline; font-weight:700;">Signature of the Insured Person </h6>
        <br><br><br><br>
        <h6 style="font-weight:700;" >W.E.F. 16/08/2011, all Health claims will be paid through ELECTRONIC TRANSFER (NEFT/RTGS), hence it is mandatory to give following details to TPA :</h6>
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
