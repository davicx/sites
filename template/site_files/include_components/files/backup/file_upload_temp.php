<?php 

	//User File Upload (user_file_uploads)
	$destination = USER_FILE_UPLOADS;
	
	//PART 3: Variable Keys
	$master_site = MASTER_SITE;
	$redirect = "template_upload.php";
	$caption = "yo dawg";
	$upload_into_folder = 7;
	$post_id = 0;

?>
<form action="#" method="post" enctype="multipart/form-data">
	Select image to upload:
	<input type="file" name="file-name" id="file-id">
	<input type="submit" value="Upload Image" name="submit-file-trigger" id="js-trigger-upload-file" >
	
			<!-- Hidden Values -->
			<input type="hidden" id = "" name="user" value="<?php echo $logged_in_user; ?>">
			<input type="hidden" id = "" name="group-id" value="<?php echo $group_id; ?>">
			<input type="hidden" id = "" name="post-id" value="<?php echo $post_id; ?>">
			<input type="hidden" id = "" name="folder" value="<?php echo $current_folder; ?>">
			<input type="hidden" id = "" name="parent" value="<?php echo $parent_folder; ?>">
			<input type="hidden" id = "" name="destination" value="<?php echo $destination; ?>">
			<input type="hidden" id = "" name="caption" value="<?php echo $caption; ?>">
			<input type="hidden" id = "" name="master-site" value="<?php echo $master_site; ?>">
			<input type="hidden" id = "" name="redirect" value="<?php echo $redirect; ?>">
	
</form>

<button id="js-upload" class = "hide">Upload</button>
