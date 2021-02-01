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
	
		<div id = "holder">	
		
			<!-- MOBILE -->
			<div class = "mobile">
				
				<!-- MOBILE: Header -->			
				<div class = "mobile-header">					
					<p class = "no-margin">header </p>
				</div>	
				
				<!-- MOBILE: Body -->			
				<div class = "mobile-body">
					
					<!-- EVENT: Header --> 
					<div class = "event-header">
						<h4 class = "no-margin"> Garden Party </h4>
						<p class = "no-margin"> May 28, 2014 </p>
					</div>
					
					<!-- EVENT: Social --> 
					<div class = "event-social">
						<p class = "no-margin"> Likes </p>
					</div>
					
					<!-- EVENT: Posts --> 	
					<div class = "event-posts">			
						
						<!-- Post -->
						<div class = "post">
							<div>
								<img src="images\gp_3.jpg" alt="Img" class = "post-image">
							</div>					
							<div class = "post-caption">
								<p class = "post-caption-text">Before we headed out to the Garden Party in Portland! </p>
							</div>				
						</div>

						
						<!-- Post -->
						<div class = "post">
							<div>
								<img src="images\gp_6.jpg" alt="Img" class = "post-image">
							</div>					
							<div class = "post-caption">
								<p class = "post-caption-text">This was on the Boat in Portland with Emily!</p>
							</div>				
						</div>	
									
						<!-- Post -->
						<div class = "post">
							<div>
								<img src="images\gp_2.jpg" alt="Img" class = "post-image">
							</div>					
							<div class = "post-caption">
								<p class = "post-caption-text">Here we are sailing past downtown Portland </p>
							</div>				
						</div>									
									
						<!-- Post -->
						<div class = "post">
							<div>
								<img src="images\gp_6.jpg" alt="Img" class = "post-image">
							</div>					
							<div class = "post-caption">
								<p class = "post-caption-text">This was on the Boat in Portland with Emily!</p>
							</div>				
						</div>
						
						<!-- Post -->
						<div class = "post">
							<div>
								<img src="images\gp_9.jpg" alt="Img" class = "post-image">
							</div>					
							<div class = "post-caption">
								<p class = "post-caption-text"> Sailing on the Boat! </p>
							</div>				
						</div>
					</div>
	
				</div>		
				

				<!-- MOBILE: Footer -->			
				<?php include_once('include_components/kite_footer.php') ?>
			
			</div>	
			
		</div>	

	</body>
	
	<!-- Include all JS Files -->
	<?php include_once('include_components/links_footer.php'); ?>	

</html>

