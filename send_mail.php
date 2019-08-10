<?php
include("includes/doc_header.php");



?>
<div class="row pinfo_hide" style="margin-top:50px;">
      <div class="col s12 m5 l8 offset-l2">
        <div class="card-panel z-index-5 teal">
          <span class="white-text center"><h5 class="thin">Send Deficiency</h5>
          </span>
        </div>
      </div>
    </div>

 

<div   class="row pinfo_hide" style="margin-top:-10%;">
    <div class="col s12 m5 l8 offset-l2">
        <div class="card-panel ">
            <div class="row">
                <form method="post" action="http://pamsmydata01.ad.here.com:8443/medEmail/sendEmail">
                    <div  class="row col s6 m5 l8 offset-l2">
                        <div class="input-field  ">
                            <i class="material-icons prefix">person</i>
                            <input id="email" name="to" type="text" class="validate"  required>
                            <label for="email">Email</label>
                        </div>
                      

                        
                        <div class="input-field col s12">
                            <i class="material-icons prefix">person</i>
                            <textarea id="textarea1" name="content"class="materialize-textarea"></textarea>
                            <label for="textarea1">Content</label>
                        </div>
                        
                        <div class="input-field col s12">
                            <input type="hidden" name="appCode" value="97248635" > </input>
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
 $('#comment').val('New Text');
  M.textareaAutoResize($('#textarea1'));
  </script>

 <?php
include("includes/footer.php");
?>