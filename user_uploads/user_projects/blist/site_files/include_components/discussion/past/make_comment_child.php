<!-- REPLY COMMENT -->
<div id = "js-reply-to-comment-area_<?php echo $comment_id; ?>" class = "js-reply-to-comment-area hide comment-child">
	
	<!-- User Image --> 
	<div class = "comment-user-area">
		<img src="<?php echo USER_IMAGE . $Current_User->userImage; ?>" alt="" class = "comment-user-image">
	</div>	
	
	<!-- Reply to Comment Area -->
	<div class = "comment-area">
		<form action="" method="post" enctype="multipart/form-data" id="" class = "">
			
			<!-- HEADER: -->
			<div class = "new-comment-header">		
				
			</div>		
			
			<!-- BODY: -->
			<div class = "new-comment-body">
				<textarea name="new-comment" id = "js-new-comment-text-area_<?php echo $comment_id; ?>" class = "js-new-child-comment-text-area new-comment-text-box " placeholder="Make a Comment"></textarea>	
			</div>	

			<!-- FOOTER: -->							
			<div class = "new-comment-footer">
				
				<!-- Make Comment -->		
				<div id = "js-new-comment-action-area" class = "">
					
					<!-- New Comment Buttons -->
					<div class = "new-comment-footer-buttons">
						
						<!-- Submit Normal Post -->
						<p id = "js-submit-comment-child_<?php echo $comment_id; ?>" class = "js-submit-comment-child left button-simple "> Submit </p>		

						<!-- Cancel Submit -->		
						<p id = "" class = "js-comment-reply-cancel left button-simple "> Cancel </p>		
						
						<!-- Error Message: Empty Comment -->
						<p id = "js-new-comment-empty" class = "hide comment-error-message error-message-red"> Please enter a comment </p>

					</div>
				</div>		


				<!-- Hidden Values: Comment Specific -->
				<input type="hidden" name="logged-in-user" id = "" value = "<?php echo $logged_in_user; ?>"> 	
				<input type="hidden" name="child-comment-parent" id = "" value = "<?php echo $comment_id; ?>" > 				
				<input type="hidden" name="child-comment-level" id = "" value = "1" > 				
				<input type="hidden" name="child-comment-from" id = "" value = "<?php echo $logged_in_user; ?>" > 		
				<input type="hidden" name="child-comment-to" id = "" value = "<?php echo $comment_to; ?>" > 
				<input type="hidden" name="notification-message"  id = "" value = "<?php echo $notification_message; ?>" > 
				<input type="hidden" name="notification-link"  id = "" value = "<?php echo $notification_link; ?>" > 	
			
			</div>
		</form> 
	</div>
</div>



	













 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 