<?php
	//Include Page Header 
	require_once('../../functions/page_header_external.php');
 	
 	$current_page = "Career Development Center";
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
	

		<!-- MOBILE -->
		<div class = "mobile">
			
			<!-- MOBILE: Header -->			
			<div class = "mobile-header">
				<?php include_once('include_components/headers/evently_header.php') ?>		
			</div>	
			
			<!-- MOBILE: Body -->			
			<div class = "mobile-body">
				<?php include_once('include_components/evently/evently_individual_group.php') ?>	
			</div>		
			
			<!-- MOBILE: Footer -->			
			<div class = "mobile-footer">	
				
				<!-- Events -->
				<div class="footer-container-four center-text">
					<a href="events_my.php">
						<div class = "mobile-footer-icon-holder">
							<i class="fa fa-globe fa-2x footer-icon header-icon" aria-hidden="true"></i>
						</div>
						<div class = "mobile-footer-text-holder">
							<p class = "footer-text proixma"> Events </p>
						</div>		
					</a>
				</div>			
				
				<!-- Discover -->
				<div class="footer-container-four center-text">
					<a href="discover.php">				
						<div class = "mobile-footer-icon-holder">
							<i class="fa fa-newspaper-o fa-2x footer-icon" aria-hidden="true"></i>
						</div>
						<div class = "mobile-footer-text-holder">
							<p class = "footer-text proixma"> Discover </p>
						</div>	
					</a>						
				</div>			
				
				<!-- Following -->
				<div class="footer-container-four center-text selected">
					<a href="following.php">						
						<div class = "mobile-footer-icon-holder">
							<i class="fa fa-plus-square-o fa-2x footer-icon" aria-hidden="true"></i>						
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
							<i class="fa fa-user-circle-o fa-2x footer-icon" aria-hidden="true"></i>							
						</div>
						<div class = "mobile-footer-text-holder">
							<p class = "footer-text proixma"> Profile  </p>
						</div>	
					</a>						
				</div>			
			</div>

		</div>	
		
		<div class = "evently-notes">
			<p> If you click the calendar or event view button the full screen version of this will slide in from the right (like twitter). The display
			will be the same view as your events or calendars but will only show that group's events. So if you click OSU Football it will be a calendar
			with only their events. </p>
			<p>If you click the events or followers buttons it will also slide over to </p>
		</div>
		
		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>			

	</body>
</html>







