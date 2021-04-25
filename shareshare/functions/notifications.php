<?php
require_once('classes/Notifications.php');
require_once('functions.php');
require_once('includes/connection.inc.php');
require_once('includes/constants.inc.php');

/*

FUNCTIONS A: NOTIFICATION RELATED
	1) Function A1: Update All Notifications to Seen
	2) Function A2: Update Single Notification to Seen
	3) Function A3: Delete Single Notification 
*/

//Function A1: Update All Notifications to Seen
if (isset($_POST["notification_set_seen"]) && (!empty($_POST["notification_set_seen"]))) {
	$notification_set_seen	= $_POST["notification_set_seen"];
	$master_site			= $_POST["master_site"];
	$logged_in_user   	 	= $_POST["logged_in_user"];
	$status_unseen 			= 0;
	
	if (!($stmt = $conn->prepare("UPDATE notifications SET status_unseen = ? WHERE notification_to = ? "))) {
		//echo "Prepare failed: (" . $conn->errno . ") " . $conn->error;
	}
			
	if (!$stmt->bind_param('is', $status_unseen, $logged_in_user)) {
		//echo "Binding parameters failed: (" . $stmt->errno . ") " . $stmt->error;
	}
	if (!$stmt->execute()) {
		//echo "Execute failed: (" . $stmt->errno . ") " . $stmt->error;
	}	
	
}


//Function A2: Update Single Notification to Seen  
if (isset($_POST["notification_id"]) && (!empty($_POST["notification_id"]))) {
	$notification_id		= $_POST["notification_id"];
	$master_site			= $_POST["master_site"];
	$logged_in_user   	 	= $_POST["logged_in_user"];
	$status_unseen 			= 0;
	
	if (!($stmt = $conn->prepare("UPDATE notifications SET status_unseen = ? WHERE notification_id = ? "))) {
		//echo "Prepare failed: (" . $conn->errno . ") " . $conn->error;
	}
			
	if (!$stmt->bind_param('ii', $status_unseen, $notification_id)) {
		//echo "Binding parameters failed: (" . $stmt->errno . ") " . $stmt->error;
	}
	if (!$stmt->execute()) {
		//echo "Execute failed: (" . $stmt->errno . ") " . $stmt->error;
	}	
	
}

//Function A3: Delete Single Notification 
if (isset($_POST["notification_id_delete"]) && (!empty($_POST["logged_in_user"]))) {
	$notification_id		= $_POST["notification_id_delete"];
	$logged_in_user   	 	= $_POST["logged_in_user"];	
	
	$sql = "DELETE FROM notifications WHERE 
		notification_id = '$notification_id' 
		AND notification_to = '$logged_in_user'";
	
	if ($conn->query($sql) === TRUE) {
		//echo "Record deleted successfully";
	} else {
		//echo "Error deleting record: " . $conn->error;
	}
	
}

//Function A4: Delete All Notifications
if (isset($_POST["clear_all_notifications"]) && (!empty($_POST["logged_in_user"]))) {
	$logged_in_user   	 	= $_POST["logged_in_user"];	
	$notification_deleted	= 1;	
	
	if (!($stmt = $conn->prepare("UPDATE notifications SET notification_deleted = ? WHERE notification_to = '$logged_in_user' "))) {
		echo "Prepare failed: (" . $conn->errno . ") " . $conn->error;
	}
			
	if (!$stmt->bind_param('i', $notification_deleted)) {
		echo "Binding parameters failed: (" . $stmt->errno . ") " . $stmt->error;
	}
	if (!$stmt->execute()) {
		echo "Execute failed: (" . $stmt->errno . ") " . $stmt->error;
	} else {
		echo "success";
	}
	
}


?>