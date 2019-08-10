<link type="text/css" href="style/css/chatbox.css" rel="stylesheet">
<?php
include 'includes/doc_header.php';
if ($_SESSION['is_doctor']==0) {
header("location:error.php");
exit();
?>

<?php
}else{

?>
<div class="container">
    <div id="cover">
    <form method="post" action="process/process_id_filter.php">
        <div class="tb">
        <div class="td"><input type="text"  name="search_name" placeholder="Search" required></div>
        <div class="td" id="s-cover">
            <button type="submit">
            <div id="s-circle"></div>
            <span></span>
            </button>
        </div>
        </div>
    </form>
    </div>
</div>
<?php
}
?>
<?php
include("includes/footer.php");
?>
