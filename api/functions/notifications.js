/*
FUNCTIONS A: NOTIFICATION RELATED
	1) Function A1: Update All Notifications to Seen
	2) Function A2: Update Single Notification to Seen
	3) Function A3: Delete Single Notification 
    //group/id
    1) Method 1: Instantiate Notification 
	2) Method 2: Get All Notification Information 
	3) Method 3: Create Regular Notification
	4) Method 4: Create Group Notification 
	5) Method 5 Create List Notification 
	6) Method 6: Get Total Notifications 
	7) Method 7: Delete Group Notification 
	8) Method 8: Delete Individual Notification 
	9) Method 9: Notification Seen 
*/



//Function A1: Create a New Notification
//function createNotification(masterSite, notificationFrom, notificationTo, notificationMessage, notificationLink, notificationType) {
function createNotification(notificationFrom, notificationTo, notificationMessage, notificationLink, notificationType) {
    console.log("Notification: " + notificationFrom + " " + notificationTo + " " + notificationTo + " " + notificationMessage + " " + notificationType + " " + notificationLink);
}


 
module.exports = { createNotification };
//function foo() { console.log('foo') }
//function bar() { console.log('bar') }
//function baz() { foo(); bar() }





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