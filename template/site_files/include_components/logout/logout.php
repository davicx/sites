<form action="../../functions/includes/logout.inc.php" method = "post"  enctype="multipart/form-data"> 
	<input type="submit" value="Logout">
	<input type="hidden" id = "" name="logout" value="true">
	<input type="hidden" id = "" name="logout-user" value="<?php echo $logged_in_user; ?>">
</form> 