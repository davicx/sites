<?php 
$parent = 0;

//PART 1: Video Specific Variables 
$post_type = "video";

//PART 2: Site Specific Notifications 
$notification_message = "shared a video"; 
$notification_link = "wall.php";
$notification_type = "new_post_video"; 
$notification_link = "";

if($group_id != 0 && $list_id !=0) {
	$notification_message = "shared a video"; 
} else if($group_id != 0) {
	$notification_message = "shared a video"; 
} else if ($list_id !=0) {
	$notification_message = "shared a video to a list"; 
} else {
	$notification_message = "posted a video on your wall"; 
}

//PART 3: Error Handling Variables 
$video_error_message = "Please enter a video link ";


?> 

<!-- POST: Video -->
<div class = "make-post-video">

	<form action="" id="add-video">	
		<div class="uk-grid ">		
			
			<!-- Video URL: Database post_url -->	
			<div class="uk-width-10-10">		
				<p class = "new-post-text"> Enter Video Link </p>			
				<input type="text" name="video-url" id = "" value= "" class = "post-link-input-full" placeholder="Enter the Video Link"><br />
			</div>
			
			<!-- Caption: Database post_caption -->	
			<div class="uk-width-10-10">				
				<textarea name="video-caption" id = "js-post-video-caption" class = "post-input-text-full" placeholder="Enter the Caption"></textarea>
				<div id = "js-video-comment-warning" class = "hide"> <?php echo $video_error_message; ?> </div>
			</div>
			
			<!-- Submit Button -->
			<div class="uk-width-10-10">			
				<button type="button" id="js-make-post-video-submit"  class = "button-blue post-button-video "> Share Video </button>
				<button type="button" class="uk-modal-close button-white post-button-video">Cancel</button>
			</div>				

		</div>	

	<?php 
/*
button-white button-blue

.new-post-divider {
	border-bottom: 1px solid rgba(0, 0, 0, 0.1);
	margin-bottom: 8px;
}				
				
			
.post-input-text-full {
	width: 80%;
}		

.post-link-input-full {
	width: 80%;
}		

.post-upload-file-name {
	min-height: 24px;
}

.post-upload-file-text {
	margin: 0px;
	padding: 0px;	
}
 		
		<div class="uk-grid ">		
			
			<!-- Caption -->			
			<div class="uk-width-10-10">
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
		
*/
?>
	
	
	
		<!-- Hidden Values: Post Specific -->
		<input type="hidden" name="logged-in-user"  id = "" value = "<?php echo $logged_in_user; ?>"> 			
		<input type="hidden" name="visiting-friend"  id = "" value = "<?php echo $visiting_friend; ?>"> 	
		<input type="hidden" name="post-from"  id = "js-video-post-from" value = "<?php echo $logged_in_user; ?>" > 
		<input type="hidden" name="post-to"  id = "js-video-post-to" value = "<?php echo $post_to; ?>"> 		
		<input type="hidden" name="folder" id = "" value="">
		<input type="hidden" name="parent"  id = "js-video-parent" value = "<?php echo $parent; ?>" >
		<input type="hidden" name="group-id" id = "js-video-group-id" value="<?php echo $group_id; ?>">
		<input type="hidden" name="list-id"  id = "js-video-list-id" value = "<?php echo $list_id; ?>" > 		
		<input type="hidden" name="post-type"  id = "js-video-post-type" value = "video"> 
		<input type="hidden" name="notification-message"  id = "js-video-notification-message" value = "<?php echo $notification_message; ?>" > 
		<input type="hidden" name="notification-link"  id = "js-video-notification-link" value = "<?php echo $notification_link; ?>" > 		
		<input type="hidden" name="notification-type"  id = "js-video-notification-type" value = "<?php echo $notification_type; ?>" > 		
		<input type="hidden" name="master-site" id = "js-video-master-site" value="<?php echo $master_site; ?>">			


	</form> 
</div>	

