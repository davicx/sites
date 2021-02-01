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
		ORDER BY notification_time DESC  ");

	while($row = mysqli_fetch_array($result)) {			
		$notification_id = $row['notification_id'];
		$Current_Notification = new Notifications($logged_in_user);
		$Current_Notification->getNotification($notification_id);
		$notification_from = $Current_Notification->notification_from;
		$notification_message = $Current_Notification->notification_message;
		$notification_link = $Current_Notification->full_link;
		$status_unseen  		= $Current_Notification->status_unseen ;
		if($status_unseen == 1 ) {
			$notification_background_color = "notification-unseen";
		} else {
			$notification_background_color = "";			
		}
	?>
 	<div class  = "notification-temp">
		<p> Message: <?php echo $notification_message; ?> </p>
		<p> From: <?php echo $notification_from; ?> </p>
		<p> ID: <?php echo $notification_id; ?> </p>	
		<a href="<?php echo $notification_link; ?>">Link</a>
	</div>	
	<hr />
<?php }?>