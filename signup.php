<?php
include("includes/header.php");
include("includes/connect.php");
?>
<div class="row pinfo_hide" style="margin-top:15px;">
      <div class="col s12 m5 l8 offset-l2">
        <div class="card-panel z-index-5 teal">
          <span class="white-text center"><h5 class="thin">Employee Login</h5>
          </span>
        </div>
      </div>
    </div>
 
 <div   class="row pinfo_hide" style="margin-top:-20%;">
    <div class="col s12 m5 l8 offset-l2">
        <div class="card-panel ">
          <div class="row">
          <form method="post" action="process/process_signup.php">
              <div  class="row col s6 m5 l8 offset-l2">
                <div class="input-field  ">
                  <i class="material-icons prefix">person</i>
                  <input id="e_name" name="e_name" type="text" class="validate" required>
                  <label for="e_name">Employee Name</label>
                </div>

                <div class="input-field  ">
                  <i class="material-icons prefix">email</i>
                  <input id="e_id" name="e_id" type="email" onblur="javascript:checkInput();" class="validate" required>
                  <label for="e_id">Email ID</label>
                </div>


                <div class="input-field  ">
                  <i class="material-icons prefix">credit_card</i>
                  <input id="emp_id" name="emp_id" type="text" class="validate" required>
                  <label for="emp_id">Employee ID</label>
                </div>

                <div class="input-field  ">
                  <i class="material-icons prefix">account_box</i>
                  <input id="username" name="username" type="text" class="validate" required>
                  <label for="username">Username</label>
                </div>
				
				<div class="input-field ">

				  <select id="ido_location" name="ido_location" class="validate "   required  >
				  <option value="" disabled selected>IDO Location</option>
				  <option value="IDO 1">IDO 1</option>
				  <option value="IDO 2">IDO 2</option>
				  <option value="IDO 3">IDO 3</option>
				  <option value="IDO 4">IDO 4</option>
				   <option value="IDO 5">IDO 5</option>
				  </select>
				 </div>

                <div class="input-field  ">
                  <i class="material-icons prefix">lock</i>
                  <input id="password" name="password" type="password" class="validate" required>
                  <label for="password">Enter Password</label>
                </div>

                <div class="input-field  ">
                  <i class="material-icons prefix">lock</i>
                  <input id="confirm_password" name="confirm_password" type="password" class="validate" required>
                  <label for="confirm_password">Confirm Password</label>
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
	<script type="text/javascript">
	var password = document.getElementById("password")
  , confirm_password = document.getElementById("confirm_password");

function validatePassword(){
  if(password.value != confirm_password.value) {
    confirm_password.setCustomValidity("Passwords Don't Match");
  } else {
    confirm_password.setCustomValidity('');
  }
}

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;
</script>

<script type="text/javascript">
function checkInput(){
            var e_id=document.getElementById('e_id').value.trim();
            if(e_id.length==0)
                 return;
            var xmlhttp=new XMLHttpRequest();
            xmlhttp.onreadystatechange=function(){
              if (xmlhttp.readyState==4 && xmlhttp.status==200){
                    if(xmlhttp.responseText==0){
                        document.getElementById('e_id').value='';
                        alert('Email already exists');
                    }
                else if(xmlhttp.responseText==1){
                      document.getElementById('e_id').value='';
                      alert('Invalid Email');      
                }
            }
            xmlhttp.open("GET","checkMail.php?e_id="+e_id,true);
            xmlhttp.send();

        }

</script>

 <?php
include("includes/footer.php");
?>