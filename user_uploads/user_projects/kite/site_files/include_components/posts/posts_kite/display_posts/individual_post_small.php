<div class = "responsive-post-holder">

	<!-- POST: -->
	<div class = "post-small ">

		<!-- POST: Header -->						
		<div class = "post-header">
			<a href="kite_individual_post.php?post_id=<?php echo $group_id; ?>">link</a>
			<?php include('include_components/posts/posts_kite/display_posts/get_post_type.php'); ?>
		</div>	
			
		<!-- POST: Body -->
		<div class = "post-body">
			<div class = "post-small-body-from-image-area">
				<img src="<?php echo USER_IMAGE . $post_from_user_image; ?>" alt="" class = "post-from-user-image">
			
			</div>
			<div class = "post-small-body-info-area">			
				<div class = "post-body-info-user">
					<p class = "post-body-user-text"><?php echo $post_from_user_name; ?> </p>									
					<p class = "post-body-user-name-text">@<?php echo $post_from_user_name; ?></p>								
				</div>
				<div class = "post-body-info-posted-time">
					<p class = "post-body-time-posted-text"><?php echo $posted_time_message; ?></p>							
				</div>
				<div class = "post-body-info-caption">
					<p class = "post-body-caption-text"><?php echo $post_caption; ?></p>	
				</div>
			
			</div>						
		</div>	

		<!-- POST: Footer -->
		<div class = "post-footer ">
			<?php include('include_components/posts/posts_kite/display_posts/post_footer.php'); ?>	
			
			<?php /*
			<div class = "post-footer-notes ">		
				<p> &nbsp </p>
			</div>	
			
			<div class = "post-footer-social ">		
			
				<!-- Like -->
				<p class = "post-like-text">22</p>
				<img id = "" src="<?php echo ICON; ?>posts\like.png" alt="" class = "post-like-image">
				
				<!-- Share -->
				<p class = "post-like-text">45</p>
				<img id = "" src="<?php echo ICON; ?>posts\share.png" alt="" class = "post-share-image">	
				
			</div>	
			*/ ?>
		</div>	
		
	</div>		
</div>		
		
