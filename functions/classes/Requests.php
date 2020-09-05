<?php
/*
Notification Methods 
	1) Method 1: Instantiate Request 
	2) Method 2: Group Invite Request 
	3) Method 3: Friend Invite Request  

*/

include 'connection.inc.php';

class Requests {
	public $request_id = "";
	public $logged_in_user = "";
	public $master_site = "";


	//METHOD 1: Instantiate Request 
	public function __construct($logged_in_user) {
		$this->logged_in_user = $logged_in_user;
	}
	
	//METHOD 2:  Group Invite Request 
	public function createGroupPendingRequest($master_site, $group_id, $logged_in_user, $friend_invited_current) {
		global $conn;
	
		$request_type 		= "new_group";
		$request_type_text  = "New Group Invite";
		$request_is_pending = 1;
	
		//STEP 1: Make sure Notification is not a duplicate
		$result_request = mysqli_query($conn, "SELECT * FROM pending_requests WHERE request_type = 'new_group' 
			AND sent_by = '$logged_in_user' 
			AND sent_to = '$friend_invited_current' 
			AND request_is_pending = '1' 
			AND group_id = '$group_id' 
			AND friend_id = '0'");	
		
		$pending_request_found_count = mysqli_num_rows($result_request);

		if($pending_request_found_count < 1) {
			
			//STEP 2: Only Create a Request for Users who were just invited 
			if (strcasecmp($friend_invited_current, $logged_in_user) !=0) {
				$sql = 'INSERT INTO pending_requests (master_site, request_type, request_type_text, request_is_pending, sent_by, sent_to, group_id, updated, created) 
					VALUES (?,?,?,?,?,?,?, NOW(), NOW())';			  
				$stmt = $conn->stmt_init();
				$stmt = $conn->prepare($sql);
				// bind parameters and insert the details into the database
				$stmt->bind_param('sssissi', $master_site, $request_type, $request_type_text, $request_is_pending, $logged_in_user, $friend_invited_current, $group_id);
				//$stmt->execute();	
				if ($stmt->execute()) {
					echo "New record created successfully";
				} else {
					echo "Error: <br>" . mysqli_error($conn);
				}	
			}
		}

	}	
	
	

	//METHOD 3: Friend Invite Request 
	public function createFriendPendingRequest($master_site, $notification_from, $notification_to) {
		global $conn;
		
		
	}	
}
	
?>