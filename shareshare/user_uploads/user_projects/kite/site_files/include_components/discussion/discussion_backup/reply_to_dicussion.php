<?php 
//PART 1: Discussion Variables
$text_error_message = "Please enter something ";


//PART 2: Site Specific Notifications 
$notification_message = "added to a group discussion "; 
$notification_type = "group_discussion"; 
$notification_link    = "groups_discussion.php?group_id=" . base64_encode($group_id);

?>

<!-- REPLY to Discussion -->
<div id = "js-reply-to-discussion-area_<?php echo $post_id; ?>" class = "js-reply-to-discussion-area hide discussion-child">

	<form action="" method="post" enctype="multipart/form-data" id="">
		
		<!-- Discussion: Input Text Box -->
		<textarea name="new-discussion" id = "js-new-discussion-text-area_<?php echo $post_id; ?>" class = "new-discussion-text-area" placeholder="Join "></textarea>
		
		<!-- Discussion: Error Text Area Empty -->
		<div id = "js-discussion-empty-warning_<?php echo $post_id; ?>" class = "hide">
			<p> Please Enter a Comment </p>
		</div>
						
		<!-- Type 1: Just Discussion -->
		<div id = "js-new-discussion-text-type_<?php echo $post_id; ?>" class = "">
			<p id = "js-submit-child-discussion_<?php echo $post_id; ?>" class = "js-submit-child-discussion temp-text"> Submit </p>		
			<p id = "js-trigger-browse-for-file-discussion_<?php echo $post_id; ?>" class = "hide temp-text"> Add File </p>		
			<p id = "js-cancel-discussion-post_<?php echo $post_id; ?>" class = "js-cancel-discussion-post temp-text"> Cancel </p>	
		</div>		

		<!-- Type 2: Add Discussion File -->
		<?php //include('include_components/discussion/add_file.php') ?>

		<!-- Hidden Values: Post Specific -->
		<input type="hidden" name="master-site" id = "" value="<?php echo $master_site; ?>">
		<input type="hidden" name="logged-in-user"  id = "" value = "<?php echo $logged_in_user; ?>"> 		
		<input type="hidden" name="post-from"  id = "" value = "<?php echo $logged_in_user; ?>" > 
		<input type="hidden" name="post-to"  id = "js-post-text-to_<?php echo $post_id; ?>" value = "<?php echo $post_to; ?>"> 		
		<input type="hidden" id = "js-discussion-current-parent_<?php echo $post_id; ?>" name="parent" value="<?php echo $parent; ?>">
		<input type="hidden" name="group-id" value="<?php echo $group_id; ?>">	
		<input type="hidden" name="post-type"  value = "<?php echo $post_type; ?>"> 		
		<input type="hidden" name="notification-discussion-reply-message"  value = "<?php echo $notification_message; ?>" > 
		<input type="hidden" name="notification-discussion-reply-type"  value = "<?php echo $notification_type; ?>" > 
		<input type="hidden" name="notification-discussion-reply-link" value = "<?php echo $notification_link; ?>" > 			
		
	</form>

</div>










