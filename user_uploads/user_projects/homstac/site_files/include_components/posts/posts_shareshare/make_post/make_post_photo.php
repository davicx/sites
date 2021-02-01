<?php 

//PART 1: Photo Specific Variables 
$post_type = "photo"; 
$destination = POST_UPLOAD;

//PART 2: Site Specific Notifications 
$notification_message = "shared a photo"; 
$notification_type = "new_post_photo"; 
$notification_link    = "groups_posts.php?group_id=" . base64_encode($group_id);

//PART 3: Error Handling Variables 
$photo_error_message = "Please enter a comment ";
	
?>

<!-- POST: Photo -->
<div class = "">
			
	<!-- Create Photo Post -->
	<form action="" method="post" enctype="multipart/form-data" id="uploadImage">
	
		<div class="uk-grid ">		
			
			<!-- Caption -->			
			<div class="uk-width-7-10">
				<textarea name="caption" id = "" class = "make-post-input-text-area " placeholder="Enter the Caption"></textarea>
			</div>
			
			<!-- Upload File -->	
			<div class="uk-width-3-10">				
				<p id = "js-trigger-browse-for-post-photo" class = "file-upload-browse-button"> Add File + </p>		
				<p id = "js-trigger-upload-post-photo" class = " hide file-upload-upload-button"> Make Post </p>
				<p id = "" class = "js-selected-post-photo-name file-upload-selected-file-name"></p>
				<p> <?php echo $group_id; ?> </p>
			</div>
			
		</div>
		
		<!-- HIDDEN VALUES -->
		<!-- Hidden Values: Actual Upload -->
		<div class = "hide">
			<input type="file" name="image" id="js-browse-for-post-photo" class = "hide">
			<input type="submit" name="upload-post-photo" id="js-post-photo-upload-submit" class = "hide" value="Upload">
		</div>	
	
		<!-- Hidden Values: Upload Specific -->
		<input type="hidden" id = "" name="destination" value="<?php echo $destination; ?>">		
		<input type="hidden" name="max-file-size" value="<?php echo $max; ?>">
		<input type="hidden" id = "" name="user" value="<?php echo $logged_in_user; ?>">
		<input type="hidden" id = "" name="post-id" value="0">
		<input type="hidden" id = "" name="folder" value="0">
		<input type="hidden" id = "" name="parent" value="0">
		<input type="hidden" id = "" name="redirect" value="<?php echo $redirect; ?>">

		<!-- Hidden Values: Post Specific -->
		<input type="hidden" name="logged-in-user"  id = "" value = "<?php echo $logged_in_user; ?>"> 	
		<input type="hidden" name="visiting-friend"  id = "" value = "<?php echo $visiting_friend; ?>">
		<input type="hidden" name="visiting-friend-id"  id = "" value = "<?php echo $visiting_friend; ?>">
		<input type="hidden" name="group-id" id = "" value="<?php echo $group_id; ?>">
		<input type="hidden" name="list-id" id = "" value="<?php echo $list_id; ?>">		
		<input type="hidden" name="post-from"  id = "" value = "<?php echo $logged_in_user; ?>" > 
		<input type="hidden" name="post-to"  id = "" value = "<?php echo $post_to; ?>"> 		
		<input type="hidden" name="post-type"  id = "" value = "<?php echo $post_type; ?>"> 		
		<input type="hidden" name="notification-message"  id = "" value = "<?php echo $notification_message; ?>" > 
		<input type="hidden" name="notification-type"  id = "" value = "<?php echo $notification_type; ?>" > 
		<input type="hidden" name="notification-link"  id = "" value = "<?php echo $notification_link; ?>" > 		
		<input type="hidden" name="master-site" id = "" value="<?php echo $master_site; ?>">				
	</form> 
</div>


<?php 
/*

	
	//Type 2: Visiting a Friend
	if (isset($_GET["friend_id"])) {
		$friend_id = $_GET["friend_id"];
		$visiting_friend_id = $_GET["friend_id"];
		$currently_on_friend_page = 1;
		//$visiting_friend_id = $list_id;
		$visiting_page_id = $list_id;
		$current_page_user_name = getUserName($friend_id);;	
		$visiting_friend_name = getUserName($friend_id);;	
		$post_to = getUserName($friend_id);	
		$post_to_type = "friend";	
	} 
	

*/ ?>

