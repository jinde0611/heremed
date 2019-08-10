<?php
include("includes/user_header.php");
include("includes/connect.php");

$uname1 = $_SESSION['username']
?>
<div class="row pinfo_hide" style="margin-top:50px;">
      <div class="col s12 m5 l8 offset-l2">
        <div class="card-panel z-index-5 teal">
          <span class="white-text center"><h5 class="thin">New India Assurance Company Limited</h5>
          </span>
        </div>
      </div>
    </div>

 

 <div   class="row pinfo_hide" style="margin-top:-10%;">
    <div class="col s12 m5 l8 offset-l2">
        <div class="card-panel ">
          <div class="row">
          <form method="post" action="process/process_new_assurance.php">
              <div  class="row col s6 m5 l8 offset-l2">
                <div class="input-field  ">
                  <i class="material-icons prefix">account_circle</i>
                  <input id="n_name" name="n_name" type="text" class="validate" required>
                  <label for="n_name">Name of the account holder</label>
                </div>

                <div class="input-field  ">
                  <i class="material-icons prefix">attach_money</i>
                  <input id="n_bank_name" name="n_bank_name" type="text" class="validate" required>
                  <label for="n_bank_name">Bank Name</label>
                </div>


                <div class="input-field  ">
                  <i class="material-icons prefix">address</i>
                  <input id="n_account_no" name="n_account_no" type="text" class="validate" required>
                  <label for="n_account_no">Full Bank Account no</label>
                </div>

                <div class="input-field  ">
                  <i class="material-icons prefix">code</i>
                  <input id="n_ifsc" name="n_ifsc" type="text" class="validate" required>
                  <label for="n_ifsc">IFSC Code</label>
                </div>

                <div class="input-field  ">
                  <i class="material-icons prefix">style</i>
                  <input id="n_acc_type" name="n_acc_type" type="text" class="validate" required>
                  <label for="n_acc_type">Account Type</label>
                </div>

                <div class="input-field  ">
                  <i class="material-icons prefix">group</i>
                  <input id="n_bank_address" name="n_bank_address" type="text" class="validate" required>
                  <label for="n_bank_address">Bank Address</label>
                </div>

                <div class="input-field  ">
                  <i class="material-icons prefix">call</i>
                  <input id="n_mobile" name="n_mobile" type="text" class="validate" required>
                  <label for="n_mobile">Mobile Number</label>
                </div>

                <div class="input-field  ">
                  <i class="material-icons prefix">email</i>
                  <input id="n_email" name="n_email" type="text" class="validate" required>
                  <label for="n_email">Email ID</label>
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

 <?php
include("includes/footer.php");
?>