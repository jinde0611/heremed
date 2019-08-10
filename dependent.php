<?php
include("includes/user_header.php");
$uname1 = $_SESSION['username'];
$query = "SELECT * FROM signup WHERE e_id = '$uname1' ";
$result = $conn->query($query);
$row = mysqli_fetch_assoc($result);

?>

<div class="row pinfo_hide" style="margin-top:5px; ">
  <div class="col s12 m5 l8 offset-l2">
    <div class="card-panel z-index-5 teal" style="padding:5px;">
    <span class="white-text center"><h5  class="thin">Dependent</h5>
    </span>
    </div>
  </div>
</div>

<div   class="row pinfo_hide" style="margin-top:-35px;">
  <div class="col s12 m5 l8 offset-l2">
    <div class="card-panel ">
      <div class="row">
      <form method="post" action="process/process_add_dependent.php">
        <div  class="row col s6 m5 l8 offset-l2">
          <div class="input-field  ">
            <i class="material-icons prefix">person</i>
            <input value="<?php echo  $row['e_name']; ?> " id ="abc" name="d_name" type="text" class="validate" required>
            <label for="abc"  >Name of the insured(in whose name policy is issued)</label>
          </div>

          <div class="input-field  ">
            <i class="material-icons prefix">person</i>
            <input id="relation_name" name="relation_name" type="text" class="validate" required>
            <label for="relation_name">Name to be insured</label>
          </div>

          <div class="input-field umesh">

          <select id="d_relation" name="d_relation" class="validate "   required  >
          <option value="" disabled selected>Select Relationship</option>
          <option value="Father">Father</option>
          <option value="Mother">Mother</option>
          <option value="Child">Child</option>
          <option value="Spouse">Spouse</option>
           <option value="Self">Self</option>
          </select>
         </div>

   

                <div class="input-field  ">
                  <i class="material-icons prefix">account_circle</i>
                  <input id="d_occupation" name="d_occupation" type="text" class="validate" required>
                  <label for="d_occupation">Occupation</label>
                </div>

                <div class="input-field  ">
                  <i class="material-icons prefix">account_circle</i>
                  <input id="d_address" name="d_address" type="text" class="validate" required>
                  <label for="d_address">Residential address</label>
                </div>

                <div class="input-field  ">
                  <i class="material-icons prefix">contact_phone</i>
                  <input id="d_age" name="d_age" type="text" class="validate" required>
                  <label for=d_age">Current Age</label>
                </div>
                
                <div class="input-field  ">
                  <i class="material-icons prefix">contact_phone</i>
                  <input id="d_mobile" name="d_mobile" type="text" class="validate" required>
                  <label for="d_mobile">Mobile Number</label>
                </div>

                <div class="input-field col s12 l11">
          <button id="next1" class="btn waves-effect waves-light" type="submit">Submit
          <i class="material-icons right">send</i>
          </button>
          </div>
        </div>



          </form>
        </div>
        </div>
    </div>
 </div>
 <script>
  $(document).ready(function() {
      $('select').material_select();
    });
</script>
<?php
include("includes/footer.php");
?>