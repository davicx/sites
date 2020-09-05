<?php //include_once('include_components/links_head.php') ?>

<?php /*<form action="include_components/logout/logout.inc.php" method = "post"  enctype="multipart/form-data"> */ ?>
<form action="../../functions/includes/logout.inc.php" method = "post"  enctype="multipart/form-data"> 
	<input type="submit" value="Logout">
	<input type="hidden" id = "" name="logout" value="true">
	<input type="hidden" id = "" name="logout-user" value="<?php echo $logged_in_user; ?>">
</form> 