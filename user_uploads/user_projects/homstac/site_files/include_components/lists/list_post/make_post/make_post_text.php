<?php 
//PART 1: Photo Specific Variables 
$post_type = "text"; 

//PART 2: Site Specific Notifications 
$notification_message = "made a comment "; 
$notification_type = "new_post_text"; 
$notification_link = "groups_lists.php?group_id=" . base64_encode($group_id) . "&list_id=" . $list_id;

//PART 3: Error Handling Variables 
$text_error_message = "Please enter a comment ";

?>

<!-- POST: Photo -->
<div class = "">
			
		<!-- Caption -->			
		<div class="uk-width-7-10">
			<textarea name="post-text-caption" id = "js-post-text-caption" class = " " placeholder="Enter the Caption"></textarea>
		</div>
		
		<!-- Error Message -->
		<div id = "js-text-comment-warning" class = "hide">	
			<p><?php echo $text_error_message; ?> </p>
		</div>	
		
		<!-- Product Info (wishlist) -->
		<div class = "hide">				
			<input type="text" name="text-item-title" id = "js-text-item-title" class = "wishlist-input-style-small" placeholder="Enter the Title">
			<textarea name="text-item-description" id = "js-text-item-description" class = "wishlist-modal-textarea" placeholder="Enter the Description"></textarea>		
			<input type="text" name="text-item-link" id = "js-text-item-link" class = "wishlist-input-style-small" placeholder="Enter a Link">			
		</div>	
			
		<!-- Hidden Values: Post Specific -->
		<input type="hidden" name="logged-in-user"  id = "" value = "<?php echo $logged_in_user; ?>"> 	
		<input type="hidden" name="visiting-friend"  id = "" value = "<?php echo $visiting_friend; ?>"> 	
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

		<!-- Submit -->
		<button type="button" id="js-add-text-submit" class="">Share</button>
		<button type="button" class="">Cancel</button>	
		<?php echo $post_to; ?>
</div>





























