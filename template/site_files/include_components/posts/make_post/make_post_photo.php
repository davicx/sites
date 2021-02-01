<?php
	require_once('../../functions/posts.php');
	
	//PART 1: Photo Upload Input Variables
	$destination = POST_PHOTO_UPLOAD;
	
	$redirect = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
	$post_type = "photo"; 
	$photo_error_message = "Please enter a comment ";
	
	//PART 3: Notification Information
	$notification_message = "shared a photo"; 
	$notification_type = "new_post_photo"; 
	$notification_link = $redirect;	
	//http://people.oregonstate.edu/~vasquezd/sites/template/site_files/posts.php?group_id=MzIx
?>
<form action="#" method="post" enctype="multipart/form-data">

	<!-- Upload File -->				
	<div class = "">
		<p id = "js-trigger-browse-for-post-photo" class = "file-upload-browse-button"> Add Photo + </p>		
		<p id = "js-trigger-upload-post-photo" class = "file-upload-upload-button"> Upload </p>
		<p id = "js-selected-upload-post-photo-name" class = "file-upload-selected-file-name"></p>
	</div>	
	
	<textarea name="photo-caption" id = "js-post-photo-caption" class = "post-input-text-full" placeholder="Enter the Caption"></textarea>
	<p class = "js-error-no-file-selected hide"> Please select a file </p>
	<?php echo $board_id; ?>
		
	<!-- Actual Upload (Hidden) -->
	<div class = "hide">
		<input type="file" name="file-name" id="js-browse-for-post-photo">
		<input type="submit" value="Upload Image" name="post-photo-upload" id="js-post-photo-upload-submit" >
	</div>	

	<!-- Hidden Values: Site and User Specific -->
	<input type="hidden" id = "" name="logged-in-user" value="<?php echo $logged_in_user; ?>">
	<input type="hidden" id = "" name="redirect" value="<?php echo $redirect; ?>">	
	<input type="hidden" id = "" name="destination" value="<?php echo $destination; ?>">	
	<input type="hidden" id = "" name="master-site" value="<?php echo $master_site; ?>">
	<input type="hidden" id = "" name="post-type"  id = "" value = "<?php echo $post_type; ?>"> 		
	<input type="hidden" id = "" name="group-id" value="<?php echo $group_id; ?>">	
	<input type="hidden" id = "" name="board-id" value="<?php echo $board_id; ?>">	
	<input type="hidden" id = "" name="list-id" value="<?php echo $group_id; ?>">	
	<input type="hidden" id = "" name="post-from"  id = "" value = "<?php echo $logged_in_user; ?>" >		
	<input type="hidden" id = "" name="post-to"  id = "" value = "<?php echo $post_to; ?>"> 		
	<input type="hidden" id = "" name="notification-message"  id = "" value = "<?php echo $notification_message; ?>" > 
	<input type="hidden" id = "" name="notification-type"  id = "" value = "<?php echo $notification_type; ?>" > 
	<input type="hidden" id = "" name="notification-link"  id = "" value = "<?php echo $notification_link; ?>" > 
			
</form>



<?php
/*


?>


<section id = "upload_form">
	<form action="" method="post" enctype="multipart/form-data" id="">
		<div class="uk-grid ">	
	
			<!-- Caption -->			
			<div class="uk-width-10-10">
				<p class = "new-post-text"> Enter Photo Caption </p>
				<textarea name="caption" id = "js-post-photo-caption" class = "post-input-text-full" placeholder="Enter the Caption"></textarea>
			</div>

			<!-- File Name -->			
			<div class="uk-width-9-10 post-upload-file-name">
				<p id = "js-selected-file-name" class = ""></p>	
			</div>
			
			<!-- Upload File -->		
			<div class = "uk-width-10-10">
				<p id = "js-make-photo-post" class = "file-upload-upload-button button-blue post-button"> Make Post </p>
				<p id = "js-trigger-browse-for-file" class = "file-upload-browse-button button-white post-change-file-button"> Add Photo + </p>		
				<p id = "js-trigger-upload-file" class = "hide button-white post-button"> Upload File (hidden and clicked by JS) </p>	
			</div>
			
			<div class = "uk-width-10-10">
				<p id = "js-error-post-no-photo-selected" class = "hide"> please select a photo first </p>
			</div>

			<!-- Actual Upload (Hidden) -->
			<div class = "hide">
				<input type="file" name="image" id="js-browse-for-file" class = "">
				<input type="submit" name="file-upload-post-photo" id="js-file-upload-submit" class = "" value="Upload">
			</div>	
			
			<!-- Hidden Values: Site and User Specific -->
			<input type="hidden" id = "" name="master-site" value="<?php echo $master_site; ?>">
			<input type="hidden" id = "" name="logged-in-user" value="<?php echo $logged_in_user; ?>">
			<input type="hidden" id = "" name="destination" value="<?php echo $destination; ?>">		
			<input type="hidden" id = "" name="group-id" value="<?php echo $group_id; ?>">
			<input type="hidden" id = "" name="list-id" value="<?php echo $list_id; ?>">		


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
*/ ?>
<?php 
/*
	post_id 
	master_site
	post_type
	post_status
	parent
	group_id 
	list_id 
	post_from 
	post_to 
	post_caption
	post_url 
	post_url_caption
	video_code 
	image_url
	file_url 
	file_name file_name_server 
	article_title 
	article_text 
	contains_file 
	unique_id 
	purchased 
	purchased_by
	password_email 
	password_notes 
	comment_seen 
	updated created
*/
?>
<?php /*
<form action="#" method="post" enctype="multipart/form-data">

	<!-- Upload File -->				
	<div class = "">
		<p id = "js-trigger-browse-for-file" class = "file-upload-browse-button"> Add File + </p>		
		<p id = "js-trigger-upload-file" class = "file-upload-upload-button"> Upload </p>
		<p id = "js-selected-upload-file-name" class = "file-upload-selected-file-name"></p>
	</div>	
	
	
					
	<!-- Actual Upload (Hidden) -->
	<div class = "hide">
		<input type="file" name="file-name" id="js-browse-for-file">
		<input type="submit" value="Upload Image" name="post-photo-upload" id="js-file-upload-submit" >
	</div>	

	<!-- Hidden Values -->
	<input type="hidden" id = "" name="master-site" value="<?php echo $master_site; ?>">	
	<input type="hidden" id = "" name="logged-in-user" value="<?php echo $logged_in_user; ?>">
	<input type="hidden" id = "" name="group-id" value="<?php echo $group_id; ?>">
	<input type="hidden" id = "" name="folder" value="<?php echo $current_folder; ?>">
	<input type="hidden" id = "" name="parent" value="<?php echo $parent_folder; ?>">
	<input type="hidden" id = "" name="destination" value="<?php echo $destination; ?>">
	<input type="hidden" id = "" name="caption" value="<?php echo $caption; ?>">
	<input type="hidden" id = "" name="redirect" value="<?php echo $redirect; ?>">
	<input type="hidden" id = "" name="notification-message" value="<?php echo $notification_message; ?>">
	<input type="hidden" id = "" name="notification-type" value="<?php echo $notification_type; ?>">
	<input type="hidden" id = "" name="notification-link" value="<?php echo $notification_link; ?>">

</form>
*/ ?>