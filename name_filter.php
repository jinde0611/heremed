<?php
include 'includes/doc_header.php';
if ($_SESSION['is_doctor']==0) {
header("location:error.php");
exit();
?>
<?php
}else{

?>
<div class="row " style="position: relative; margin-top:5%;">
	<div class="col l8 offset-l2">
	<ul class="collapsible" data-collapsible="accordion">
    <li>
		<div class="collapsible-header active teal white-text"><i class="material-icons">search</i>Search Claims
		</div>
		<div class="collapsible-body ">

			<div class=" row ">
				<div class="col l12">
				<form action="process/process_name_filter.php" method="post">
				<label for="search_name">Enter Username</label>
				<input id="receipt_no" name="search_name" type="text" class="validate" required>
					<div class="input-field col s12 l11">
					<button id="next1" class="btn waves-effect waves-light" type="submit">Submit
					<i class="material-icons right">send</i>
				</form>
				</div>
			</div>
		</div>
	</div>

<?php
}
?>

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
