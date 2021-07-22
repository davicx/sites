//const mysql = require('mysql')

class Notification {
    constructor(notificationTo) {
        this._notificationTo = notificationTo;

    }
    
    //Method A1: Create a Single Notification
    static createNotification(newNotification) {
        console.log("create Notification, yay! it works! " + newNotification.notificationFrom + " " + newNotification.notificationTo);
    
    }

    //Method A2: Create a Group Notification 
    static createGroupNotification(newNotification) {
        console.log("create Group Notification, yay! it works! " + newNotification.notificationFrom + " " + newNotification.notificationTo);
    
    }

}


module.exports = Notification;



/*
	//METHOD 4: Create Regular Notification to a Group
	public function createGroupNotification($master_site, $notification_from, $notification_to, $notification_message, $notification_link, $notification_type, $group_id) {
		global $conn;
		
		//Notification Variables 
		$status_unseen = 1;

		//If notification is from the logged in user don't notify them 
		if ($notification_from == $notification_to) {	
			$from_logged_in_user = 1;	
			
		//Create a Notification 	
		} else {
			$from_logged_in_user = 0;
			$notification_count  = 1;
			
			$stmt = $conn->prepare("INSERT INTO notifications (master_site, notification_from, notification_to, notification_time, 
				notification_message, notification_type, link_url, full_link, group_id, from_logged_in_user, notification_count, status_unseen) 
				VALUES (?, ?, ?, NOW(), ?, ?, ?, ?, ?, ?, ?, ?)");
			
			$stmt->bind_param("sssssssiiii", $master_site, $notification_from, $notification_to, 
				$notification_message, $notification_type, $notification_link, $notification_link, $group_id, $from_logged_in_user, $notification_count, $status_unseen);

			if ($stmt->execute()) {
				//echo "success";
				//echo "normal";	
			} else {
				//echo "Error: <br>" . mysqli_error($conn);
			}
			$stmt->close();					
		}		
	}	
	*/