<?php 
$parent = 0;

//PART 1: Video Specific Variables 
$post_type = "video";

//PART 2: Site Specific Notifications 
$notification_message = "shared a video"; 
$notification_type = "new_post_video"; 
$notification_link = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";

//PART 3: Error Handling Variables 
$video_error_message = "Please enter a video link ";

?> 

<!-- POST: Video -->
<div class = "">

	<form action="" id="add-video">	
		<div class="uk-grid ">		
			
			<!-- Video URL: Database post_url -->	
			<div class="uk-width-10-10">		
				<p class = "new-post-text"> Enter Video Link </p>			
				<input type="text" name="video-url" id = "" value= "https://www.youtube.com/watch?v=dh7WPfmlzBA" class = "post-link-input-full" placeholder="Enter the Video Link"><br />
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
		
		<!-- Hidden Values: Site and User Specific -->
		<input type="hidden" id = "" name="master-site" value="<?php echo $master_site; ?>">
		<input type="hidden" id = "" name="logged-in-user" value="<?php echo $logged_in_user; ?>">	
		<input type="hidden" id = "" name="group-id" value="<?php echo $group_id; ?>">	
		<input type="hidden" id = "" name="list-id" value="<?php echo $list_id; ?>">	
		
		<!-- Hidden Values: Post Specific -->
		<input type="hidden" id = "" name="post-from"  id = "" value = "<?php echo $logged_in_user; ?>" >		
		<input type="hidden" id = "" name="post-to"  id = "" value = "<?php echo $post_to; ?>"> 			
		<input type="hidden" id = "" name="post-type"  id = "" value = "<?php echo $post_type; ?>"> 		
		
		<!-- Hidden Values: Notification Specific -->
		<input type="hidden" id = "js-notification-message-video" name="notification-message" value = "<?php echo $notification_message; ?>" > 
		<input type="hidden" id = "js-notification-type-video" name="notification-type"  value = "<?php echo $notification_type; ?>" > 
		<input type="hidden" id = "js-notification-link-video" name="notification-link"  value = "<?php echo $notification_link; ?>" > 		

	</form> 
</div>	

