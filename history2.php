<?php
include("includes/doc_header.php");
$uname1 = $_SESSION['username'];

if (!isset($_SESSION['search_name']))
  {
?>
<script type="text/javascript">
  alert("You are not allowed here!");
</script>

<?php
  }else
  {
  $search_name = $_SESSION['search_name'];
  $query = "SELECT DISTINCT `f_name` FROM file_upload WHERE f_name = '$search_name' ";

  $query1 = "SELECT * FROM file_upload WHERE f_name = '$search_name' ";
  $query2 ="SELECT f_name , SUM(f_amount) FROM `file_upload` where f_name='$search_name' AND Verifiation_status ='1' AND opd_type='Normal'";
   $query3 ="SELECT f_name , SUM(f_amount) FROM `file_upload` where f_name='$search_name' AND Verifiation_status ='1' AND opd_type='Dental'";

//$retval = mysqli_query($conn, $query );
  $result = $conn->query($query);
  $result1 = $conn->query($query1);
  $result2 = $conn->query($query1);
  $result3 = $conn->query($query2);
  $result4 = $conn->query($query3);
  while($row4 = mysqli_fetch_assoc($result3)) {
  	$f_amount =$row4["SUM(f_amount)"];
  }
  while($row5 = mysqli_fetch_assoc($result4)){
  	$f_amount1 =$row5["SUM(f_amount)"];
  }
  $row2 = mysqli_fetch_assoc($result2);
  $arrayVals = array();
  while($r = mysqli_fetch_assoc($result1))
  {
      $arrayVals[] = $r;
  }
  //var_dump($arrayVals);

  $i = 0;
  $username = "";
  ?>
    <!-- Modal Structure -->
<div class = "overlay" style="background: rgba(0,0,0,.58);position: fixed;width: 100%;height: 100%;z-index: 1;display:none;">
</div>
<div id="modal1" class="modal fade" style="margin-top:23px;">
	<div class="modal-content" style="margin-top:-23px;">
		<div class="input-field center ">
			
				<div class="col s12 m12 l12">
					<div class="teal" style="padding:2px;">
						<span class="white-text center"><h5 class="thin">Deficiency Letter</h5>
						</span>
				</div>
			</div>
		</div>
	</div>
</div>
  <div class="row" style="margin-top:5%;">
  <div class="col s12 m5 l10 offset-l1">
  <ul class="collapsible popout">
  <?php while($row = mysqli_fetch_assoc($result))
  {

  ?>

    <li>
           <div class="collapsible-header teal lighten-2">
             <i class="material-icons">portrait</i><?=  $row["f_name"]; ?> -- Total OPD Amount Claimed ->
             ₹<?= $f_amount;?> (Limit ₹10,000)
			 -- Total Dental Amount Claimed ->
             ₹<?= $f_amount1;?> (Limit ₹10,000)
          </div>
         <div class="collapsible-body">
           <div class="row">
             <div class="offset-l2">
               <table class="bordered striped">
                 <thead>
                   <tr>
                       <th>No</th>
                       <th>Receipt No</th>
                       <th>Receipt Date</th>
                       <th>Expenditure Name</th>
                       <th>Amount to be Claimed</th>
                       <th>Employee ID</th>
                       <th>Uploaded date</th>
                       <th class="center">Documents</th>
                       <th>Verify</th>

                       <th>Reject</th>

                   </tr>

                 </thead>
                 <tbody>
                   <?php

                   foreach ($arrayVals as $row1) {
                       if($row1['f_name'] == $row['f_name']){
                         $i++;
                   ?>
                   <tr>
                     <td><?= $i; ?></td>
                     <td><?=  $row1["receipt_no"]; ?></td>
                      <td><?=  $row1["receipt_date"]; ?></td>
                       <td><?=  $row1["f_expenditure"]; ?></td>
                        <td><?=  $row1["f_amount"]; ?></td>
                        <td><?=  $row1["f_name"]; ?></td>
                        <td><?= $date = $row1["r_date"]; ?></td>
                        <td><a class="tooltipped" data-position="bottom" data-tooltip="Open file in new window" href="<?= $row1['file_path']; ?>" target="_blank"><i class="material-icons">list</i></a></td>
                        <td id="fid_<?php echo $row1['f_id']; ?>">
                          <?php if($row1['Verifiation_status'] == 0) { ?>
                          <a class=" tooltipped waves-effect waves-light btn-small" data-position="bottom" data-tooltip="Click to Approve " onclick="submit_approve('<?php echo $row1['f_id']; ?>')">Approve</a><?php } elseif($row1['Verifiation_status'] == 1) { ?>
                            <i class="tooltipped material-icons" data-position="bottom" data-tooltip="Approved" style='color:#039be5;font-weight:800'>cloud_done</i>
                            <?php } ?>
                        </td>



                       <td id="fid1_<?php echo $row1['f_id']; ?>">
                          <?php if($row1['Verifiation_status'] == 0) { ?>
                          <a class=" tooltipped waves-effect waves-light btn-small" data-position="bottom" data-tooltip="Click to Reject " onclick="submit_reject('<?php echo $row1['f_id']; ?>')">Reject</a><?php } elseif($row1['Verifiation_status'] == 2){ ?>
                            <i class="tooltipped material-icons" data-position="bottom" data-tooltip="Rejected" style='color:#039be5;font-weight:800'>cancel</i>

                            <?php } ?>
                        </td>



                      </tr>

                      <?php }
                    }
                    $i = 0;?>
                  </tbody>

               </table>
             </div>
           </div>
         </div>

       </li>





<?php
$username = $row["f_name"];
} ?>
</ul>
</div>
<?php
}
?>
<style type="text/css">
  td ,th{
text-align: center;
    }

</style>


<script >
   $(document).ready(function(){
    $('.tooltipped').tooltip();
    $('.datepicker').pickadate({
    selectMonths: true, // Creates a dropdown to control month
    selectYears: 15, // Creates a dropdown of 15 years to control year
    format: 'dd-mm-yyyy' });
  });
</script>

 <script >
 $(document).ready(function(){
   $('.collapsible').collapsible();
 });

 function submit_approve(id){

   $.ajax({
        url: 'process/process_verification_approve.php',
        dataType: 'json',
        type: 'post',
        data: "id="+id,
        success: function( data ){
            $('#fid_'+id).html("");
            $('#fid_'+id).html("<i class='tooltipped material-icons' data-position='bottom' data-tooltip='Approved' style='color:#039be5;font-weight:800'>cloud_done</i>");
            $('#response pre').html( data );
        },
        error: function( jqXhr, textStatus, errorThrown ){
            console.log( errorThrown );
        }
    });
 }
    function submit_reject(id){

   $.ajax({
        url: 'process/process_send_defiency.php',
        dataType: 'json',
        type: 'post',
        data: "id="+id,
        success: function( data ){
            $('#fid1_'+id).html("");
            $('#fid1_'+id).html(" <i class='tooltipped material-icons' data-position='bottom' data-tooltip='Rejected' style='color:#039be5;font-weight:800'>cancel</i>");
            $('#response pre').html( data );
        },
        error: function( jqXhr, textStatus, errorThrown ){
            console.log( errorThrown );
        }
    });
 }
 </script>
 <?php
 include("includes/footer.php");
 ?>
