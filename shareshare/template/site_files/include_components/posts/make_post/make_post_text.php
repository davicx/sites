<?php 
//PART 1: Photo Specific Variables 
$post_type = "text"; 

//PART 2: Site Specific Notifications 
$notification_message = "made a comment "; 
$notification_type = "new_post_text"; 
//$notification_link    = "posts.php?group_id=" . base64_encode($group_id);
$notification_link = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";

//PART 3: Error Handling Variables 
$text_error_message = "Please enter a comment ";

?>

<!-- POST: Photo -->
<div class = "">
			
		<!-- Caption -->			
		<div class="uk-width-10-10">
			<p class = "new-post-text"> Enter Text</p>
			<textarea name="post-text-caption" id = "js-post-text-caption" class = "post-input-text-full " placeholder="Enter the Text"></textarea>
			
			<!-- Error Message -->
			<div id = "js-text-comment-warning" class = "hide">	
				<p><?php echo $text_error_message; ?> </p>
			</div>	
		</div>		

		<!-- Submit -->
		<div class="uk-width-10-10 post-text-submit-area">		
			<button type="button" id="js-add-text-submit" class="button-blue post-button">Share</button>
			<button type="button" class="uk-modal-close button-white post-button">Cancel</button>	
		</div>		
				
		<!-- Hidden Values: Post Specific -->
		<input type="hidden" name="logged-in-user"  id = "" value = "<?php echo $logged_in_user; ?>"> 	
		<input type="hidden" name="post-from"  id = "" value = "<?php echo $logged_in_user; ?>" > 
		<input type="hidden" name="post-to"  id = "js-post-text-to" value = "<?php echo $post_to; ?>"> 		
		<input type="hidden" id = "" name="folder" value="">
		<input type="hidden" id = "" name="parent" value="">
		<input type="hidden" id = "" name="group-id" value="<?php echo $group_id; ?>">
		<input type="hidden" id = "" name="list-id" value="<?php echo $list_id; ?>">		
		<input type="hidden" name="post-type"  id = "js-post-text-type" value = "<?php echo $post_type; ?>"> 		
		<input type="hidden" name="notification-message"  id = "js-text-notification-message" value = "<?php echo $notification_message; ?>" > 
		<input type="hidden" name="notification-type"  id = "js-text-notification-type" value = "<?php echo $notification_type; ?>" > 
		<input type="hidden" name="notification-link"  id = "js-text-notification-link" value = "<?php echo $notification_link; ?>" > 		
		<input type="hidden" name="master-site" id = "" value="<?php echo $master_site; ?>">	
		
</div>
