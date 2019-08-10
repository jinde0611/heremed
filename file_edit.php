<?php
include("includes/user_header.php");
include("includes/connect.php");
$uname = $_SESSION['username'];

$id=$_SESSION["file"];
print_r($id);
$query = "SELECT * FROM file_upload WHERE file_id = $id";
$result = $conn->query($query);
$row = mysqli_fetch_assoc($result);
$claim=$row['claim_id'];

?>
<div class="div">
    <div class="row" style="margin-top:30px;">
        <div class="col s12 m5 l10 offset-l1">
            <div class="teal" style="padding:5px;">
                <span class="white-text center"><h5 class="thin">Documents Upload</h5>
                </span>
            </div>
        </div>
    </div>
    <div   class="row" style="margin-top:10px;">
	    <div class="col s12 m5 l10 offset-l1">
			<div class="card-panel ">
				<div class="row">
					<form method="post" action="process/process_file_edit.php?id=<?php echo $row["file_id"]; ?>" enctype="multipart/form-data">
                        <div class="row">
                            <div class="row">
                                <div class="input-field col s10 m5 offset-l1 ">
                                    <i class="material-icons prefix">receipt</i>
                                    <input value="<?php echo $row['receipt_no']; ?>" id="receipt_no" name="receipt_no" type="text" class="validate" required>
                                    <label for="receipt_no">Receipt No </label>
                                </div>
                                <div class="input-field col s10 m5 ">
                                    <i class="material-icons prefix">date_range</i>
                                    <input value="<?php echo $row['receipt_date']; ?>" id="receipt_date" name=receipt_date type=text class="validate datepicker" required>
                                    <label for="1">Receipt No </label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field  col s10 m5 offset-l1">
                                    <i class="material-icons prefix">account_circle</i>
                                    <input value="<?php echo $row['f_expenditure']; ?>" id="f_expenditure" name="f_expenditure" type="text" class="validate" required>
                                    <label for="f_expenditure">Name of Expenditures</label>
                                </div>
                                <div class="input-field  col s10 m5 ">
                                    <i class="material-icons prefix">account_circle</i>
                                    <input value="<?php echo $row['f_amount']; ?>" id="f_amount" name="f_amount" type="text" class="validate" required>
                                    <label for="f_amount">Amount Claimed</label>
                                </div>
                            </div>
                            <div class= "row">
                                <div class="col s10 m5 offset-l1">
                            
                                    <input  class="with-gap" id="normal" name="opd_type" type="radio" value="Normal" checked/>   
                                    <label for="normal">Normal OPD</label>
                                    <p></p>
                                    
                                    <input  class="with-gap" id="dental" name="opd_type" type="radio" value="Dental" />  
                                    <label for="dental">Dental OPD</label>
                                    
                                </div>
                                <div class = "file-field input-field col s10 m5">
                                <div >
                                <input type="hidden" value="<?php echo $row['claim_id']; ?>" name="claim" />
                                </div>
                                    <div class = "btn ">
                                        <span>Browse</span>
                                        <input  type = "file" name="uploaded"  multiple="multiple"  />
                                    </div>
                                    <div class = "file-path-wrapper">
                                        <input value="<?php echo $row['file_path']; ?>" class = "file-path validate" type = "text" placeholder = "Upload file" />
                                    </div>
                                </div>
                            </div>				
                            <div class="input-field center col s12 l11">
                                <button id="next1" class="btn waves-effect waves-light" type="submit">Update
                                <i class="material-icons right">send</i>
                                </button>
                            </div> 
                        </div>
			        </form>
                </div>
            </div>
    </div>
</div>

</div>
<script >
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