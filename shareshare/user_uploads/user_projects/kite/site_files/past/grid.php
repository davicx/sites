<?php
	//Include Page Header 
	require_once('../../functions/page_header.php');
	
 	if(isset($_GET["group_id"])) {
		$group_id = base64_decode($_GET['group_id']);	
	} else {
		header("Location: kite.php");
		die();
	} 
		
	//Update Page Analytics 
	$page_url = "kite.php";
	updatePageVisit($page_url, $group_id, $logged_in_user);
	
	//User Selected Display Type
	$sql = "SELECT * FROM user_profile WHERE user_name = '$logged_in_user' ";
	$result = $conn->query($sql) or die(mysqli_error());	
	
	while($row = mysqli_fetch_array($result)) {	
		$post_display_view = $row['post_view'];
	}	
	
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
	
		<!-- SECTION: Header -->
		<header>
			<?php include_once('include_components/headers/header_shareshare/header.php') ?>
		</header>
			
		<div id = "site-wrapper-response">
			
			<div id = "site-wrapper-spacer-groups"> 
				<p> &nbsp </p>
			</div>

			
			<!-- SECTION: Wall --> 
			<div id = "wall-full" class = "">

				<br />
				<br />
				<br />
				<br /><hr />
				
				<div class="responsive-post-container">
					<div class="responsive-post-holder  border-blue">
						<div class="child">
							<p> item </p>
							<p> item </p>
							<p> item </p>
							<p> item </p>
							<p> item </p>
							<p> item </p>
						</div>	
					</div>	
					<div class="responsive-post-holder  border-blue">
						<p> item </p>
						<p> item </p>
					</div>	
					
					<div class="responsive-post-holder  border-blue">
						<p> item </p>
					</div>	
					
					<div class="responsive-post-holder  border-blue">
						<p> item </p>
						<p> item </p>
					</div>	
					
					<div class="responsive-post-holder  border-blue">
						<p> item </p>
					</div>	
					
					<div class="responsive-post-holder  border-blue">
						<p> item </p>
						<p> item </p>
						<p> item </p>
						<p> item </p>
						<p> item </p>
					</div>	
					
					<div class="responsive-post-holder border-blue">
						<p> item </p>
					</div>	
					
					<div class="responsive-post-holder  border-blue">
						<p> item </p>
						<p> item </p>
						<p> item </p>
						<p> item </p>
						<p> item </p>
					</div>						
													
					
					
				</div>	

			
			</div>
						
				
 			</div>			

		</div>		
		
		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>			
	
	</body>
</html>



<?php 
/*

		
		if(strcmp($post_display_view, "small") == 0) {
			//Display Small Post 
			?><div class = "grid"> <?php
				include('include_components/posts/posts_kite/display_posts/individual_post_small.php');
			?> </div><?php	
		} else {
			//Display Large Post 
			include('include_components/posts/posts_kite/display_posts/individual_post.php');	
		}
	} 
	
	/*
	<div class = "grid">
	<?php include('include_components/posts/posts_kite/display_posts/display_posts.php') ?>		
	<div class = "post-small">
		<p> grid </p>
	</div>
	<div class = "post-small">
		<p> grid </p>
	</div>
	<div class = "post-small">
		<p> grid </p>
	</div>
	<div class = "post-small">
		<p> grid </p>
	</div>
	<div class = "post-small">
		<p> grid </p>
	</div>					
</div>
<div class = "grid">
	<div class = "post-small">
		<p> grid </p>
	</div>
	<div class = "post-small">
		<p> grid </p>
	</div>
	<div class = "post-small">
		<p> grid </p>
	</div>
	<div class = "post-small">
		<p> grid </p>
	</div>
	<div class = "post-small">
		<p> grid </p>
	</div>					
</div>
*/
?>














