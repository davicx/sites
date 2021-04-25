<?php
	//Required Components
	//Javascript: file_upload.js also the right_click.js code 
	//Server: files.php
	//Server Class: File.php
	
	//Include Page Header 
	require_once('../../functions/page_header.php');
	
	//User Profile 
	$destination = USER_IMAGE;	
	
	//PART 3: Variable Keys
	$master_site = MASTER_SITE;
	$redirect = "template_upload.php";

?>

	
<!-- SECTION: Change User Image -->
<form action="" method="post" enctype="multipart/form-data" id="">

	<input type="file" name="image" id="" class = ""><br />
	<input type="submit" name="change-user-photo" id="change-user-photo" class = "button-discussion" value="Upload">

	<!-- Hidden Values -->
	<input type="hidden" name="max-file-size" value="<?php echo $max; ?>">
	<input type="hidden" id = "" name="logged-in-user" value="<?php echo $logged_in_user; ?>">
	<input type="hidden" id = "" name="destination" value="<?php echo $destination; ?>">
	<input type="hidden" id = "" name="redirect" value="<?php echo $redirect; ?>">
	<input type="hidden" id = "" name="master-site" value="<?php echo $master_site; ?>">
	
</form>



