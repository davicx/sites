<!-- NOTIFICATIONS: Info -->
<?php 
/*
Someone added you as a friend
Someone accepted your friend request
Someone 
*/
?>

<?php 
	$result = mysqli_query($conn,"SELECT * FROM notifications WHERE 
		notification_to = '$logged_in_user' 
		AND from_logged_in_user = 0 
		AND notification_deleted = 0
		ORDER BY notification_time DESC ");

	while($row = mysqli_fetch_array($result)) {			
		$notification_id = $row['notification_id'];
		$Current_Notification = new Notifications($logged_in_user);
		$Current_Notification->getNotification($notification_id);
		$notification_from = $Current_Notification->notification_from;
		$notification_message = $Current_Notification->notification_message;
		$notification_link = $Current_Notification->full_link;
		$notification_time = $Current_Notification->notification_time;
		$notification_type = $Current_Notification->notification_type;
		$status_unseen  		= $Current_Notification->status_unseen ;
		if($status_unseen == 1 ) {
			$notification_background_color = "notification-unseen";
		} else {
			$notification_background_color = "";			
		}
	?>
 	<div id = "js-notification_<?php echo $notification_id; ?>"  class  = "js-notification notification-temp <?php echo $notification_background_color; ?>">
		<p id = "js-delete-single-notification_<?php echo $notification_id; ?>" class = "js-delete-single-notification temp-delete-notification"> x </p>
		<p class = "no-margin"> Message: <?php echo $notification_message; ?> </p>
		<p class = "no-margin"> From: <?php echo $notification_from; ?> </p>
		<p class = "no-margin"> ID: <?php echo $notification_id; ?> </p>
		<p class = "no-margin"> Time: <?php echo $notification_time; ?> </p>	
		<p class = "no-margin"> Type: <?php echo $notification_type; ?> </p>	
		<a href="<?php echo $notification_link; ?>" class = "no-margin">Link</a>
		<hr />
	</div>	
	
<?php }?>

<?php 
/*
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
*/
?>