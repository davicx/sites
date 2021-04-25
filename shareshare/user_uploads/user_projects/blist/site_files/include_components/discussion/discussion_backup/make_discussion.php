<?php 
//PART 1: Discussion Variables
$master_site = MASTER_SITE;
$post_type 	 = "discussion";
$post_to 	 = $group_id;	
$parent 	 = 0;

//PART 2: Site Specific Notifications 
$notification_message = "added to a group discussion "; 
$notification_type = "group_discussion"; 
$notification_link    = "groups_discussion.php?group_id=" . base64_encode($group_id);

//PART 3: Error Handling Variables 
$text_error_message = "Please enter something ";

?>

<!-- DISCUSSION -->
<div class = "">
	<form action="" method="post" enctype="multipart/form-data" id="">
		
		<!-- Discussion: Input Text Box -->
		<textarea name="new-discussion" id = "js-new-discussion-text-area" class = "new-discussion-text-area" placeholder="Join "></textarea>
		
		<!-- Discussion: Error Text Area Empty -->
		<div id = "js-discussion-empty-warning" class = "hide">
			<p> Please Enter a Comment </p>
		</div>
		
		<!-- Discussion: Submit or Cancel Buttons -->
		<div id = "js-new-discussion-action-area" class = "hide">						
			
			<!-- Type 1: Just Discussion -->
			<div id = "js-new-discussion-text-type" class = "">
				<p id = "js-submit-discussion" class = "temp-text"> Submit </p>		
				<p id = "js-trigger-browse-for-file-discussion" class = "temp-text"> Add File </p>		
				<p id = "" class = "js-cancel-discussion-post temp-text"> Cancel </p>	
			</div>		

			<!-- Type 2: Add Discussion File -->
			<?php include('include_components/discussion/add_file.php') ?>

		</div>

		<!-- Hidden Values: Post Specific -->
		<input type="hidden" name="master-site" id = "" value="<?php echo $master_site; ?>">
		<input type="hidden" name="logged-in-user"  id = "" value = "<?php echo $logged_in_user; ?>"> 		
		<input type="hidden" name="post-from"  id = "" value = "<?php echo $logged_in_user; ?>" > 
		<input type="hidden" name="post-to"  id = "js-post-text-to" value = "<?php echo $post_to; ?>"> 		
		<input type="hidden" id = "" name="parent" value="<?php echo $parent; ?>">
		<input type="hidden" id = "" name="group-id" value="<?php echo $group_id; ?>">	
		<input type="hidden" name="post-type"  id = "js-post-text-type" value = "<?php echo $post_type; ?>"> 		
		<input type="hidden" name="notification-message"  id = "js-text-notification-message" value = "<?php echo $notification_message; ?>" > 
		<input type="hidden" name="notification-type"  id = "js-text-notification-type" value = "<?php echo $notification_type; ?>" > 
		<input type="hidden" name="notification-link"  id = "js-text-notification-link" value = "<?php echo $notification_link; ?>" > 		
		
	</form>
</div>	
	