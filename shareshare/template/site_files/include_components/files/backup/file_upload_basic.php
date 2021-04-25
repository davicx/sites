<?php
	//File Upload Input Variables
	$destination = USER_FILE_UPLOADS;
	$notification_message = "New File to Group"; 
	$notification_type = "new_file";
	$notification_link = "#";

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

<?php /*
<!-- SECTION: Trigger Upload with Jquery -->
<section id = "upload_form">
	<form action="" method="post" enctype="multipart/form-data" id="">
	
		<!-- Upload File -->				
		<div class = "hide">
			<p id = "js-trigger-browse-for-file" class = "file-upload-browse-button"> Add File + </p>		
			<p id = "js-trigger-upload-file" class = "file-upload-upload-button"> Upload </p>
			<p id = "js-selected-file-name" class = "file-upload-selected-file-name"></p>
		</div>	
		
		<!-- Actual Upload (Hidden) -->
		<div class = "">
			<input type="file" name="image" id="js-browse-for-file" class = "">
			<input type="submit" name="upload" id="js-file-upload-submit" class = "" value="Upload">
		</div>	
		
		<!-- Hidden Values -->
		<input type="hidden" name="max-file-size" value="<?php echo $max; ?>">
		<input type="hidden" id = "" name="upload-key" value="<?php echo $upload_key; ?>">
		<input type="hidden" id = "" name="user" value="<?php echo $logged_in_user; ?>">
		<input type="hidden" id = "" name="group-id" value="<?php echo $group_id; ?>">
		<input type="hidden" id = "" name="post-id" value="<?php echo $post_id; ?>">
		<input type="hidden" id = "" name="folder" value="<?php echo $current_folder; ?>">
		<input type="hidden" id = "" name="parent" value="<?php echo $parent_folder; ?>">
		<input type="hidden" id = "" name="destination" value="<?php echo $destination; ?>">
		<input type="hidden" id = "" name="caption" value="<?php echo $caption; ?>">
		<input type="hidden" id = "" name="redirect" value="<?php echo $redirect; ?>">
		<input type="hidden" id = "" name="master-site" value="<?php echo $master_site; ?>">
	
	
	</form>
</section>
*/ ?>
