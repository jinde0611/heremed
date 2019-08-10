<?php
include("includes/user_header.php");
$uname1 = $_SESSION['username'];
//echo $uname1;

$query = "SELECT * FROM dependents WHERE u_email = '$uname1' ";
$query1="SELECT * FROM form_details where user_id = '$uname1' ";
$result1=$conn->query($query1);
$result = $conn->query($query);

while($row = mysqli_fetch_assoc($result))
	{
        
        $d_name =   $row["d_name"];
        $relation_name = $row["relation_name"];
        $d_relation=$row["d_relation"];
        $d_occupation=$row["d_occupation"];
        $d_address=$row["d_address"];
        $d_age=$row["d_age"];
        $d_mobile=$row["d_mobile"];
        
   }
while($row1 = mysqli_fetch_assoc($result1)){
  $user_id =   $row1["user_id"];
  $illness_nature = $row1["illness_nature"];
  $treatment_st_date =   $row1["treatment_st_date"];
  $treatment_end_date =   $row1["treatment_end_date"];
  $doctor_name =   $row1["doctor_name"];
  $doctor_address =   $row1["doctor_address"];
  $doctor_phone_no =$row1["doctor_phone_no"];
  $registration_no =$row1["registration_no"];
}
?>
<div class="row " style="position: relative; margin-top:3%;" id="personal-form">
  <div class="row">
  <div class="col l1 offset-l2 center-align">
      <img src="img/download.png" class="logo-image">
    </div>
    <div class="col l6 center-align">
    <p class=""><h5 class="logo-header">THE NEW INDIA ASSURANCE COMPANY LIMITED</h5>
        D.O 110800, JAIN TOWER,10<sup>TH</sup> & 11<sup>TH</sup> FLOOR, 17 MATHEW ROAD.,<br>      
        OPP.ROXY CINEMA, OPERA HOUSE, MUMBAI, 400004.</p>
      <hr>
    </div>
  </div>
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
