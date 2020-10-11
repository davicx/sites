<?php
//Include Connection 
require_once('connection.inc.php');	

/*

FUNCTIONS A: ACTIVITY 
	1) Method A1: Get Total Activity for Header Display
	2) Method A2: Get Total Unseen Notifications 

FUNCTIONS B: CLICK AND ACTION RELATED
	1) Method B1: Update Last Click for Notificaitons Icon in Header
	2) Method B2: Update Last Click for Groups Icon in Header 
	
FUNCTIONS C: GROUP SPECIFIC ACTIVITY FUNCTIONS
	1) Method C1: Create New Notification For Group Discussion Activity 
	
*/

class Activity {
	public $userName = "";
	public $totalHeaderActivity = "";
	
	
	//Instantiate: Instantiate User
	public function __construct($userName ) {
		$this->userName = $userName;
	}


	//FUNCTIONS C: GROUP SPECIFIC ACTIVITY FUNCTIONS
	//Method C1: 
	

	//FUNCTIONS A: ACTIVITY 
	//Method A1: Get Total Activity for Header Display	
	public function getTotalHeaderActivity($logged_in_user) {
		global $conn;
			
		//STEP 1: Get the last time user has clicked this icon 		
		$sql = "SELECT last_click FROM user_analytics WHERE user_name = '$logged_in_user' 
			AND icon_id = 'js-notification-header-seen'";

		$result_header_notifications = $conn->query($sql) or die(mysqli_error());	
		$last_click = "";
		 
		while($row_header_notifications = mysqli_fetch_array($result_header_notifications)) {
			$last_click = $row_header_notifications['last_click'];
		} 	

		//STEP 2: Get all Pending Requests
		$result_requests_header = mysqli_query($conn,"SELECT * FROM pending_requests WHERE sent_to = '$logged_in_user' 
			AND request_is_pending = '1'");
			
		$total_header_unclicked_pending_requests = $result_requests_header->num_rows;

		//STEP 3: Get all Notifications 
		$result_notifications_header = mysqli_query($conn,"SELECT * FROM notifications WHERE notification_to = '$logged_in_user' 
			AND from_logged_in_user = 0 
			AND status_unseen = 1 
			AND notification_time >= '$last_click'");	
			
		$total_header_unclicked_notifications = $result_notifications_header->num_rows;
		
		//STEP 4: Sum Activity 
		$total_header_notification_unseen = $total_header_unclicked_pending_requests + $total_header_unclicked_notifications;
		$this->totalHeaderActivity 	= $total_header_notification_unseen; 	
	}	

	

	//Method B1: Update Last Click for Notificaitons Icon in Header
	public function updateIconClick($logged_in_user, $icon_id) {
		global $conn;
		
		$result_analytics = mysqli_query($conn,"SELECT * FROM user_analytics WHERE user_name = '$logged_in_user' AND icon_id = '$icon_id'");
		
		//If there is a result 
		if ($result_analytics) { 
			
			//Create a New Record for this visit 
			if($result_analytics->num_rows === 0) {

				$total_clicks = 1;
				
				$insert = $conn->prepare("INSERT INTO user_analytics (icon_id, total_clicks, user_name, last_click) VALUES (?,?,?,NOW()) ");
				$insert->bind_param('sis', $icon_id, $total_clicks, $logged_in_user);

				if ($insert->execute()) {
					//echo "success";				
				}
				
			//Update Current Analytics 
			} else {
		
				//Update total Page Views
				mysqli_query($conn,"UPDATE user_analytics SET total_clicks = total_clicks + 1 WHERE icon_id = '$icon_id' AND user_name = '$logged_in_user'");
				//mysqli_query($conn,"UPDATE user_analytics SET last_click=now() WHERE icon_id = '$icon_id' AND user_name = '$logged_in_user'");
				//echo "updated";
			}

		//There was an error
		} else {
			//echo "ERROR ";
		}	

	}		

	//Method B2: Update Last Click for Groups Icon in Header 
	public function updateGroupHeaderIconClicked($logged_in_user, $group_icon_id) {	
		global $conn;
		
		$result_analytics = mysqli_query($conn,"SELECT * FROM user_analytics WHERE user_name = '$logged_in_user' AND icon_id = '$group_icon_id'");
		
		//If there is a result 
		if ($result_analytics) { 
			
			//Create a New Record for this visit 
			if($result_analytics->num_rows === 0) {
				$total_clicks = 1;
				
				$insert = $conn->prepare("INSERT INTO user_analytics (icon_id, total_clicks, user_name, last_click) VALUES (?,?,?,NOW()) ");
				$insert->bind_param('sis', $group_icon_id, $total_clicks, $logged_in_user);

				if ($insert->execute()) {
					echo "success";				
				}
				
			//Update Current Analytics 
			} else {
		
				//Update total Page Views
				mysqli_query($conn,"UPDATE user_analytics SET total_clicks = total_clicks + 1 WHERE icon_id = '$group_icon_id' AND user_name = '$logged_in_user'");
				echo "updated";
			}

		//There was an error
		} else {
			echo "ERROR ";
		}	
	}
	

}
?>