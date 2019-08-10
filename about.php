
<?php
include("includes/header.php");


$query = "SELECT * FROM about ";
$result = $conn->query($query);
?>


<div class="row pinfo_hide" style="margin-top:50px;">
      <div class="col s12 m6 l10 offset-l1">
        <div class="card-panel z-index-5 teal">
          <span class="white-text center"><h5 class="thin">Important Information on Paramount</h5>
          </span>
        </div>
      </div>
    </div>
  <div   class="row pinfo_hide" style="margin-top:-10%;">
    <div class="col s12 m6 l10 offset-l1">
        <div class="card-panel ">
          <div class="row">
<tr>
	<?php
while($rows = mysqli_fetch_assoc($result)){ ?>





<td><a href="<?= $rows['about_file_path']; ?>" target="_blank"><i id="material" class="fa fa-file-pdf-o fa-5x"></i></a></td>
<td style="text-align: center;"><?php echo $rows['about_name']; ?></td>

 <?php } ?>

</tr>
</div>
</div>
</div>
</div>







   <style type="text/css">
  #material{
color: teal ;
    }
</style>
    <style type="text/css">
    .material-icons.md-light {
    	color: rgba(255, 255, 255, 1);
    }

</style>
<?php
include("includes/footer.php");
?>
