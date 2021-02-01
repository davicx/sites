<?php
	//Required Components
	//Javascript: files.js code 
	//Server: files.php
	//Server Class: File.php
	
	//Include Page Header 
	require_once('../../functions/page_header.php');
	//require_once('../../functions/files.php');	
	require_once('../../functions/posts.php');	
	
	//PART 1: Photo Specific Variables 
	$post_type = "photo"; 
	//$upload_key = "post_image";
	$destination = POST_UPLOAD;

	//PART 2: Current Page URL 
	$current_url = getCurrentURL();
	$redirect = getCurrentURL();
	
	//PART 3: Notification Information
	$notification_message = "shared a photo"; 
	$notification_type = "new_post_photo"; 
	$notification_link    = "posts.php?group_id=" . base64_encode($group_id);

	//PART 4: Error Handling Variables 
	$photo_error_message = "Please enter a comment ";

?>

<section id = "upload_form">
	<form action="" method="post" enctype="multipart/form-data" id="uploadImage">
		<div class="uk-grid ">	
	
			<!-- Caption -->			
			<div class="uk-width-10-10">
				<p class = "new-post-text"> Enter Photo Caption </p>
				<textarea name="caption" id = "js-post-photo-caption" class = "post-input-text-full" placeholder="Enter the Caption"></textarea>
			</div>

			<!-- File Name -->			
			<div class="uk-width-9-10 post-upload-file-name">
				<p id = "js-selected-file-name" class = "file-upload-selected-file-name"></p>	
			</div>
			
			<!-- Upload File -->		
			<div class = "uk-width-10-10">
				<p id = "js-make-photo-post" class = "file-upload-upload-button button-blue post-button"> Make Post </p>
				<p id = "js-trigger-browse-for-file" class = "file-upload-browse-button button-white post-change-file"> Add Photo + </p>		
				<p id = "js-trigger-upload-file" class = "hide file-upload-upload-button button-white post-button"> Upload File (hidden and clicked by JS) </p>	
			</div>
			
			<div class = "uk-width-10-10">
				<p id = "js-error-post-no-photo-selected" class = "hide"> please select a photo first </p>
			</div>

			<!-- Actual Upload (Hidden) -->
			<div class = "hide">
				<input type="file" name="image" id="js-browse-for-file" class = "">
				<input type="submit" name="file-upload-post-photo" id="js-file-upload-submit" class = "" value="Upload">
				<input type="hidden" name="max-file-size" value="<?php echo $max; ?>">
			</div>	
			
			<!-- Hidden Values: Site and User Specific -->
			<input type="hidden" id = "" name="master-site" value="<?php echo $master_site; ?>">
			<input type="hidden" id = "" name="logged-in-user" value="<?php echo $logged_in_user; ?>">
			<input type="hidden" id = "" name="destination" value="<?php echo $destination; ?>">		
			<input type="hidden" id = "" name="group-id" value="<?php echo $group_id; ?>">
			<input type="hidden" id = "" name="list-id" value="<?php echo $list_id; ?>">		
			<input type="hidden" id = "" name="redirect" value="<?php echo $redirect; ?>">	

			<!-- Hidden Values: Post Specific -->
			<input type="hidden" id = "" name="post-from"  id = "" value = "<?php echo $logged_in_user; ?>" >		
			<input type="hidden" id = "" name="post-to"  id = "" value = "<?php echo $post_to; ?>"> 			
			<input type="hidden" id = "" name="post-type"  id = "" value = "<?php echo $post_type; ?>"> 		
			
			<!-- Hidden Values: Notification Specific --> 
			<input type="hidden" id = "" name="notification-message"  id = "" value = "<?php echo $notification_message; ?>" > 
			<input type="hidden" id = "" name="notification-type"  id = "" value = "<?php echo $notification_type; ?>" > 
			<input type="hidden" id = "" name="notification-link"  id = "" value = "<?php echo $notification_link; ?>" > 				
		
		</div>	
		
	</form>
</section>
