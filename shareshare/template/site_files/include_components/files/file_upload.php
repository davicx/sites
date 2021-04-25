<?php
	//File Upload Input Variables
	$destination = USER_FILE_UPLOADS;
	$redirect = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
	$notification_message = "New File to Group"; 
	$notification_type = "new_file";
	$notification_link = $redirect;
?>
<form action="#" method="post" enctype="multipart/form-data">

	<!-- Upload File -->				
	<div class = "">
		<p id = "js-trigger-browse-for-file" class = "file-upload-browse-button"> Add File + </p>		
		<p id = "js-trigger-upload-file" class = "file-upload-upload-button"> Upload </p>
		<p id = "js-selected-upload-file-name" class = "file-upload-selected-file-name"></p>
	</div>	
	<p class = "js-error-no-file-selected hide"> Please select a file </p>
	
	<textarea name="file-upload-caption" id = "js-file-upload-caption" class = "post-input-text-full" placeholder="Enter the Caption"></textarea>
					
	<!-- Actual Upload (Hidden) -->
	<div class = "hide">
		<input type="file" name="file-name" id="js-browse-for-file">
		<input type="submit" value="Upload Image" name="submit-file-trigger" id="js-file-upload-submit" >
	</div>	

	<!-- Hidden Values -->
	<input type="hidden" id = "" name="master-site" value="<?php echo $master_site; ?>">	
	<input type="hidden" id = "" name="logged-in-user" value="<?php echo $logged_in_user; ?>">
	<input type="hidden" id = "" name="group-id" value="<?php echo $group_id; ?>">
	<input type="hidden" id = "" name="folder" value="<?php echo $current_folder; ?>">
	<input type="hidden" id = "" name="parent-folder" value="<?php echo $parent_folder; ?>">
	<input type="hidden" id = "" name="destination" value="<?php echo $destination; ?>">
	<input type="hidden" id = "" name="caption" value="<?php echo $caption; ?>">
	<input type="hidden" id = "" name="redirect" value="<?php echo $redirect; ?>">
	<input type="hidden" id = "" name="notification-message" value="<?php echo $notification_message; ?>">
	<input type="hidden" id = "" name="notification-type" value="<?php echo $notification_type; ?>">
	<input type="hidden" id = "" name="notification-link" value="<?php echo $notification_link; ?>">

</form>
