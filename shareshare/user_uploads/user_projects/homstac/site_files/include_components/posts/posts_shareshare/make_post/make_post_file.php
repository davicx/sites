<?php 

//PART 1: Photo Specific Variables 
$post_type = "file";  
$parent = 0;
$destination = FILE_UPLOAD;

//PART 2: Site Specific Notifications 
$notification_message = "shared a file"; 
$notification_type = "new_post_file"; 
$notification_link = "groups_posts.php?group_id=" . base64_encode($group_id);

//PART 3: Error Handling Variables 
		
?>

<!-- POST: File -->
<div class = "">
			
	<!-- Create File Post -->
	<form action="" method="post" enctype="multipart/form-data" id="uploadImage">
	
		<div class="uk-grid ">		
			
			<!-- Caption -->			
			<div class="uk-width-7-10">
				<textarea name="post-file-caption" id = "" class = "make-post-input-text-area " placeholder="Enter the Caption"></textarea>
			</div>
			
			<!-- Upload File -->				
			<div class = "uk-width-3-10">
				<p id = "js-trigger-browse-for-file-post-file" class = "file-upload-browse-button"> Add File + </p>		
				<p id = "js-trigger-upload-file-post-file" class = "hide file-upload-upload-button"> Upload </p>
				<p id = "js-selected-file-name-post-file" class = "file-upload-selected-file-name"></p>
			</div>	
			
			<!-- Actual Upload (Hidden) -->
			<div class = "hide">
				<input type="file" name="image" id="js-browse-for-file-post-file" class = "">
				<input type="submit" name="upload-post-file" id="js-file-upload-submit-post-file" class = "" value="Upload">
			</div>	
			
			<!-- Hidden Values: Upload and Post Specific -->
			<input type="hidden" id = "" name="destination" value="<?php echo $destination; ?>">	
			<input type="hidden" name="master-site" id = "" value="<?php echo $master_site; ?>">			
			<input type="hidden" name="logged-in-user"  id = "" value = "<?php echo $logged_in_user; ?>"> 			
			<input type="hidden" name="post-from"  id = "" value = "<?php echo $logged_in_user; ?>" >
			<input type="hidden" name="parent"  id = "" value = "<?php echo $parent; ?>" >			
			<input type="hidden" name="post-to"  id = "" value = "<?php echo $post_to; ?>"> 			
			<input type="hidden" name="post-type"  id = "" value = "<?php echo $post_type; ?>"> 				
			<input type="hidden" id = "" name="group-id" value="<?php echo $group_id; ?>">			
			<input type="hidden" id = "" name="list-id" value="<?php echo $list_id; ?>">			
			<input type="hidden" name="notification-message"  id = "" value = "<?php echo $notification_message; ?>" > 
			<input type="hidden" name="notification-type"  id = "" value = "<?php echo $notification_type; ?>" > 
			<input type="hidden" name="notification-link"  id = "" value = "<?php echo $notification_link; ?>" > 			
				
		</div>
	
	</form> 
</div>

