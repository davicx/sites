let user = require('./user');
/*
FUNCTIONS A: NOTIFICATION RELATED
	1) Function A1: Create a New Notification

*/



//Function A1: Create a New Notification
//function createNotification(masterSite, notificationFrom, notificationTo, notificationMessage, notificationLink, notificationType) {
function createNotification(notificationFrom, notificationTo, notificationMessage, notificationLink, notificationType) {
    console.log("NOTIFICATION: " + notificationFrom + " " + notificationTo + " " + notificationTo + " " + notificationMessage + " " + notificationType + " " + notificationLink);
	user.getActiveGroupMembers(321);


}


 
module.exports = { createNotification };





/*
$post_type = "text";
$notification_message = "made a comment "; 
$notification_type = "new_post_text"; 
$notification_link = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";

$post_type = "text";
$notification_message = "made a comment "; 
$notification_type = "new_post_text"; 
$notification_link = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";


	public function createNotification($master_site, $notification_from, $notification_to, $notification_message, $notification_link, $notification_type) {
		global $conn;
		
		//Notification Variables 
		$status_unseen = 1;

		//See if notification is from the logged in user 
		if ($notification_from == $notification_to) {	
			$from_logged_in_user = 1;	
		} else {
			$from_logged_in_user = 0;				
		}

		$stmt = $conn->prepare("INSERT INTO notifications (master_site, notification_from, notification_to, notification_time, 
			notification_message, notification_type, link_url, full_link, from_logged_in_user, status_unseen) 
			VALUES (?, ?, ?, NOW(), ?, ?, ?, ?, ?, ?)");
		
		$stmt->bind_param("sssssssii", $master_site, $notification_from, $notification_to, 
			$notification_message, $notification_type, $notification_link, $notification_link, $from_logged_in_user, $status_unseen);

		if ($stmt->execute()) {
			//echo "success";
			echo "normal";	
		} else {
			echo "Error: <br>" . mysqli_error($conn);
		}
		$stmt->close();				
	}	
    
*/