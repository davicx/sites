<p id = "" class = "js-update-all-notifications"> Seen All </p>
<?php 
	$result = mysqli_query($conn,"SELECT * FROM notifications WHERE 
		notification_to = '$logged_in_user' 
		AND from_logged_in_user = 0 
		ORDER BY notification_time DESC  ");

	while($row = mysqli_fetch_array($result)) {			
		$notification_id = $row['notification_id'];
		$Current_Notification = new Notifications($logged_in_user);
		$Current_Notification->getNotification($notification_id);
		$notification_from = $Current_Notification->notification_from;
		$notification_message = $Current_Notification->notification_message;
		$status_unseen  		= $Current_Notification->status_unseen ;
		if($status_unseen == 1 ) {
			$notification_background_color = "notification-unseen";
		} else {
			$notification_background_color = "";			
		}
 	
	?>
		<!-- Single Notification -->
		<div id = "js-update-single-notification_<?php echo $notification_id; ?>" class = "js-update-single-notification notification <?php echo $notification_background_color; ?>">
			<p> <?php echo $notification_id; ?> </p>
			<p> <?php echo $notification_message; ?> </p>
		</div>
		
		<!-- Hidden Values: Post Specific -->
		<input type="hidden" name="master-site" id = "" value="<?php echo $master_site; ?>">
		<input type="hidden" name="logged-in-user"  id = "" value = "<?php echo $logged_in_user; ?>"> 	
<?php }?>