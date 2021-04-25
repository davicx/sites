<!-- NEW COMMENT -->
<div class = "new-comment">
	
	<!-- COMMENT: From -->
	<div class = "new-comment-from-area">
		<img src="<?php echo USER_IMAGE . $post_from_user_image; ?>" alt="" class = "new-comment-from-image">
	</div>
	
	<!-- COMMENT: TextBox -->
	<div class = "new-comment-text-area">
		<textarea id = "js-new-comment_<?php echo $post_id; ?>" class = "js-new-comment new-comment-text-box"></textarea>
	</div>
	
	
	<!-- COMMENT: Submit Buttons (JUST ADDED MAY NOT WORK!) --> 
	<div class = "new-comment-submit-area">
		<p id = "js-submit-comment_<?php echo $post_id; ?>" class = "js-submit-comment button-discussion "> Submit </p>
		<p id = "js-cancel-post-comment_<?php echo $post_id; ?>" class = "js-cancel-post-comment hide button-discussion-cancel"> Cancel </p>						
		  
		<!-- Hidden Variables -->
		<input type="hidden" name="logged-in-user"  value = "<?php echo $logged_in_user; ?>"> 
		<input type="hidden" name="group-id" value = "<?php echo $group_id; ?>"> 
		<input type="hidden" name="comment-level" value = "0"> 
		<input type="hidden" name="comment-parent" value = "0"> 				
		<input type="hidden" name="comment-to" value = "<?php echo $post_to; ?>"> 				
	</div>		
	
	<!-- COMMENT: Hidden Variables -->
	<input type="hidden" name="logged-in-user"  value = "<?php echo $logged_in_user; ?>">  
	<input type="hidden" name="post-id" value = "<?php echo $post_id; ?>"> 

</div>

	
<?php /*
<div id = "js-create-post-comment_<?php echo $post_id; ?>"  class = "new-comment comment">

	<!-- COMMENT: From -->
	<div class = "comment-from-area">
		<a href="" class = "">
			<img src="<?php echo USER_IMAGE . ($Current_User->userImage); ?>" alt="" class = "comment-from-user-image">
		</a>
	</div>	
	
	<!-- COMMENT: Text Area -->
	<div class = "comment-body">
		
		<!-- TextBox -->
		<div class = "new-comment-text-holder"> 
			<textarea id = "js-new-comment_<?php echo $post_id; ?>" class = "js-new-comment new-comment-text-area"></textarea>
		</div>
		
		<!-- Submit Buttons --> 
		<div class = "new-comment-submit-area">
			<p id = "js-submit-comment_<?php echo $post_id; ?>" class = "js-submit-comment button-discussion "> Submit </p>
			<p id = "js-cancel-post-comment_<?php echo $post_id; ?>" class = "js-cancel-post-comment hide button-discussion-cancel"> Cancel </p>						
			  
			<!-- Hidden Variables -->
			<input type="hidden" name="logged-in-user"  value = "<?php echo $logged_in_user; ?>"> 
			<input type="hidden" name="group-id" value = "<?php echo $group_id; ?>"> 
			<input type="hidden" name="comment-level" value = "0"> 
			<input type="hidden" name="comment-parent" value = "0"> 				
			<input type="hidden" name="comment-to" value = "<?php echo $post_to; ?>"> 				
		</div>		
		
	</div>	
	
</div>
*/ ?>