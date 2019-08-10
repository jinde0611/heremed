<?php
include("includes/user_header.php");
$uname1 = $_SESSION['username'];
$query = "SELECT * FROM dependents WHERE u_email = '$uname1' ";
$result = $conn->query($query);
;

?>

<div class="row pinfo_hide" style="margin-top:50px;">
<div class="col s12 m12 l8 offset-l2">
<div class="card-panel z-index-5 teal">
<span class="white-text center"><h5 class="thin">Dependents</h5>
</span>
</div>
</div>
</div>
<div   class="row pinfo_hide" style="margin-top:-10%;">
<div class="col s12 m5 l8 offset-l2">
<div class="card-panel ">
<br>

<?php

while($row = mysqli_fetch_assoc($result)){ ?>
<span class="" style="padding:20px;border:2px solid black; border-radius: 10px;margin-right:20px;"><?php echo $row["d_relation"]; ?></span>
<?php } ?>
<!-- Modal Trigger -->
<br><br><br>
<a class="waves-effect waves-light btn" href='dependent.php'>Add Dependent</a>

</div>
</div>
</div>


<?php
include("includes/footer.php");
?>