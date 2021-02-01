<!-- NOTIFICATIONS: All Notifications -->
<div id = "js-header-pending-notifications">
	<?php 
	
	//STEP 1: Get Notifications 
	$result_notifications = mysqli_query($conn,"SELECT * FROM notifications WHERE notification_to = '$logged_in_user' 
		AND from_logged_in_user = 0 
		ORDER BY notification_time DESC");	
		
	$total_notifications = $result_notifications->num_rows;
		
	while($row_notifications = mysqli_fetch_array($result_notifications)) {			
		$notification_id = $row_notifications['notification_id'];
		$Current_Notification = new Notifications($logged_in_user);
		$Current_Notification->getNotification($notification_id);
		$notification_from = $Current_Notification->notification_from;
		$notification_from_image = getUserImage($notification_from);
		$notification_link = $Current_Notification->full_link;
		$notification_message = $Current_Notification->notification_message;
		$notification_time_message 	  = $Current_Notification->notification_time_message;
		$status_unseen  = $Current_Notification->status_unseen;
			
		if($status_unseen == 1 ) {
			$notification_background_color = "notification-unseen";
		} else {
			$notification_background_color = "";			
		}
	?>	
		<!-- Individual Notification -->	
		<div id = "js-update-single-notification_<?php echo $notification_id; ?>" class="js-update-single-notification notification-header <?php echo $notification_background_color; ?>">
			<a href="<?php echo $notification_link; ?>">
	
				<!-- Notification: From Image -->
				<div id = "" class="notification-header-image-area">
					<img src="<?php echo USER_IMAGE . $notification_from_image; ?>" alt="Notification From <?php echo $notification_from; ?>" class = "notification-header-from-image">
				</div>	
				
				<!-- Notification: Text -->
				<div id = "" class="notification-header-body">
					
					<!-- Notification Message -->
					<div id = "" class="notification-header-message">
						<p class = "notification-header-message-text"> <span class = "notification-user-text"> <?php echo $notification_from ;?> </span> <?php echo $notification_message; ?></p>
					</div>	

					<!-- Notification Posted Time -->
					<div id = "" class="notification-header-posted">
						<p class="notification-header-posted-text"> <?php echo $notification_time_message; ?> </p>			
					</div>	
		
				</div>	
				
				<!-- Hidden Values: Post Specific -->
				<input type="hidden" name="master-site" id = "" value="<?php echo $master_site; ?>">
				<input type="hidden" name="logged-in-user"  id = "" value = "<?php echo $logged_in_user; ?>"> 		
			</a>	
		</div>

	<?php } ?>
	<p id = "" class = "js-update-all-notifications hide"> Seen All </p>
</div>



