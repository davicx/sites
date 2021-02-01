<?php 

//PART 1: Photo Specific Variables 
$post_type = "file";  
$parent = 0;
$destination = FILE_UPLOAD;

//PART 2: Site Specific Notifications 
$notification_message = "shared a file"; 
$notification_type = "new_post_file"; 
//$notification_link = "groups_posts.php?group_id=" . base64_encode($group_id);
$notification_link    = "groups_lists.php?group_id=" . base64_encode($group_id) . "&list_id=" . $list_id;

//PART 3: Error Handling Variables 
		
?>

<!-- POST: File -->
<div class = "">
			
	<!-- Create File Post -->
	<form action="" method="post" enctype="multipart/form-data" id="uploadImage">
	
		<div class="uk-grid ">		
			
			<!-- Caption -->			
			<div class="uk-width-10-10">
				<p class = "new-post-text"> Enter File Caption </p>
				<textarea name="post-file-caption" id = "" class = "post-input-text-full" placeholder="Enter the Caption"></textarea>
			</div>

			<!-- Upload File -->				
			<div class = "uk-width-10-10">
				<p id = "js-trigger-browse-for-file-post-file" class = "file-upload-browse-button button-white post-button"> Add File + </p>		
				<p id = "js-trigger-upload-file-post-file" class = "hide file-upload-upload-button button-blue post-button"> Upload </p>
			</div>	
			
			<div class="uk-width-9-10 post-upload-file-name">
				<p id = "js-post-upload-file-ui-text" class = "hide post-upload-file-text "> <b>File: </b> </p>
				<p id = "js-selected-file-name-post-file" class = "post-upload-file-text file-upload-selected-file-name post-upload-file-text"></p>		
				<!-- 	<p id = "js-selected-file-name-post-file" class = "file-upload-selected-file-name"></p>-->
			</div>	

			
			<!-- Actual Upload (Hidden) -->
			<div class = "hide">
				<input type="file" name="image" id="js-browse-for-file-post-file" class = "">
				<input type="submit" name="upload-post-file" id="js-file-upload-submit-post-file" class = "" value="Upload">
			</div>	
					
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

	
	</form> 
</div>



<?php /*
		<div class="uk-grid ">		
			
			<!-- Caption -->			
			<div class="uk-width-10-10">
				<p class = "new-post-text"> Enter Photo Caption </p>
				<textarea name="caption" id = "" class = "post-input-text-full" placeholder="Enter the Caption"></textarea>
			</div>
			
			<!-- Upload File -->	
			<div class="uk-width-10-10">				
				<p id = "js-trigger-browse-for-post-photo" class = "file-upload-browse-button button-white post-button"> Add Photo + </p>		
				<p id = "js-trigger-upload-post-photo" class = " hide file-upload-upload-button button-blue post-button"> Make Post </p>
			</div> 
			
			<!-- File Name -->			
			<div class="uk-width-9-10 post-upload-file-name">
				<p id = "" class = "js-selected-post-photo-name post-upload-file-text file-upload-selected-file-name"></p>
			</div>
			
		</div>
*/ ?>

