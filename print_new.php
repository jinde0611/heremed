<?php
include("includes/user_header.php");
$uname1 = $_SESSION['username'];
//echo $uname1;
$id=$_REQUEST['id'];
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

$query2="SELECT * FROM form_details where f_id = $id and user_id='$uname1' ";
$result2=$conn->query($query2);

  
      
   while($row2 = mysqli_fetch_assoc($result2)){
    $patient_relation=$row2["patient_relation"];
     $user_id =   $row2["user_id"];
     $illness_nature = $row2["illness_nature"];
     $treatment_st_date =   $row2["treatment_st_date"];
     $treatment_end_date =   $row2["treatment_end_date"];
     $doctor_name =   $row2["doctor_name"];
     $doctor_address =   $row2["doctor_address"];
     $doctor_phone_no =$row2["doctor_phone_no"];
     $registration_no =$row2["registration_no"];
   }
  print_r("$patient_relation");
$query1 = "SELECT *FROM dependents WHERE d_relation = '$patient_relation' ";
$result1 = $conn->query($query1);
while($row1 = mysqli_fetch_assoc($result1))
   {
       
       $d_name =   $row1["d_name"];
       $relation_name = $row1["relation_name"];
       $d_relation=$row1["d_relation"];
       $d_occupation=$row1["d_occupation"];
       $d_address=$row1["d_address"];
       $d_age=$row1["d_age"];
       $d_mobile=$row1["d_mobile"];
       
  }
   $query3 = "SELECT * FROM file_upload WHERE claim_id=$id AND f_name='$uname1'" ;
$result3 = $conn->query($query3);
$i = 1;

?>

<div class="row "style="position: relative; margin-top:3%;" id="personal-form">
    <?php 
    include("header_print.php");?>
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
    </div></br></br></br></br></br></br></br></br></br></br></br></br></br>
    <?php 
    include("header_print.php");?>
    <br>
    <style type="text/css">
.personal-data-table tr, .personal-data-table td{
  border: 1px black solid;
}
</style>
    <div class="col l8 offset-l1 "><div>
      <p class="center-align" style="padding:10px;border:3px solid black; margin-right:20px; font-size:25px">OPD CLAIM FORM</p>
    </div>
    <h6>Issuance of this form does not amount to admission of any liability under the claim on the part of the <br>Insurers.</h6>
    <h6>Please give the following information correctly and completely to enable the Company .to process <br>your
    claim promptly;</h6>
    <br>
  </div>
  <?=  $row1["patient_relation"]; ?>
  <div class="col l8 offset-l2">
    <div class=" row ">
      <div class="col l10">
      	<table class="personal-data-table"  >
        <tbody>
          <tr>
            <td >1</td>
            <td colspan="2"> Name of the Insured (in whose name policy is issued) </td>
            <td>:</td>
            <td><?= $d_name;?></td>
          </tr>
          <tr> 
            <td >2</td>
            <td colspan="2"> Details of the Insured person (in respect of
            whom claim is made) </td>
            <td>:</td>
            <td><?= $relation_name;?></td>
          </tr>
          <tr>
            <td></td>
            <td style="width: 3%;">(a)</td>
            <td >Name & relationship to the Insured </td>           
            <td>:</td>
            <td><?= $d_relation;?></td>
          </tr>
          <tr>
             <td></td>
            <td style="width: 2%;">(b)</td>
            <td> Present completed age </td>
            <td>:</td>
            <td><?= $d_age;?></td>
            </tr>
            <tr>
            <td></td>
            <td style="width: 2%;">(c)</td>
            <td> Occupation </td>
            <td>:</td>
            <td><?= $d_occupation;?></td>
            </tr>
            <tr>
            <td></td>
            <td style="width: 2%;">(d)</td>
            <td> Residential address</td>
            <td>:</td>
            <td><?= $d_address;?></td>
          </tr>
           <tr>
           <td>3</td>
            <td colspan="2"> Policy no.</td>
            <td>:</td>
            <td>11080034170400000005</td>
          </tr>
           <tr>
           <td>4</td>
            <td colspan="2"> Nature of disease/illness contracted or
