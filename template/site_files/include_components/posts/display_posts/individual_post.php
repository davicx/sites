<!-- POST -->
<div id = "js-post_<?php echo $post_id; ?>" class = "js-post post">

	<!-- POST: Header -->
	<div class = "post-header">	
		
		<div class = "temp-header-user-image">
			<img src="<?php echo USER_IMAGE . $post_from_user_image; ?>"  title="<?php echo $post_from_user_image; ?>" alt="<?php echo $post_from_user_image; ?>" class = "temp-post-from-image" />
		</div>
	</div>
	
	<!-- POST: Body -->
	<div class = "post-body">	

		<!-- Post Type -->		
		<?php include('include_components/posts/display_posts/get_post_type.php'); ?>

		<!-- Post Caption -->
		<?php include('include_components/posts/display_posts/post_caption.php'); ?>
		
		<!-- Edit Post Dropdown -->
		<?php include('include_components/posts/post_actions/edit_post.php'); ?><br />

	</div>
	
	<!-- POST: Footer -->
	<div class = "post-footer">	
		
		<!-- Like Post -->
		<?php include('include_components/posts/post_actions/like_post.php'); ?>
		
		<!-- Comment --> 
		<?php include('include_components/posts/comments/all_comments.php'); ?>
		<?php include('include_components/posts/comments/new_comment.php'); ?>
		
	</div>

</div>	



<?php /*
		<!-- Info -->	
		<div class = "hide">
			<p class = "no-margin"> ID: <?php echo $post_id; ?> </p>		
			<p class = "no-margin"> From: <?php echo $post_from; ?> </p>		
			<p class = "no-margin"> To: <?php echo $post_to; ?> </p>		
			<p class = "no-margin"> Type: <?php echo $post_type; ?> </p>		
			<p class = "no-margin"> Posted: <?php echo $posted_time_message; ?> </p>		
		</div>
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

		
