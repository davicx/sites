<?php 	

//STEP 1: Get all Pending Requests
$result_requests = mysqli_query($conn,"SELECT * FROM pending_requests WHERE sent_to = '$logged_in_user' 
	AND request_is_pending = '1'");
	
$total_pending_requests = $result_requests->num_rows;

//STEP 3: Get total New Activity 
$total_new_notifications = getTotalUnseenNotifications($logged_in_user);
$total_new_activity = $total_new_notifications + $total_pending_requests; 

?>

<!-- DESKTOP HEADER -->
<div id = "js-desktop">

	<!-- Logo Area -->
	<div id = "logo" class = "">
		<a href="kite.php">
			<div id = "desktop-cloud-logo-holder" class = "">
				<img title = "Home Page" src="<?php echo ICON; ?>logo/cloud.png" id = "desktop-cloud-logo-image-site" class = "" alt="">
			</div>
		</a>	
	</div>		
	
	<!-- Search -->				
	<div id = "search" class = "">
		<?php include('include_components/auto_complete/auto_complete.php'); ?>
	</div>	
	
	<!-- Icons -->				
	<div id = "icons" class = "">
				
		<!-- ICON: Notifications Icon -->
		<div id = "js-notification-header-seen"  class = "js-notification-header-seen icon-holder">
			<?php include('include_components/headers/header_shareshare/notifications_requests.php') ?>
		</div>	
		
		<!-- ICON: Profile Icon -->
		<div id = " " class = "icon-holder">
			<a href="kite_boards.php">
			
				<!-- Icon Image -->
				<div class = "icon-header">
					<div class = "icon-image-holder">				
						<img title = "Home Page" src="<?php echo ICON; ?>user/single_user.png" id = "" class = "hide header-icon-profile" alt="">
					</div>	
				</div>			
				
				<!-- Icon Text -->
				<div class = "icon-body">
					<p class = " icon-text"> My Boards </p>	
				</div>	
			</a>
		</div>		
		
		<!-- ICON: Profile Icon -->
		<div id = "js-activity-group-icon" class = "js-activity-group-icon-clicked icon-holder">
			<a href="kite.php">
			
				<!-- Icon Image -->
				<div class = "icon-header">
					<div class = "icon-image-holder">
						<img title = "" src="<?php echo ICON; ?>user/user_818181.png" id = "" class = "hide hheader-icon-groups " alt="">				
					</div>			
				</div>			
				
				<!-- Icon Text -->
				<div class = "icon-body">
					<p class = " icon-text"> Timeline </p>	
				</div>	
				
			</a>
		</div>	

		<!-- ICON: Profile Icon -->
		<div id = " " class = "icon-holder">
			<a href="kite_discover.php">
			
				<!-- Icon Image -->
				<div class = "icon-header">
					<div class = "icon-image-holder">				
						<img title = "Home Page" src="<?php echo ICON; ?>user/single_user.png" id = "" class = "hide hheader-icon-profile" alt="">
					</div>	
				</div>			
				
				<!-- Icon Text -->
				<div class = "icon-body">
					<p class = " icon-text"> Discover </p>	
					<!-- Discover Boards or Posts -->
				</div>	
			</a>
		</div>	
		
	</div>	

</div>