injury suffered
</td>
            <td>:</td>
            <td><?= $illness_nature;?></td>
          </tr>
          <tr>
           <td>5</td>
            <td colspan="2"> Date of injury sustained or Diseases/illness
first detected

</td>
            <td>:</td>
            <td></td>
          </tr>
          <tr>
           <td>6</td>
           <td style="width: 2%;">(a)</td>
            <td > Name & address of the attending
Medical Practitioner
</td>
            <td>:</td>
            <td></td>
          </tr>
          <tr>
          <td></td>
           <td style="width: 2%;">(b)</td>
            <td> Registration no.</td>
            <td>:</td>
            <td></td>
          </tr>
          <tr>
          <td></td>
           <td style="width: 2%;">(c)</td>
            <td> Qualification & Tel. no.</td>
            <td>:</td>
            <td></td>
          </tr>
          <tr>
          <td>7</td>
           <td style="width: 2%;">(a)</td>
            <td> Name & address of the
Hospital/Nursing Home
</td>
            <td>:</td>
            <td></td>
          </tr>
          <tr>
          <td></td>
           <td style="width: 2%;">(b)</td>
            <td> Registration no.</td>
            <td>:</td>
            <td></td>
          </tr>
          <tr>
          <td></td>
           <td style="width: 2%;">(c)</td>
            <td> Date of Admission</td>
            <td>:</td>
            <td></td>
          </tr>
          <tr>
          <td></td>
           <td style="width: 2%;">(d)</td>
            <td> Date of Discharge</td>
            <td>:</td>
            <td></td>
          </tr>
          <tr>
           <td>8</td>
            <td colspan="2"> If the claim is for OPD, please indicate</td>
            <td>:</td>
            <td></td>
          </tr>
          <tr>
          <td></td>
           <td style="width: 2%;">(a)</td>
            <td> Date of commencement of treatment</td>
            <td>:</td>
            <td><?= $treatment_st_date;?></td>
          </tr>
          <tr>
          <td></td>
           <td style="width: 2%;">(b)</td>
            <td> Date of completion of treatment</td>
            <td>:</td>
            <td><?= $treatment_end_date;?></td>
          </tr>
          <tr>
          <td></td>
           <td style="width: 2%;">(c)</td>
            <td> Name & Address of attending Medical
Practitioner
</td>
            <td>:</td>
            <td><?= $doctor_name;?><br><?= $doctor_address;?><br></</td>
          </tr>
          <tr>
           <td>9</td>
            <td colspan="2"> Telephone no.</td>
            <td>:</td>
            <td><?= $doctor_phone_no;?><br></</td>
          </tr>
          <tr>
           <td>10</td>
            <td colspan="2"> Registration no.</td>
            <td>:</td>
            <td><?= $registration_no;?><br></</td>
          </tr>
        </tbody>
      </table>
      <div class="col s11 offset-l1">
      <h6 class="center-align">I have incurred on the treatment of Disease/illness/accident referred of above, the expenses as per the _________ given by me in the Schedule of Expenses given overleaf.</h6><br><br>
<h6 class="center-align ">I hereby warrant the truth of foregoing particulars in every respect and I agree that if I have made or shall make any false or untrue statements, suppression or concealment, my right to claim reimbursement of the said expenses shall be absolutely forfeited. I further declare that, in respect of the above treatment, no benefits are admissible under any other Medical Scheme or Insurance.
Dated at ____________ this ____________ day of ____________ 20
</h6>
<br><br><br><br><br></div>
<h6 class="logo-header">Signature of the Claimant</h6>
</div>

      </div>
      </div>
      
      <?php 
    include("header_print.php");?>
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

        while($row3 = mysqli_fetch_assoc($result3)) :

      ?>
            <td><?= $i; ?></td>
            <td><?=  $row3["receipt_no"]; ?></td>
            <td><?=  $row3["receipt_date"]; ?></td>
            <td><?=  $row3["f_expenditure"]; ?></td>
            <td><?=  $row3["f_amount"]; ?></td>
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
