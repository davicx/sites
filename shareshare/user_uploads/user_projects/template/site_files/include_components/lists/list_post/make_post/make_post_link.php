<?php 
//PART 1: Photo Specific Variables 
$post_type = "link"; 

//PART 2: Site Specific Notifications 
$notification_message = "shared to a list"; 
$notification_type = "new_post_link"; 
$notification_link    = "groups_lists.php?group_id=" . base64_encode($group_id) . "&list_id=" . $list_id;

//PART 3: Error Handling Variables 
$text_error_message = "Please enter a link ";

?>

<!-- POST: Link -->
<div class = "">
			

	<!-- Post Link -->
	<div class="uk-width-10-10">
		<p class = "new-post-text"> Enter Link </p>			
		<input type="text" name="" id = "js-add-link-url" value= "" class = "post-link-input-full" placeholder="Enter the Link (URL)"><br />
	
		<!-- Error Message -->
		<div id = "js-link-comment-warning" class = "hide ">	
			<p class = "error-message-red link-error-text"><b>Please enter a link</b></p>
		</div>	
		
	</div><br />
	
	<!-- Link Description -->
	<div class="uk-width-10-10">
		<p class = "new-post-text"> Enter a Description for the Link </p>			
		<textarea name="post-text-caption" id = "js-link-caption" class = "post-input-text-full " placeholder="Enter the Text"></textarea><br />
	</div>		
	<br />
	
	<!-- Caption -->		
	<div class="uk-width-10-10 hide">
		<p class = "new-post-text"> Enter Description </p>
		<textarea name="post-text-caption" id = "js-add-link-description" class = "post-input-text-full " placeholder="Enter the Text"></textarea>
	</div>		

	<!-- Submit -->
	<div class="uk-width-10-10 post-text-submit-area">		
		<button type="button" id="js-add-link-submit" class="button-blue post-button">Share</button>
		<button type="button" class="button-white post-button">Cancel</button>	
	</div>		
			
	<!-- Hidden Values: Post Specific -->
	<input type="hidden" name="master-site" id = "" value="<?php echo $master_site; ?>">	
	<input type="hidden" name="logged-in-user"  id = "" value = "<?php echo $logged_in_user; ?>"> 	
	<input type="hidden" name=""  id = "" value = "<?php echo $visiting_friend; ?>"> 
	<input type="hidden" name="post-from"  id = "js-post-link-from" value = "<?php echo $logged_in_user; ?>" > 
	<input type="hidden" name="post-to"  id = "js-post-link-to" value = "<?php echo $post_to; ?>"> 
	<input type="hidden" id = "js-link-group-id" name="group-id" value="<?php echo $group_id; ?>">
	<input type="hidden" id = "js-link-list-id" name="list-id" value="<?php echo $list_id; ?>">		
	<input type="hidden" name="post-type"  id = "js-post-link-type" value = "<?php echo $post_type; ?>"> 		
	<input type="hidden" name="notification-message"  id = "js-link-notification-message" value = "<?php echo $notification_message; ?>" > 
	<input type="hidden" name="notification-type"  id = "js-link-notification-type" value = "<?php echo $notification_type; ?>" > 
	<input type="hidden" name="notification-link"  id = "js-link-notification-link" value = "<?php echo $notification_link; ?>" > 		



</div>





<?php 

/*
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



*/ ?>














