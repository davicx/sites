<?php
	//Include Page Header 
	//require_once('../../functions/page_header.php');
	define("USER_IMAGE", "../../user_uploads/user_image/");
	define("CONTENT_IMAGES", "../../images/site_images/content/");

	$comment_user_photo = "david.jpg";
?>
<!DOCTYPE html>
<html>
    <head>
		
		<!-- Meta Tags -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">		
	    <meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="" />
		<title> Template </title>
		
		<!-- Include all JS and CSS Files -->
		<?php include_once('include_components/links_head.php') ?>

    </head>
	
	<body> 

					
				<div class = "post">
					<p class = "comment-info-from"> Post </p>	
				</div>		
				
				
				
				
				
		
			
			
		<?php /*
		<!-- SECTION: Posts with Left, Middle Right -->
		<div id = "posts-left" class = "">
			<div class = "post-small">
				<p class = "comment-info-from"> Post </p>	
			</div>		
			
		</div>		
	
		<div id = "posts-middle" class = "">
			<div class = "post-large">
				<p class = "comment-info-from"> Post </p>	
			</div>		
			<div class = "post-large">
				<p class = "comment-info-from"> Post </p>	
			</div>					
		</div>				
		<div id = "posts-right" class = "">
			<div class = "post-small">
				<p class = "comment-info-from"> Post </p>	
			</div>		
			
		</div>			
		*/ ?> 
	
	
	
	
	
	
	

	
		<!-- SECTION: Comments -->
		<div id = "comments" class = "hide">
			<?php for ($x = 0; $x <= 2; $x++) {?>
			
			<!-- COMMENT -->
			<div class = "comment">
			
				<!-- COMMENT: User -->	
				<div class = "comment-user">
					<img src="<?php echo USER_IMAGE . $comment_user_photo; ?>" alt="" class = "comment-user-photo">
				</div>	
				
				<!-- COMMENT: Body -->				
				<div class = "comment-body">

					<!-- Info -->				
					<div class = "comment-info">
						<p class = "comment-info-from"> @David </p>	
						<p class = "comment-info-time"> 4 hours ago </p>	
					</div>	

					<!-- Message -->				
					<div class = "comment-message">
						<p class = "comment-message-text">They all now waded back and went first across the smooth, wet sand and then up to the dry, crumbly sand that sticks to one's toes, and began putting on their shoes and socks. </p>
					</div>	

					<!-- Social -->				
					<div class = "comment-social">
						
					</div>	
					
					<!-- Reply -->				
					<div class = "comment-reply">
							
					</div>	

				</div>	

			</div>	
			
			<?php } ?>
			
		</div>

		
		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>			
	
	</body>
</html>







