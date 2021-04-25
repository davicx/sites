<?php
	//PART 2: File Upload 
	$master_site = MASTER_SITE;
	$destination = FILE_UPLOAD;	
	$redirect = "discussion.php";
	$caption = "";
	$post_id = 0;
	$post_type = "";
	$notification_message = "made a comment"; 
	$notification_link = "";
	
?>

<!-- NEW COMMENT -->
<div id = "new_comment">

	<div class = "comment-user-area">
		<img src="<?php echo USER_IMAGE . $Current_User->userImage; ?>" alt="" class = "comment-user-image">
	</div>	
	
	<div class = "comment-area">
		<form action="" method="post" enctype="multipart/form-data" id="" class = "">
			
			<!-- HEADER: -->
			<div class = "new-comment-header">		
				
			</div>		
			
			<!-- BODY: -->
			<div class = "new-comment-body">
				<textarea name="new-comment" id = "js-new-comment-text-area" class = "js-new-comment-text-area new-comment-text-box " placeholder="Make a Comment"></textarea>	
			</div>	

			<!-- FOOTER: -->							
			<div class = "new-comment-footer">
				
				<!-- Make Comment -->		
				<div id = "js-new-comment-action-area" class = "hide">
					
					<!-- New Comment Buttons -->
					<div class = "new-comment-footer-buttons">
						
						<!-- Submit Normal Post -->
						<p class = "js-submit-comment left button-simple "> Submit </p>		
						
						<!-- Submit Post with File (Hidden) -->
						<p id = "js-trigger-upload-file-comment" class = "hide left button-simple"> Fil S </p>	

						<!-- Cancel Submit -->		
						<p id = "js-hide-make-comment-buttons" class = "left button-simple "> Cancel </p>		
						
						<!-- Error Message: Empty Comment -->
						<p id = "js-new-comment-empty" class = "hide comment-error-message error-message-red"> Please enter a comment </p>

					</div>
					
					<!-- New Comment Add a File -->	
					<div class = "new-comment-footer-file-name">			
						<p id = "js-trigger-browse-for-file-comment" class = "left button-simple "> + File </p>	
						<p id = "js-selected-file-name-comment" class = "js-selected-file-name-comment left new-comment-footer-file-name-text"><i></i></p>
					</div>
							
				</div>
				
				<!-- Actual Upload (Hidden) -->
				<div class = "hide">
					<input type="file" name="image" id="js-browse-for-file-comment" class = "">
					<input type="submit" name="upload-comment-file" id="js-file-upload-submit-comment" class = "" value="Upload">
				</div>	
				
				<!-- Hidden Values: Comment Specific -->
				<input type="hidden" name="logged-in-user" id = "" value = "<?php echo $logged_in_user; ?>"> 	
				<input type="hidden" name="comment-parent" id = "" value = "0" > 				
				<input type="hidden" name="comment-level" id = "" value = "0" > 				
				<input type="hidden" name="comment-from" id = "" value = "<?php echo $logged_in_user; ?>" > 		
				<input type="hidden" name="comment-to" id = "" value = "<?php echo $comment_to; ?>" > 
				<input type="hidden" name="notification-message"  id = "" value = "<?php echo $notification_message; ?>" > 
				<input type="hidden" name="notification-link"  id = "" value = "<?php echo $notification_link; ?>" > 	
				<input type="hidden" id = "" name="destination" value="<?php echo $destination; ?>">	
				<input type="hidden" id = "" name="redirect" value="<?php echo $redirect; ?>">	
				<input type="hidden" name="master-site" id = "" value="<?php echo $master_site; ?>">							
				<input type="hidden" id = "" name="group-id" value="<?php echo $group_id; ?>">			

				
			</div>
		</form> 

	</div>
	
</div>















 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 