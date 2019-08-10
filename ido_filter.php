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
					<form action="process/process_ido_filter.php" method="post">
					</br>
						<div class="input-field col s12">
						    <select id="search_name" name="search_name" class="validate "   required  >
				  <option value="" disabled selected>IDO Location</option>
				  <option value="IDO 1">IDO 1</option>
				  <option value="IDO 2">IDO 2</option>
				  <option value="IDO 3">IDO 3</option>
				  <option value="IDO 4">IDO 4</option>
				  <option value="IDO 5">IDO 5</option>
				  <option value="IDO 6">IDO 6</option>
				  </select>
						    <label>Materialize Select</label>
						  </div>
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

<script>
  $(document).ready(function() {
      $('select').material_select();
    });
</script>
<?php
include("includes/footer.php");
?>
