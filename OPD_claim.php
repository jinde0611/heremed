<?php
include("includes/user_header.php");
include("includes/connect.php");
$uname = $_SESSION['username'];
$query = "SELECT * FROM signup WHERE e_id = '$uname' ";
$result = $conn->query($query);
$row = mysqli_fetch_assoc($result);
?>
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
<link href="style/css/multi_form.css" rel="stylesheet">
<body>
<form id="regForm" action="process\process_opd_claim.php" method="post">
  <h3>Claim</h3>
  <!-- One "tab" for each step in the form: -->
  
  <div class="tab">
    <p>
        <label>Name of the insured (in whose name policy is issued)</label>
        <input value="<?php echo  $row['e_name']; ?> " oninput="this.className = ''" name="f_name">
    </p>
    <p>
        <select id="f_relation" name="f_relation" class="validate "   required  >
            <option value="" disabled selected>Select Relationship</option>
            <option value="Father">Father</option>
            <option value="Mother">Mother</option>
            <option value="Child">Child</option>
            <option value="Spouse">Spouse</option>
            <option value="Self">Self</option>
        </select>
    </p>
    <p>
        <label>Nature of Disease/ Illness first detected</label>
        <input placeholder="Nature of Disease... " oninput="this.className = ''" name="f_nature">
    </p>
  </div>
  <div class="tab">Practioner's Info :
    <p>
      <label for="p_name">Name of practitioner</label></p>
      <input id="p_name" name="p_name" type="text" class="validate" required>
    </p>     
    <p>
      <label for="start_date">Date Of commencement of treatment</label> 
      <input id="start_date" name="start_date" type="date" class="validate datepicker"required>      
    </p>

    <p>
      <label for="end_date">Date Of completion of treatment</label> 
      <input id="end_date" name="end_date" type="date" class="validate datepicker"required>     
    </p>

    <p>
      <label for="address">Address of practitioner</label>
      <textarea id="address" class="materialize-textarea" name="f_address"></textarea>     
    </p>

    <p>
      <label for="p_telephone">Telephone</label>
      <input id="p_telephone" name="p_telephone" type="tel" class="validate"required>
    </p>

    <p>
      <label for="r_no">Registration No </label>
      <input id="r_no" name="r_no" type="text" class="validate" required>
    </p>
  </div>
  <div style="overflow:auto;">
    <div style="float:right;">
      <button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
      <button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>
    </div>
  </div>
  <!-- Circles which indicates the steps of the form: -->
  <div style="text-align:center;margin-top:40px;">
    <span class="step"></span>
    <span class="step"></span>
    
  </div>
</form>
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
<script>
  $(document).ready(function() {
      $('select').material_select();
    });
</script>
<script >

 $(document).ready(function() {
    $('.datepicker').pickadate({
    selectMonths: true, // Creates a dropdown to control month
    selectYears: 15, // Creates a dropdown of 15 years to control year
    format: 'dd-mm-yyyy' });
  });
 </script>
<script>
var currentTab = 0; // Current tab is set to be the first tab (0)
showTab(currentTab); // Display the current tab

function showTab(n) {
  // This function will display the specified tab of the form...
  var x = document.getElementsByClassName("tab");
  x[n].style.display = "block";
  //... and fix the Previous/Next buttons:
  if (n == 0) {
    document.getElementById("prevBtn").style.display = "none";
  } else {
    document.getElementById("prevBtn").style.display = "inline";
  }
  if (n == (x.length - 1)) {
    document.getElementById("nextBtn").innerHTML = "Submit";
  } else {
    document.getElementById("nextBtn").innerHTML = "Next";
  }
  //... and run a function that will display the correct step indicator:
  fixStepIndicator(n)
}

function nextPrev(n) {
  // This function will figure out which tab to display
  var x = document.getElementsByClassName("tab");
  // Exit the function if any field in the current tab is invalid:
  if (n == 1 && !validateForm()) return false;
  // Hide the current tab:
  x[currentTab].style.display = "none";
  // Increase or decrease the current tab by 1:
  currentTab = currentTab + n;
  // if you have reached the end of the form...
  if (currentTab >= x.length) {
    // ... the form gets submitted:
    document.getElementById("regForm").submit();
    return false;
  }
  // Otherwise, display the correct tab:
  showTab(currentTab);
}

function validateForm() {
  // This function deals with validation of the form fields
  var x, y, i, valid = true;
  x = document.getElementsByClassName("tab");
  y = x[currentTab].getElementsByTagName("input");
  // A loop that checks every input field in the current tab:
  for (i = 0; i < y.length; i++) {
    // If a field is empty...
    if (y[i].value == "") {
      // add an "invalid" class to the field:
      y[i].className += " invalid";
      // and set the current valid status to false
      valid = false;
    }
  }
  // If the valid status is true, mark the step as finished and valid:
  if (valid) {
    document.getElementsByClassName("step")[currentTab].className += " finish";
  }
  return valid; // return the valid status
}

function fixStepIndicator(n) {
  // This function removes the "active" class of all steps...
  var i, x = document.getElementsByClassName("step");
  for (i = 0; i < x.length; i++) {
    x[i].className = x[i].className.replace(" active", "");
  }
  //... and adds the "active" class on the current step:
  x[n].className += " active";
}
</script>

<?php
 include("includes/footer.php");
 ?>