<?php /*
<!-- ORGANIZE BELOW -->
<!-- KITE: Display Posts -->
<div class = "hide">


	<!-- POST: -->
	<div class = "post">

		<!-- POST: Header -->						
		<div class = "post-header">
			<img src="<?php echo POST_PHOTO_DISPLAY . "background_2.jpg"; ?>" alt="Wall Post Photo" class = "post-photo-image">
		</div>	
			
		<!-- POST: Body -->
		<div class = "post-body">
			<div class = "post-body-from-image-area">
				<img src="<?php echo USER_IMAGE . "11.jpg"; ?>" alt="" class = "post-from-user-image">
			
			</div>
			<div class = "post-body-info-area">			
				<div class = "post-body-info-user">
					<p class = "post-body-user-text">David</p>									
					<p class = "post-body-user-name-text">@david</p>								
				</div>
				<div class = "post-body-info-posted-time">
					<p class = "post-body-time-posted-text">4 mins ago</p>							
				</div>
				<div class = "post-body-info-caption">
					<p class = "post-body-caption-text">I really like this image it is one of my favorites!</p>	
				</div>
			
			</div>
		</div>	
			
		<!-- POST: Footer -->
		<div class = "post-footer ">
		
			<div class = "post-footer-notes ">		

			</div>	
			
			<div class = "post-footer-social ">		
			
				<!-- Like -->
				<div class = "post-footer-social-like">		
					<p class = "post-like-text">22</p>
					<img id = "" src="<?php echo ICON; ?>posts\like.png" alt="" class = "post-like-image">
				</div>	
					
				<!-- Share -->
				<div class = "post-footer-social-share">	
					<p class = "post-like-text">45</p>
					<img id = "" src="<?php echo ICON; ?>posts\share.png" alt="" class = "post-share-image">
			</div>

				
				<!-- Comment -->
				<div class = "post-footer-social-comment">									
					<p class = "post-comment-text">5  </p>
					<img id = "" src="<?php echo ICON; ?>posts\comment.png" alt="" class = "post-comment-image">	
				</div>
				
				<!-- Plus More -->								
				<img id = "" src="<?php echo ICON; ?>posts\plus.png" alt="" class = "hide post-comment-image">	
				
			</div>	
			
		</div>	
		
	</div>		
	
	<!-- TEMP TEMP -->
	
	<!-- POST: -->
	<div class = "post">

		<!-- POST: Header -->						
		<div class = "post-header">
			<img src="<?php echo POST_PHOTO_DISPLAY . "background_1.jpg"; ?>" alt="Wall Post Photo" class = "post-photo-image">
		</div>	
			
		<!-- POST: Body -->
		<div class = "post-body">
			<div class = "post-body-from-image-area">
				<img src="<?php echo USER_IMAGE . "11.jpg"; ?>" alt="" class = "post-from-user-image">
			
			</div>
			<div class = "post-body-info-area">			
				<div class = "post-body-info-user">
					<p class = "post-body-user-text">David</p>									
					<p class = "post-body-user-name-text">@david</p>								
				</div>
				<div class = "post-body-info-posted-time">
					<p class = "post-body-time-posted-text">4 mins ago</p>							
				</div>
				<div class = "post-body-info-caption">
					<p class = "post-body-caption-text">I really like this image it is one of my favorites!</p>	
				</div>
			
			</div>
		</div>	
			
		<!-- POST: Footer -->
		<div class = "post-footer ">
		
			<div class = "post-footer-notes ">		

			</div>	
			
			<div class = "post-footer-social ">		
			
				<!-- Like -->
				<div class = "post-footer-social-like">		
					<p class = "post-like-text">22</p>
					<img id = "" src="<?php echo ICON; ?>posts\like.png" alt="" class = "post-like-image">
				</div>	
					
				<!-- Share -->
				<div class = "post-footer-social-share">	
					<p class = "post-like-text">45</p>
					<img id = "" src="<?php echo ICON; ?>posts\share.png" alt="" class = "post-share-image">
			</div>

				
				<!-- Comment -->
				<div class = "post-footer-social-comment">									
					<p class = "post-comment-text">5  </p>
					<img id = "" src="<?php echo ICON; ?>posts\comment.png" alt="" class = "post-comment-image">	
				</div>
				
				<!-- Plus More -->								
				<img id = "" src="<?php echo ICON; ?>posts\plus.png" alt="" class = "hide post-comment-image">	
				
			</div>	
			
		</div>	
		
	</div>		
	
	<!-- POST: -->
	<div class = "post">

		<!-- POST: Header -->						
		<div class = "post-header">
			<img src="<?php echo POST_PHOTO_DISPLAY . "background_3.jpg"; ?>" alt="Wall Post Photo" class = "post-photo-image">
		</div>	
			
		<!-- POST: Body -->
		<div class = "post-body">
			<div class = "post-body-from-image-area">
				<img src="<?php echo USER_IMAGE . "11.jpg"; ?>" alt="" class = "post-from-user-image">
			
			</div>
			<div class = "post-body-info-area">			
				<div class = "post-body-info-user">
					<p class = "post-body-user-text">David</p>									
					<p class = "post-body-user-name-text">@david</p>								
				</div>
				<div class = "post-body-info-posted-time">
					<p class = "post-body-time-posted-text">4 mins ago</p>							
				</div>
				<div class = "post-body-info-caption">
					<p class = "post-body-caption-text">I really like this image it is one of my favorites!</p>	
				</div>
			
			</div>
		</div>	
			
		<!-- POST: Footer -->
		<div class = "post-footer ">
		
			<div class = "post-footer-notes ">		

			</div>	
			
			<div class = "post-footer-social ">		
			
				<!-- Like -->
				<div class = "post-footer-social-like">		
					<p class = "post-like-text">22</p>
					<img id = "" src="<?php echo ICON; ?>posts\like.png" alt="" class = "post-like-image">
				</div>	
					
				<!-- Share -->
				<div class = "post-footer-social-share">	
					<p class = "post-like-text">45</p>
					<img id = "" src="<?php echo ICON; ?>posts\share.png" alt="" class = "post-share-image">
			</div>

				
				<!-- Comment -->
				<div class = "post-footer-social-comment">									
					<p class = "post-comment-text">5  </p>
					<img id = "" src="<?php echo ICON; ?>posts\comment.png" alt="" class = "post-comment-image">	
				</div>
				
				<!-- Plus More -->								
				<img id = "" src="<?php echo ICON; ?>posts\plus.png" alt="" class = "hide post-comment-image">	
				
			</div>	
			
		</div>	
		
	</div>		
	
	
	<!-- POST: -->
	<div class = "post">

		<!-- POST: Header -->						
		<div class = "post-header">
			<img src="<?php echo POST_PHOTO_DISPLAY . "background_4.png"; ?>" alt="Wall Post Photo" class = "post-photo-image">
		</div>	
			
		<!-- POST: Body -->
		<div class = "post-body">
			<div class = "post-body-from-image-area">
				<img src="<?php echo USER_IMAGE . "11.jpg"; ?>" alt="" class = "post-from-user-image">
			
			</div>
			<div class = "post-body-info-area">			
				<div class = "post-body-info-user">
					<p class = "post-body-user-text">David</p>									
					<p class = "post-body-user-name-text">@david</p>								
				</div>
				<div class = "post-body-info-posted-time">
					<p class = "post-body-time-posted-text">4 mins ago</p>							
				</div>
				<div class = "post-body-info-caption">
					<p class = "post-body-caption-text">I really like this image it is one of my favorites!</p>	
				</div>
			
			</div>
		</div>	
			
		<!-- POST: Footer -->
		<div class = "post-footer ">
		
			<div class = "post-footer-notes ">		

			</div>	
			
			<div class = "post-footer-social ">		
			
				<!-- Like -->
				<div class = "post-footer-social-like">		
					<p class = "post-like-text">22</p>
					<img id = "" src="<?php echo ICON; ?>posts\like.png" alt="" class = "post-like-image">
				</div>	
					
				<!-- Share -->
				<div class = "post-footer-social-share">	
					<p class = "post-like-text">45</p>
					<img id = "" src="<?php echo ICON; ?>posts\share.png" alt="" class = "post-share-image">
			</div>

				
				<!-- Comment -->
				<div class = "post-footer-social-comment">									
					<p class = "post-comment-text">5  </p>
					<img id = "" src="<?php echo ICON; ?>posts\comment.png" alt="" class = "post-comment-image">	
				</div>
				
				<!-- Plus More -->								
				<img id = "" src="<?php echo ICON; ?>posts\plus.png" alt="" class = "hide post-comment-image">	
				
			</div>	
			
		</div>	
		
	</div>		
									
	<!-- POST: -->
	<div class = "post">

		<!-- POST: Header -->						
		<div class = "post-header">
			<img src="<?php echo POST_PHOTO_DISPLAY . "background_5.jpg"; ?>" alt="Wall Post Photo" class = "post-photo-image">
		</div>	
			
		<!-- POST: Body -->
		<div class = "post-body">
			<div class = "post-body-from-image-area">
				<img src="<?php echo USER_IMAGE . "11.jpg"; ?>" alt="" class = "post-from-user-image">
			
			</div>
			<div class = "post-body-info-area">			
				<div class = "post-body-info-user">
					<p class = "post-body-user-text">David</p>									
					<p class = "post-body-user-name-text">@david</p>								
				</div>
				<div class = "post-body-info-posted-time">
					<p class = "post-body-time-posted-text">4 mins ago</p>							
				</div>
				<div class = "post-body-info-caption">
					<p class = "post-body-caption-text">I really like this image it is one of my favorites!</p>	
				</div>
			
			</div>
		</div>	
			
		<!-- POST: Footer -->
		<div class = "post-footer ">
		
			<div class = "post-footer-notes ">		

			</div>	
			
			<div class = "post-footer-social ">		
			
				<!-- Like -->
				<div class = "post-footer-social-like">		
					<p class = "post-like-text">22</p>
					<img id = "" src="<?php echo ICON; ?>posts\like.png" alt="" class = "post-like-image">
				</div>	
					
				<!-- Share -->
				<div class = "post-footer-social-share">	
					<p class = "post-like-text">45</p>
					<img id = "" src="<?php echo ICON; ?>posts\share.png" alt="" class = "post-share-image">
			</div>

				
				<!-- Comment -->
				<div class = "post-footer-social-comment">									
					<p class = "post-comment-text">5  </p>
					<img id = "" src="<?php echo ICON; ?>posts\comment.png" alt="" class = "post-comment-image">	
				</div>
				
				<!-- Plus More -->								
				<img id = "" src="<?php echo ICON; ?>posts\plus.png" alt="" class = "hide post-comment-image">	
				
			</div>	
			
		</div>	
		
	</div>		
																
	
	<!-- POST: -->
	<div class = "post">

		<!-- POST: Header -->						
		<div class = "post-header">
			<div class="post-video-holder">
				<iframe src="https://www.youtube.com/embed/RjXItK5shW8"  class = "post-video "  frameborder="0" allowfullscreen></iframe>
			</div>
		</div>	

		
		<!-- POST: Body -->
		<div class = "post-body">
			<div class = "post-body-from-image-area">
				<img src="<?php echo USER_IMAGE . "11.jpg"; ?>" alt="" class = "post-from-user-image">
			
			</div>
			<div class = "post-body-info-area">			
				<div class = "post-body-info-user">
					<p class = "post-body-user-text">David</p>									
					<p class = "post-body-user-name-text">@david</p>								
				</div>
				<div class = "post-body-info-posted-time">
					<p class = "post-body-time-posted-text">4 mins ago</p>							
				</div>
				<div class = "post-body-info-caption">
					<p class = "post-body-caption-text">I really like this image it is one of my favorites!</p>	
				</div>
			
			</div>
		</div>	
			
		<!-- POST: Footer -->
		<div class = "post-footer ">
		
			<div class = "post-footer-notes ">		

			</div>	
			
			<div class = "post-footer-social ">		
			
				<!-- Like -->
				<div class = "post-footer-social-like">		
					<p class = "post-like-text">22</p>
					<img id = "" src="<?php echo ICON; ?>posts\like.png" alt="" class = "post-like-image">
				</div>	
					
				<!-- Share -->
				<div class = "post-footer-social-share">	
					<p class = "post-like-text">45</p>
					<img id = "" src="<?php echo ICON; ?>posts\share.png" alt="" class = "post-share-image">
			</div>

				
				<!-- Comment -->
				<div class = "post-footer-social-comment">									
					<p class = "post-comment-text">5  </p>
					<img id = "" src="<?php echo ICON; ?>posts\comment.png" alt="" class = "post-comment-image">	
				</div>
				
				<!-- Plus More -->								
				<img id = "" src="<?php echo ICON; ?>posts\plus.png" alt="" class = "hide post-comment-image">	
				
			</div>	
			
		</div>	
		
	</div>		
																
										
	<!-- TEMP TEMP -->
	<p> &nbsp </p><br /><hr />
						
	<?php 
		for ($x = 0; $x <= 10; $x++) {
	?>					
	
	<!-- POST: -->
	<div class = "post-small ">

		<!-- POST: Header -->						
		<div class = "post-header">
			<img src="<?php echo POST_PHOTO_DISPLAY . "background_2.jpg"; ?>" alt="Wall Post Photo" class = "post-photo-image">
		</div>	
			
		<!-- POST: Body -->
		<div class = "post-body">
			<div class = "post-small-body-from-image-area">
				<img src="<?php echo USER_IMAGE . "11.jpg"; ?>" alt="" class = "post-from-user-image">
			
			</div>
			<div class = "post-small-body-info-area">			
				<div class = "post-body-info-user">
					<p class = "post-body-user-text">David</p>									
					<p class = "post-body-user-name-text">@david</p>								
				</div>
				<div class = "post-body-info-posted-time">
					<p class = "post-body-time-posted-text">4 mins ago</p>							
				</div>
				<div class = "post-body-info-caption">
					<p class = "post-body-caption-text">I really like this image it is one of my favorites!</p>	
				</div>
			
			</div>					
			
		</div>	
			
		<!-- POST: Footer -->
		<div class = "post-footer ">
		
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
			
		</div>	
		
	</div>		
	
									
	<?php } ?>					
		
</div>
*/ ?>




