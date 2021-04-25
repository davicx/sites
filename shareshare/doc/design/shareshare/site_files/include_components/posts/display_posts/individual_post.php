<!-- POST -->
<div id = "js-post_<?php echo $post_id; ?>" class = "js-post post">

	<!-- POST: Header -->
	<div class = "post-header">	
		<p> header </p>
	</div>
	
	<!-- POST: Body -->
	<div class = "post-body">	
		<?php include('include_components/posts/display_posts/get_post_type.php'); ?>
		
		<!-- Text -->
		<p class = "no-margin"> caption: <?php echo $post_caption; ?> </p>	

		<!-- Info -->
		<p class = "no-margin"> From: <?php echo $post_from; ?> </p>		
		<p class = "no-margin"> To: <?php echo $post_to; ?> </p>		
		<p class = "no-margin"> Posted: <?php echo $posted_time_message; ?> </p>		
	
	</div>
	
	<!-- POST: Footer -->
	<div class = "post-footer">	
		<p> footer </p>		
	</div>

</div>	















<?php /*

<div id = "js-post_<?php echo $post_id; ?>" class = "js-post post">

	<!-- POST: Header -->
	<div class = "post-header">	
		<?php include('include_components/posts/posts_shareshare/display_posts/get_post_type.php'); ?>
	</div>
	
	<!-- POST: Body -->
	<div class = "post-body">	
		
		<!-- Post From -->
		<div class = "post-body-from-image-area">
			<a href="" class = "">
				<img src="<?php echo USER_IMAGE . $post_from_user_image; ?>" alt="" class = "post-from-user-image">
			</a>
		</div>
		
		<!-- Post Information -->
		<div class = "post-body-info-area">
			<div class = "post-body-from-area">
				<p class = "post-from-text"><?php echo $post_from_user_name; ?> </p>
			</div>		
			<div id = "js-post-edit-trigger-icon_<?php echo $post_id; ?>" class = "js-post-edit-trigger-icon post-body-edit-area">
				<?php include('include_components/posts/posts_shareshare/display_posts/edit_post.php') ?>
			</div>		
			
			<!-- NORMAL POST -->
			<div id = "js-post-normal-display-area_<?php echo $post_id; ?>" class = "js-post-normal-display-area post-body-caption">
				<p class = "post-time-posted"><?php echo $posted_time_message; ?> </p>
				<p id = "js-post-caption-text_<?php echo $post_id; ?>" class = "post-caption-text"><?php echo $post_caption; ?></p>
				
				<!-- Include File if it is a File Post -->
				<?php include('include_components/posts/posts_shareshare/display_posts/get_post_file.php'); ?>
			</div>				

			<!-- EDIT POST -->
			<div id = "js-post-edit-display-area_<?php echo $post_id; ?>" class = "js-post-edit-display-area hide post-body-caption">
				<p class = "post-time-posted"><?php echo $posted_time_message; ?> </p>
				<textarea id = "js-edit-post-caption-text_<?php echo $post_id; ?>" class = "" ></textarea>
				<p id = "js-post-save_<?php echo $post_id; ?>" class = "js-post-save button-discussion"> Save </p>
				<p class = "js-post-cancel-edit button-discussion-cancel"> Cancel </p>
			</div>								   
			
		</div>		

	</div>

	<!-- Divider -->
	<div class = " post-divider">	
		<p> &nbsp </p>	
	</div>			

	
	<!-- POST: Footer -->
	<div class = "post-footer">	
		
		<!-- Likes and Comments -->
		<div class = "post-footer-social">
			
			<!-- Likes -->
			<div class = "post-footer-likes">				
				
				<?php if($liked_by_logged_in_user == 1) { ?>	
					<img id = "unlike_<?php echo $post_id; ?>" src="<?php echo ICON; ?>like\liked.png" alt="" class = "js_like-post post-liked-image">
					<img id = "like_<?php echo $post_id; ?>" src="<?php echo ICON; ?>like\like_me.png" alt="" class = "js_like-post hide post-liked-image">
				<?php } else { ?>
					<img id = "unlike_<?php echo $post_id; ?>" src="<?php echo ICON; ?>like\liked.png" alt="" class = "js_like-post hide post-liked-image">
					<img id = "like_<?php echo $post_id; ?>" src="<?php echo ICON; ?>like\like_me.png" alt="" class = "js_like-post post-liked-image">												
				<?php } ?>
				<p id = "js-total-likes_<?php echo $post_id; ?>" class = "post-like-text"><?php echo $total_likes; ?></p>			
				
				<!-- Hidden Values -->
				<input type="hidden" name="logged-in-user" id = "" value = "<?php echo $logged_in_user; ?>" value="user"> 
			</div>	
	
			<!-- Comments (View) -->			
			<div id = "js-show-comments-image_<?php echo $post_id; ?>" class = "js-show-comments post-footer-comments">				
				<img id = "" src="<?php echo ICON; ?>chat\chat_4.png" alt="" class = "post-chat-image"> 
				<p class = "post-like-text"><?php echo $total_comments; ?><p>
			</div>	
						
			<!-- Comments (Hide) -->			
			<div id = "js-hide-comments-image_<?php echo $post_id; ?>" class = "js-hide-comments post-footer-comments hide">				
				<img id = "" src="<?php echo ICON; ?>chat\chat_4.png" alt="" class = "post-chat-image"> 
				<p class = "post-like-text"><?php echo $total_comments; ?><p>
			</div>	

		</div>

		<!-- View Comments -->
		<div class = "post-footer-view">
			<p id = "js-show-comments_<?php echo $post_id; ?>" class = "js-show-comments view-comment-text"> view </p>
			<p id = "js-hide-comments_<?php echo $post_id; ?>" class = "js-hide-comments view-comment-text hide"> hide </p>
		</div>
		
	</div>

	
	<!-- COMMENTS -->
	<div id = "js-post-comments_<?php echo $post_id; ?>" class = "hide">
		<?php include('include_components/posts/posts_shareshare/comments/comments.php') ?>
	</div>


</div>	
*/ ?>

		
