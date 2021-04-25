<?php
	//Include Page Header 
	//require_once('../../functions/page_header.php');
	define("USER_IMAGE", "../../user_uploads/user_image/");
	define("CONTENT_IMAGES", "../../images/site_images/content/");
	define("POST_PHOTO_DISPLAY", "../../user_uploads/post_images/");

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
	
		<header class = "">
			<p> &nbsp </p>
		</header>

		<!-- MOBILE -->
		<div class = "mobile">
			
			<!-- MOBILE: Header -->			
			<div class = "mobile-header">					

				<div class = "header-button"> 
					<p class = "header-selected-button-text"> Home </p>
				</div>
	
				<div class = "header-button header-button-selected"> 
					<p class = "header-selected-button-text"> Discover </p>
				</div>
	
				<div class = "header-button"> 
					<p class = "header-selected-button-text"> Trending </p>
				</div>
	
			</div>	
			
			<!-- MOBILE: Body -->			
			<div class = "mobile-body">
				<p> &nbsp </p>

				
			</div>		
			

			<!-- MOBILE: Footer -->			
			<div class = "mobile-footer">	
			
				<!-- Events -->				
				<div class="footer-container-four center-text">
					<div class = "mobile-footer-icon-holder">
						<i class="fa fa-globe fa-2x footer-icon header-icon" aria-hidden="true"></i>
					</div>
					<div class = "mobile-footer-text-holder">
						<p class = "footer-text "> Events </p>
					</div>						
				</div>		
				
				<!-- Discover -->				
				<div class="footer-container-four center-text">
					<div class = "mobile-footer-icon-holder">
						<i class="fa fa-newspaper-o fa-2x footer-icon" aria-hidden="true"></i>
					</div>
					<div class = "mobile-footer-text-holder">
						<p class = "footer-text "> Discover </p>
					</div>						
				</div>			
				
				<!-- Following -->				
				<div class="footer-container-four center-text">
					<div class = "mobile-footer-icon-holder">
						<i class="fa fa-plus-square-o fa-2x footer-icon" aria-hidden="true"></i>	
					</div>
					<div class = "mobile-footer-text-holder">
						<p class = "footer-text "> Following </p>
					</div>						
				</div>		
				
				<!-- Profile -->				
				<div class="footer-container-four center-text">
					<div class = "mobile-footer-icon-holder">
						<i class="fa fa-user-circle-o fa-2x footer-icon" aria-hidden="true"></i>	
					</div>
					<div class = "mobile-footer-text-holder">
						<p class = "footer-text "> Profile </p>
					</div>						
				</div>	
				

				<?php /*
				<!-- Events -->
				<div class="footer-container-four center-text ">
				
						<div class = "mobile-footer-icon-holder">
							<i class="fa fa-globe fa-2x footer-icon header-icon" aria-hidden="true"></i>
						</div>
						<div class = "mobile-footer-text-holder">
							<p class = "footer-text proixma"> Events </p>
						</div>		
				
				</div>			
				
				<!-- Discover -->
				<div class="footer-container-four center-text selected">
					<a href="discover.php">				
						<div class = "mobile-footer-icon-holder">
							
						</div>
						<div class = "mobile-footer-text-holder">
							<p class = "footer-text proixma"> Discover </p>
						</div>	
					</a>						
				</div>			
				
				<!-- Following -->
				<div class="footer-container-four center-text ">
					<a href="following.php">						
						<div class = "mobile-footer-icon-holder">
												
						</div>
						<div class = "mobile-footer-text-holder">
							<p class = "footer-text proixma"> Following </p>
						</div>	
					</a>							
				</div>			

				<!-- Profile -->
				<div class="footer-container-four center-text ">
					<a href="profile.php">					
						<div class = "mobile-footer-icon-holder">
													
						</div>
						<div class = "mobile-footer-text-holder">
							<p class = "footer-text proixma"> Profile  </p>
						</div>	
					</a>						
				</div>	
			</div>
			*/ ?>
			
			

		</div>	

	
	
	
	
		
		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>			
	
	</body>
</html>

<?php /*

<!-- POST: -->
<div class = "post hide">
	
	<!-- POST: Header -->
	<div class = "post-header">
		<img src="<?php echo USER_IMAGE . "10.jpg"; ?>" alt="User Image" class = "post-user-image">
		<p class = "post-user-name "> David Vasquez </p>
	</div>	

	<!-- POST: Body -->
	<div class = "post-body">
		<img src="<?php echo POST_PHOTO_DISPLAY . "image.jpg"; ?>" alt="Wall Post Photo" class = "mobile-post-image">
	</div>	

	<!-- POST: Footer -->
	<div class = "post-footer">
		<p class = "post-text"> In his chamber overlooking the scene, Lord Stonepaw sat in his great chair, feeling as ancient as the mountain he ruled. 
		In one corner, his bed stood neatly made, unused now for a score of seasons. He was far too old; the ritual of lying down each night and 
		rising next day had become painful for his bones. Drawing his cloak tight against vagrant night chills, the once mighty Badger Lord squinted rheumily 
		out to sea, worrying constantly about his domain. </p>
	</div>	
</div>		

*/ ?>


