<?php
	//Required Components
	//Javascript: files.js code 
	//Server: files.php
	//Server Class: File.php
	
	//Include Page Header 
	require_once('../../functions/page_header.php');
	require_once('../../functions/files.php');	
	
	//PART 1: Form Upload Keys
	//Wishlist 
	$upload_key = "wishlist_image";
	$destination = FILE_UPLOAD;	
	
	//Shareshare Post
	$upload_key = "shareshare_post";
	$destination = FILE_UPLOAD;

	//Shareshare File (put in file system)
	$upload_key = "shareshare_file";
	$destination = FILE_UPLOAD;	
	
	//User Profile 
	$upload_key = "user_profile";
	$destination = USER_IMAGE;	
	
	//Post Image (post_images)
	$upload_key = "post_image";
	$destination = POST_UPLOAD;

	//Temporary Article Image  
	$upload_key = "temp_article_image";
	$destination = TEMP_ARTICLE_UPLOAD;

	//User File Upload (user_file_uploads)
	$upload_key = "user_file_upload";
	$destination = USER_FILE_UPLOADS;

	//PART 2: Current Page URL 
	$current_url = getCurrentURL();
	$redirect = getCurrentURL();
	
	//PART 3: Notification Information
	$notification_message = "add_notification_message"; 
	$notification_type = "add_notification_type"; 
	$notification_link = "add_link_here";
	
?>


<!-- SECTION: Trigger Upload with Jquery -->
<section id = "upload_form">
	<form action="" method="post" enctype="multipart/form-data" id="uploadImage">
	
		<!-- Upload File -->		
		<div class = "">
			<p id = "js-trigger-browse-for-file" class = "file-upload-browse-button"> Add File + </p>		
			<p id = "js-trigger-upload-file" class = "file-upload-upload-button"> Upload </p>
			<p id = "js-selected-file-name" class = "file-upload-selected-file-name"></p>	
		</div>
		
		
		
		<?php
		/*
		*this code can be added into to make this upload a post photo 
		
				<div class="uk-grid ">		
			
			<!-- Caption -->			
			<div class="uk-width-10-10">
				<p class = "new-post-text"> Enter Photo Caption </p>
				<textarea name="caption" id = "" class = "post-input-text-full" placeholder="Enter the Caption"></textarea>
			</div>
			
			<!-- Upload File -->	
			<div class="uk-width-10-10">				
				<p id = "js-trigger-upload-post-photo" class = " hide file-upload-upload-button button-blue post-button"> Make Post </p>		
				<p id = "js-trigger-browse-for-post-photo" class = "file-upload-browse-button button-white post-button"> Add Photo + </p>		
			</div> 
			
			<!-- File Name -->			
			<div class="uk-width-9-10 post-upload-file-name">
				<p id = "js-post-upload-photo-ui-text" class = "hide post-upload-file-text "> <b>File: </b> </p>			
				<p id = "" class = "js-selected-post-photo-name post-upload-file-text file-upload-selected-file-name"></p>
			</div>
			
		</div>
		*/
		?>
		
		<!-- Actual Upload (Hidden) -->
		<div class = "hide">
			<input type="file" name="image" id="js-browse-for-file" class = "">
			<input type="submit" name="file-upload-post" id="js-file-upload-submit" class = "" value="Upload">
			<input type="hidden" name="max-file-size" value="<?php echo $max; ?>">
		</div>	
		
		<!-- Hidden Values: Site and User Specific -->
		<input type="hidden" id = "" name="master-site" value="<?php echo $master_site; ?>">
		<input type="hidden" id = "" name="logged-in-user" value="<?php echo $logged_in_user; ?>">
		<input type="hidden" id = "" name="destination" value="<?php echo $destination; ?>">	

		<!-- Hidden Values: File Specific -->

		
		<?php /*
		<input type="hidden" id = "" name="upload-key" value="<?php echo $upload_key; ?>">
		

		<input type="hidden" id = "" name="group-id" value="<?php echo $group_id; ?>">
		<input type="hidden" id = "" name="list-id" value="<?php echo $list_id; ?>">			
		<input type="hidden" id = "" name="current-folder" value="<?php echo $current_folder; ?>">
		<input type="hidden" id = "" name="parent-folder" value="<?php echo $parent_folder; ?>">
		<input type="hidden" id = "" name="caption" value="<?php echo $caption; ?>">
		<input type="hidden" id = "" name="redirect" value="<?php echo $redirect; ?>">

		<!-- Hidden Values: Post Specific -->
		<input type="hidden" id = "" name="post-id" value="<?php echo $post_id; ?>">
		<input type="hidden" id = "" name="post-from"  id = "" value = "<?php echo $logged_in_user; ?>" >		
		<input type="hidden" id = "" name="post-to"  id = "" value = "<?php echo $post_to; ?>"> 			
		<input type="hidden" id = "" name="post-type"  id = "" value = "<?php echo $post_type; ?>"> 		
		
		<!-- Hidden Values: Notification Specific -->
		<input type="hidden" id = "" name="notification-message"  id = "" value = "<?php echo $notification_message; ?>" > 
		<input type="hidden" id = "" name="notification-type"  id = "" value = "<?php echo $notification_type; ?>" > 
		<input type="hidden" id = "" name="notification-link"  id = "" value = "<?php echo $notification_link; ?>" > 				
		
		
		*/ ?>
		
	</form>
</section>

