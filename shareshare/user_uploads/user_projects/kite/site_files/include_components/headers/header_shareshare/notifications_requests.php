<?php 

//STEP 1: Get Current Unseen Header Activity 
$Current_Activity = new Activity($logged_in_user);
$Current_Activity->getTotalHeaderActivity($logged_in_user);		
$total_header_new_activity = $Current_Activity->totalHeaderActivity;	

if($total_header_new_activity <0 ) {
	$total_header_new_activity = 0;
}	

//STEP 2: Get Unseen Notifications (All Notifications Since Last Time User 
//Part 1: Get Last Time User Clicked Notifications
$sql = "SELECT last_click FROM user_analytics WHERE user_name = '$logged_in_user' 
	AND icon_id = 'js-notification-header-seen'";

$result_header_notifications = $conn->query($sql) or die(mysqli_error());	
$last_click = "";
 
while($row_header_notifications = mysqli_fetch_array($result_header_notifications)) {
	$last_click = $row_header_notifications['last_click'];
} 

//Part 2: Get Notifications
$result_unseen_notifications = mysqli_query($conn,"SELECT * FROM notifications WHERE notification_to = '$logged_in_user' 
	AND from_logged_in_user = 0 
	AND notification_time >= '$last_click'	
	AND status_unseen = 1");	
	
$total_unseen_notifications = $result_unseen_notifications->num_rows;	
?>

	
<!-- REQUESTS: Positioning -->	
<div class = "relative-position">	

	<div data-uk-dropdown="{mode:'click' }">
	
		<!-- ICONS: Icon Area Trigger Modal --> 
		<div class = "">
			
			<!-- Icon Image -->
			<div class = "icon-header">
				<div class = "icon-image-holder">				
					<img title = "Home Page" src="<?php echo ICON; ?>notifications/notifications_2.png" id = "" class = "header-icon-notifications" alt="">
				</div>			
			</div>			

			<!-- Icon Text -->
			<div class = "icon-body">
				
				<p class = "icon-text"> Notifications </p>	
				<?php if($total_header_new_activity > 0) { ?> 
					<div class = "header-new-requests-holder">
						<p  id = "js-header-total-notice-activity" class = "header-new-requests-text"> <?php echo $total_header_new_activity; ?> </p>	
					</div>					
				<?php } ?> 
				
			</div>	
			
		</div>	
				
		<!-- MODAL: Pending Request Modal -->
		<div id = "header-request-dropdown" class="uk-dropdown">
			
			<!-- Select View: Requests or Notifications -->
			<p id = "js-header-view-notifications"  class = "header-request-notification-text bold">notifications  
				<span id = "js-total-unseen-notifications-dropdown-menu" class = " header-total-new-requests-text"><?php echo $total_unseen_notifications; ?></span>		
			</p>
			<p class = "header-request-notification-text"> | </p>
			<p id = "js-header-view-requests" class = "js-header-view-request-notifications header-request-notification-text">requests 
				<?php if($total_pending_requests > 0) { ?>
					<span id = "js-total-pending-requests-dropdown-menu" class = "header-total-new-requests-text"><?php echo $total_pending_requests; ?></span>
					
				<?php } ?>
			</p>
						
			<!-- Individual Request -->
			<?php include('include_components/requests/pending_requests_header.php') ?>
			
			<!-- Notifications --> 
			<?php include('include_components/notifications/pending_notifications_header.php') ?>			
			
		</div>	
	</div>		

</div>
