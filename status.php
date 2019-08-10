<?php
include("includes/user_header.php");
include("includes/connect.php");

$uname1 = $_SESSION['username'];
$query = "SELECT * from file_upload where f_name='$uname1'";
$query1 = "SELECT * FROM form_details WHERE user_id = '$uname1'";

///$result = mysqli_query($query);
$result1 = $conn->query($query1);
$result = $conn->query($query);
$i = 1;
?>

<div class="row" style="margin-top:5%;">
  <div class="col s12 m5 l10 offset-l1">
    <table class="bordered highlight">
      <thead>
        <tr>
          <th>No</th>
          <th>Receipt No</th>
          <th>Receipt Date</th>
          <th>Expenditure Name</th>
          <th>Amount to be Claimed</th>
          <th>Name</th>
          <th>Claim ID</th>
          <th>Uploaded date</th>
          <th class="center">Bill</th>
          <th>Status</th>
          <th>Edit</th>
          <th>Delete</th>
          <th>Print</th>
        </tr>
      </thead>
      <tbody>
      <?php

        while($row = mysqli_fetch_assoc($result)) :

      ?>
        <tr>
          <td><?= $i; ?></td>
          <td><?=  $row["receipt_no"]; ?></td>
          <td><?=  $row["receipt_date"]; ?></td>
          <td><?=  $row["f_expenditure"]; ?></td>
          <td><?=  $row["f_amount"]; ?></td>
          <td><?=  $row["f_name"]; ?></td>
          <td><?=$row["claim_id"]; ?></td>

          <td><?= $date = $row["r_date"]; ?></td>
          <td><a class="tooltipped" data-position="bottom" data-tooltip="Open the Uploaded Document" href="<?= $row['file_path']; ?>" target="_blank"><i class="fa fa-file-alt fa-2x"></i></a></td>
          <td>
            <?php
              if($row['Verifiation_status'] == 0 ){ 
            ?>
            <a class="tooltipped fa fa-spinner fa-2x" style="color:black;" data-position="bottom" data-tooltip="Pending For Approval"></a>
            <?php }
              elseif($row['Verifiation_status'] == 1){ 
            ?>
            <a class="tooltipped fa fa-check-circle fa-2x" style="color:green;" data-position="bottom" data-tooltip="Approved"></a>
            <?php }
              else{ 
            ?>
            <a class="tooltipped fa fa-times-circle  fa-2x" style="color:red;" data-position="bottom" data-tooltip="Rejected"></a>
            
            <?php } 
            ?>
          </td>
          <td><a href="edit.php?id=<?php echo $row["claim_id"];?>&id1=<?php echo $row["file_id"]; ?>" class="fa fa-edit fa-2x"></a></td>
          <td><a href="delete.php?id=<?php echo $row["claim_id"]; ?>" class="fa fa-trash fa-2x"></a></td>
          <td><a href="print_new.php?id=<?php echo $row["claim_id"]; ?>" class="waves-effect waves-light fa fa-print fa-2x"></a></td>
        </tr>
<?php $i++;
endwhile;
?>
</tbody>
</table>

</div>
</div>

<style type="text/css">
td ,th{
text-align: center;
}

</style>
<script >
$(document).ready(function(){
$('.tooltipped').tooltip();
});
</script>
<?php
include("includes/footer.php");
?>
