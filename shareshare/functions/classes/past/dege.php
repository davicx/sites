				
			/* WORKDS 
			
			
			*/
	
			
			
			/////////
			//THIS IS THE CODE THAT CURRENTLY RUNS
			/*
			
						
			//STEP 1: Insert Friendship 1
			$friend_key_from = $logged_in_user . $requestFrom;
				
				//Check if record exists 
				$query_one = mysqli_query($conn, "SELECT * FROM friends WHERE friend_key='".$friend_key_from."'");
				
				if(mysqli_num_rows($query_one) > 0){
					//Remove request this record exists 
					$sql = "UPDATE pending_requests SET status = ? WHERE sent_by = '$requestFrom' and sent_to = '$logged_in_user' and request_type = '$newFriend'";
					$stmt = $conn->prepare($sql);
					$stmt->bind_param('i', $status);
						if ($stmt->execute()) {
							//echo "success";
					}
				}else{
					//This record does not exist so create the friendship 
					$insert = $conn->prepare("INSERT INTO friends(user_name, user_id, friend_user_name, friend_id, friend_key) VALUES (?,?,?,?,?) ");
					$insert->bind_param('sisis', $logged_in_user, $loggedInUserID, $requestFrom, $requestFromID, $friend_key_from);
					
					//Update pending requests. 
					if ($insert->execute()) {
						$sql = "UPDATE pending_requests SET status = ? WHERE sent_by = '$requestFrom' and sent_to = '$logged_in_user' and request_type = '$newFriend'";
						$stmt = $conn->prepare($sql);
						$stmt->bind_param('i', $status);
							if ($stmt->execute()) {
								//echo "success";
								//Add Notification to Logged in User
								$notification_message =  "accepted your friend request";
								$notification_link = "#";
								$Current_Notification = new Notifications($logged_in_user);	
								$Current_Notification->createListNotification($master_site, $notification_from, $notification_to, $notification_message, $notification_link, $list_id);

						}
					}
				}
				
			
			//STEP 2: Insert Friendship 2
			$friend_key_to = $requestFrom . $logged_in_user;
			
			$query_two = mysqli_query($conn, "SELECT * FROM friends WHERE friend_key='".$friend_key_to."'");
				
				if(mysqli_num_rows($query_two) > 0){
					//echo "email already exists";
				}else{
					$insert = $conn->prepare("INSERT INTO friends(user_name, user_id, friend_user_name, friend_id, friend_key) VALUES (?,?,?,?,?) ");
					$insert->bind_param('sisis', $requestFrom, $requestFromID, $logged_in_user, $loggedInUserID, $friend_key_to);
					
					//Update pending requests. 
					if ($insert->execute()) {
						//echo "success";
					}				
				}
			*/
			
			
			
			////////
			
			


			
		
/** Add **/
//Check to see if they are already friends

/*
//Check to see if a request has already been sent


//If it has not insert friend request into pending rows
if($count == 0){
	$insert = $conn->prepare("INSERT INTO pending_requests (request_type, request_type_name, sent_by, sent_to, request_key, status) VALUES (?,?,?,?,?,?) ");
	$insert->bind_param('sssssi', $requestType, $request_type_name, $sentFrom, $sentTo, $key, $status);
	
	if ($insert->execute()) {
		echo "added key";

	} else {
		echo "error";
	}
} else {
	echo "Request already Sent";
}
*/