<?php
include("includes/user_header.php");
include("includes/connect.php");

//session_start();
$claim_id= isset($_SESSION['claim_id'])?$_SESSION['claim_id']:" ";
if($claim_id){
$query = "SELECT * FROM file_upload WHERE claim_id='$claim_id' ";
//echo $claim_id;
$result = mysqli_query($conn, $query) or die(mysqli_error($conn));

}

?>

<!-- Modal Structure -->
<div class = "overlay" style="background: rgba(0,0,0,.58);position: fixed;width: 100%;height: 100%;z-index: 1;display:none;">
</div>
<div id="modal1" class="modal fade" style="margin-top:23px;">
	<div class="modal-content" style="margin-top:-23px;">
		<div class="row pinfo_hide">
			<div class="col s12 m12 l12">
				<div class="teal" style="padding:2px;">
				<span class="white-text center"><h5 class="thin">Documents Upload</h5>
				</span>
				</div>
			</div>
		</div>
		<div   class="row" style="margin-top:-10%;">
			<div class="col s12 m12 l12">
				<div class=" ">
					<div class="row">
					<form method="post" action="process/process_add_report.php" enctype="multipart/form-data">
						<div class="row">
							<div class="input-field col s12 m6 l6 ">
							<i class="material-icons prefix">receipt</i>
							<input id="receipt_no" name="receipt_no" type="text" class="validate" required>
							<label for="receipt_no">Receipt No </label>
							</div>
							<div class="input-field col s12 m6 l6 ">
							<i class="material-icons prefix">date_range</i>
							<input id="receipt_date" name="receipt_date" type="date" class="validate datepicker"required>
							<label for="receipt_date">Receipt Date</label>
							</div>
						</div>
						<div class="row">
							<div class="input-field  col s12 m6 l6 ">
							<i class="material-icons prefix">account_circle</i>
							<input id="f_expenditure" name="f_expenditure" type="text" class="validate" required>
							<label for="f_expenditure">Name of Expenditures</label>
							</div>
							<div class="input-field  col s12 m6 l6 ">
							<i class="material-icons prefix">account_circle</i>
							<input id="f_amount" name="f_amount" type="text" class="validate" required>
							<label for="f_amount">Amount Claimed</label>
							</div>
						</div>
						<div class= "row">
						<div class="col s12 m6 l6 ">
						 
						<input class="with-gap" id="normal" name="opd_type" type="radio" value="Normal" checked/>   
						<label for="normal">Normal OPD</label>
                        
						
						<input class="with-gap" id="dental" name="opd_type" type="radio" value="Dental" />  
						<label for="dental">Dental OPD</label>
                        
						</div>
						<div class = "file-field input-field col s12 m6 l6">
							<div class = "btn ">
							<span>Browse</span>
							<input type = "file" name="uploaded"  multiple="multiple" required />
							</div>
							<div class = "file-path-wrapper">
							<input class = "file-path validate" type = "text" placeholder = "Upload file" />
							</div>
						</div>
						</div>
					</div>
				</div>
				<div class="input-field center ">
				<button id="next1" class="btn waves-effect waves-light" type="submit">Upload
				<i class="material-icons right">send</i>
				</button>
				<button id="close" class="btn waves-effect waves-light" type="reset">Close
				<i class="material-icons right">close</i>
				</button>
				</div>
				</form>
</div>
</div>
</div>
</div>

<div class="row pinfo_hide" style="margin-top:50px;">
<div class="col s12 m12 l8 offset-l2">
<div class="card-panel z-index-5 teal">
<span class="white-text center"><h5 class="thin">Documents Upload</h5>
</span>
</div>
</div>
</div>
<div   class="row pinfo_hide" style="margin-top:-10%;">
<div class="col s12 m5 l8 offset-l2">
<div class="card-panel ">
<br>

<?php

while($rows = mysqli_fetch_assoc($result)){ ?>
<span class="" style="padding:20px;border:2px solid black; border-radius: 10px;margin-right:20px;"><?php echo $rows["f_expenditure"]; ?></span>
<?php } ?>
<!-- Modal Trigger -->
<br><br><br>
<button data-target="modal1" id = "modal-btn" class="btn modal-trigger">Add document</button>

</div>
</div>
</div>





<script >

$('#modal-btn').click (function(){
$('.overlay').show();

$('#modal1').slideDown();
$('#modal1').css('z-index',2);

});

$('#close').click (function(){
$('.overlay').hide();
$('#modal1').hide();
})

$(document).ready(function() {
$('.datepicker').pickadate({
selectMonths: true, // Creates a dropdown to control month
selectYears: 15, // Creates a dropdown of 15 years to control year
format: 'dd-mm-yyyy' });
});
</script>

<?php
include("includes/footer.php");
?>
