<?php
	require_once('../../functions/posts.php');
	
	//PART 1: Photo Upload Input Variables
	$destination = FILE_UPLOAD; //Change on Live Site 
	$destination = POST_PHOTO_UPLOAD;
	
	$redirect = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
	$post_type = "file"; 
	
	//PART 3: Notification Information
	$notification_message = "shared a file"; 
	$notification_type = "new_post_file"; 
	$notification_link = $redirect;	

?>
<form action="#" method="post" enctype="multipart/form-data">

	<!-- Upload File -->				
	<div class = "">
		<p id = "js-trigger-browse-for-post-file" class = "file-upload-browse-button"> Add Photo + </p>		
		<p id = "js-trigger-upload-post-file" class = "file-upload-upload-button"> Upload </p>
		<p id = "js-selected-upload-post-file-name" class = "file-upload-selected-file-name"></p>
	</div>	
	
	<textarea name="file-caption" id = "js-post-file-caption" class = "post-input-text-full" placeholder="Enter the Caption"></textarea>
	<p class = "js-error-no-file-selected hide"> Please select a file </p>
		
	<!-- Actual Upload (Hidden) -->
	<div class = "hide">
		<input type="file" name="post-file-name" id="js-browse-for-post-file">
		<input type="submit" value="Upload Image" name="post-file-upload" id="js-post-file-upload-submit" >
	</div>	

	<!-- Hidden Values: Site and User Specific -->
	<input type="hidden" id = "" name="logged-in-user" value="<?php echo $logged_in_user; ?>">
	<input type="hidden" id = "" name="redirect" value="<?php echo $redirect; ?>">	
	<input type="hidden" id = "" name="destination" value="<?php echo $destination; ?>">	
	<input type="hidden" id = "" name="master-site" value="<?php echo $master_site; ?>">
	<input type="hidden" id = "" name="post-type"  id = "" value = "<?php echo $post_type; ?>"> 		
	<input type="hidden" id = "" name="group-id" value="<?php echo $group_id; ?>">	
	<input type="hidden" id = "" name="board-id" value="<?php echo $group_id; ?>">	
	<input type="hidden" id = "" name="post-from"  id = "" value = "<?php echo $logged_in_user; ?>" >		
	<input type="hidden" id = "" name="post-to"  id = "" value = "<?php echo $post_to; ?>"> 		
	<input type="hidden" id = "" name="notification-message"  id = "" value = "<?php echo $notification_message; ?>" > 
	<input type="hidden" id = "" name="notification-type"  id = "" value = "<?php echo $notification_type; ?>" > 
	<input type="hidden" id = "" name="notification-link"  id = "" value = "<?php echo $notification_link; ?>" > 
			
</form>
