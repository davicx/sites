<?php
require_once('includes/constants.inc.php');
require_once('classes/User.php');
require_once('classes/Notifications.php');
require_once('functions.php');
require_once('includes/connection.inc.php');

/*
FUNCTIONS A: All User Related Functions
	1) Function A1: Add a Friend
	2) Function A2: Cancel Pending Friend Request
	3) Function A3: Remove a Friend
	4) Function A4: Accept Friend Request
	5) Function A5: Decline Friend Request	
	6) Function A6: Accept Group Request
	7) Function A7: Decline Group Request
	
FUNCTIONS B: USER ACCOUNT 	
	1) Function B1: Edit User Profile
	2) Function B2: Upload New User Image	
	3) Function B3: Delete User
	4) Function B4: Request Username  
	5) Function B5: Request Password Send Email (Part 1)
	5) Function B5: Request Password Send Email (Part 1)
	6) Function B6: Request Password Update to New Password (Part 2)
	7) Function B7: Check Password Length *No PHP	
	8) Function B8: Check that both Passwords are the same *No PHP	

FUNCTIONS C: SITE ACTIVITY	
	1) Function C1: Get New Group Posts
	2) Function C2: Update Group Posts to Seen
	3) Function C3: Get New Discussion Posts
	4) Function C4: Update Group Discussion to Seen
	5) Function C5: Get New File Activity
	6) Function C6: Update New File Activity to Seen
	
*/

//FUNCTIONS A: All User Related Functions
//Function A1: Add a Friend
if (isset($_POST["add_friend_id"]) && (!empty($_POST["logged_in_user"]))) {
	ob_clean();
	$logged_in_user     = $_POST["logged_in_user"];
	$master_site     	= $_POST["master_site"];
	$add_friend_id   	= $_POST["add_friend_id"];
	$add_friend_name   	= getUserName($add_friend_id);
	$current_date 		= date("Y-m-d H:i:s");
	
	//STEP 1: Call Method A4 Request a Friend
	$Current_User = new User($logged_in_user);
	echo $Current_User->addFriend($logged_in_user, $add_friend_name);	
	
	//STEP 2: Create a Notification
	$notification_from = $logged_in_user;
	$notification_to = $add_friend_name;

	$notification_message =  "requested to be friends";
	$notification_link = "#";
	$notification_type = "friend_request";
	$Current_Notification = new Notifications($logged_in_user);	
	$Current_Notification->createNotification($master_site, $notification_from, $notification_to, $notification_message, $notification_link, $notification_type);
}


//Function A2: Cancel Pending Friend Request
if (isset($_POST["cancel_friend_request_id"]) && (!empty($_POST["cancel_friend_request_id"]))) {
	$logged_in_user    			= $_POST["logged_in_user"];
	$master_site     			= $_POST["master_site"];
	$cancel_friend_request_id   = $_POST["cancel_friend_request_id"];
	$cancel_friend_request_name = getUserName($cancel_friend_request_id);
	
	//STEP 1: Cancel Sent Request 
	$Current_User = new User($logged_in_user);
	$Current_User->cancelPendingRequest($logged_in_user, $cancel_friend_request_name);	
	
	//STEP 2: Cancel Notification 
}


//Function A3: Remove a Friend
if (isset($_POST["remove_friend_id"]) && (!empty($_POST["logged_in_user"]))) {
	$logged_in_user     = $_POST["logged_in_user"];
	$remove_friend_id   = $_POST["remove_friend_id"];
	$remove_friend_name  = getUserName($remove_friend_id);

	$Current_User = new User($logged_in_user);
	$Current_User->removeFriend($logged_in_user, $remove_friend_name);

}


//Function A4: Accept Friend Request
if (isset($_POST["accept_friend_request_id"]) && (!empty($_POST["logged_in_user"]))) {
	$logged_in_user    			 = $_POST["logged_in_user"];
	$master_site     			 = $_POST["master_site"];	
	$accept_friend_request_id    = $_POST["accept_friend_request_id"];
	$accept_friend_request_name  = getUserName($accept_friend_request_id);
	$request_from  				 = $accept_friend_request_name;
	$current_friendship_status   = checkUserFriendshipStatus($accept_friend_request_name, $logged_in_user);
	

	//STEP 1: Accept Request
	$Current_User = new User($logged_in_user);
	$Current_User->acceptFriendRequest($request_from, $logged_in_user);
 
	//STEP 2: Create Notification User Accepted your Request
	$notification_from = $logged_in_user;
	$notification_to = $request_from;
	$notification_message =  "accepted your Friend Request";
	$notification_type =  "friend_request_accepted";
	$notification_link = "#";
	$Current_Notification = new Notifications($logged_in_user);	
	$Current_Notification->createNotification($master_site, $notification_from, $notification_to, $notification_message, $notification_link, $notification_type);	

	//echo $accept_friend_request_id;
}


//Function A5: Decline Friend Request
if (isset($_POST["decline_friend_request_id"]) && (!empty($_POST["logged_in_user"]))) {
	ob_clean();	
	
	$logged_in_user    			 = $_POST["logged_in_user"];
	$master_site     			 = $_POST["master_site"];	
	$decline_friend_request_id   = $_POST["decline_friend_request_id"];
	$request_from 				 = getUserName($decline_friend_request_id); 

	//STEP 1: Decline Request
	$Current_User = new User($logged_in_user);
	$Current_User->declineFriendRequest($request_from, $logged_in_user);
	
	//STEP 2: Delete Notification 
	
}


//Function A6: Accept Group Request
if (isset($_POST["accept_group_request_id"]) && (!empty($_POST["logged_in_user"]))) {
	$logged_in_user    			 = $_POST["logged_in_user"];
	$master_site     			 = $_POST["master_site"];	
	$accept_group_request_id     = $_POST["accept_group_request_id"];
	$group_id    				 = $_POST["group_id"];
	$sent_by    				 = $_POST["sent_by"];

	//STEP 1: Accept Request
	$Current_User = new User($logged_in_user);
	echo $Current_User->acceptGroupRequest($accept_group_request_id, $group_id, $logged_in_user);	
		
	//STEP 2: Create new notification that user has joined group 
	$notification_from = $logged_in_user;
	$notification_to = $sent_by;
	$notification_message =  "accepted your Group Request";
	$notification_type =  "group_request_accepted";
	$notification_link = "#";
	$Current_Notification = new Notifications($logged_in_user);	
	$Current_Notification->createNotification($master_site, $notification_from, $notification_to, $notification_message, $notification_link, $notification_type);	

}


//Function A7: Decline Group Request
if (isset($_POST["decline_group_request_id"]) && (!empty($_POST["decline_group_request_id"]))) {
	$logged_in_user    			 = $_POST["logged_in_user"];
	$master_site     			 = $_POST["master_site"];	
	$decline_group_request_id    = $_POST["decline_group_request_id"];
	$group_id    				 = $_POST["group_id"];
	$sent_by    				 = $_POST["sent_by"];

	//STEP 1: Decline Request
	$Current_User = new User($logged_in_user);
	$Current_User->declineGroupRequest($decline_group_request_id, $group_id, $logged_in_user);		
	
	//STEP 2: Remove Notification to User
	$notification_from = $sent_by;
	$notification_to = $logged_in_user;
	$notification_type = "group_invite";
	$Current_Notification = new Notifications($logged_in_user);	
	$Current_Notification->deleteGroupNotification($master_site, $notification_from, $notification_to, $notification_type, $group_id);

}

	
//FUNCTIONS B: USER ACCOUNT 	
//Function B1: Edit User Profile
if (isset($_POST["update_user_info"]) && (!empty($_POST["logged_in_user"]))) {
	
	//User Info Variables
	$logged_in_user 	=  $_POST['logged_in_user'];
	$first_name			=  $_POST['first_name'];
	$last_name			=  $_POST['last_name'];
	$email				=  $_POST['email'];
	$biography			=  $_POST['biography'];
	$user_id			=  $_POST['user_id'];
	$gender				=  $_POST['gender'];
	$birthday			=  $_POST['birthday'];
	
	//User Address Variables 
	$street_address_one 	=  $_POST['street_address_one'];
	$street_address_two		=  $_POST['street_address_two'];
	$address_city			=  $_POST['address_city'];
	$address_state			=  $_POST['address_state'];
	$address_zip_code		=  $_POST['address_zip_code'];
	$address_country		=  $_POST['address_country'];
	
	//User Clothing Size
	$user_shirt 		=  $_POST['user_shirt'];
	$user_sweater		=  $_POST['user_sweater'];
	$user_coat			=  $_POST['user_coat'];
	$user_jeans			=  $_POST['user_jeans'];
	$user_pants			=  $_POST['user_pants'];
	$user_dress_size	=  $_POST['user_dress_size'];
	$user_shoes			=  $_POST['user_shoes'];
	$user_info			=  $_POST['user_info'];
	
	//Update User Profile Table 
	$sql = "UPDATE user_profile SET first_name = ?, last_name = ?, email= ?, biography = ? WHERE user_id = ?";
	$stmt = $conn->prepare($sql);
	$stmt->bind_param('ssssi', $first_name, $last_name, $email, $biography, $user_id);
	$stmt->execute();
	
	//Update User Size and Address Table  
	$sql = "UPDATE user_size SET gender = ?, birthday = ?,
	street_address_line_one = ?, street_address_line_two = ?, address_city = ?, address_state = ?, address_zip_code = ?, address_country = ?,
	user_shirt = ?, user_sweater = ?, user_coat = ?, user_jeans = ?, user_pants = ?, user_dress_size = ?, user_shoes = ?, user_info = ?
	WHERE user_id = ?";
	
	$stmt = $conn->prepare($sql);
	$stmt->bind_param('ssssssssssssssssi', $gender, $birthday, 
	$street_address_one, $street_address_two, $address_city, $address_state, $address_zip_code, $address_country, 
	$user_shirt, $user_sweater, $user_coat, $user_jeans, $user_pants, $user_dress_size, $user_shoes, $user_info, 
	$user_id);
	
	if ($stmt->execute()) {
		echo "New record created successfully";
	} else {
		echo "Error: <br>" . mysqli_error($conn);
	}
	$stmt->close();	

} 


//Function B2: Upload New User Image
/* All File Related Functions In Files.php */

//Function B3: Delete User
/* Under Construction */

//Function B4: Request Username  
if (isset($_POST["request_username_email"]) && (!empty($_POST["request_username_email"]))) {
	$request_username_email     = $_POST["request_username_email"];

	//Step 1: Select User Name 
	$sql = "SELECT * FROM user_login WHERE user_email = '$request_username_email'";
	$result = $conn->query($sql) or die(mysqli_error());
	
	while($row = mysqli_fetch_array($result)) {
		$request_user_name = $row['user_name'];		
	}	
	
	$user_name_count = mysqli_num_rows($result);
	
	if($user_name_count > 0) {
		//Step 2: Send Email to User  
		$to = $request_username_email;
		$subject = "Username Request";

		$message = "
		<html>
		<head>
		<title>HTML email</title>
		</head>
			<body>
				<p> Your username is the following: <b> $request_user_name </b> if you have any other issues please contact us. 
				<p> Thanks,</p>
				<p> OSU MotorPool </p>
			</body>
		</html>
		";

		//Content Type 
		$headers = "MIME-Version: 1.0" . "\r\n";
		$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";

		//Headers
		$headers .= 'From: <david@osu_motorpool.co>' . "\r\n";
		$headers .= 'Bcc: vasquezd@onid.orst.edu' . "\r\n";

		mail($to,$subject,$message,$headers);

		echo 1;
	} else {
		echo 0;
	}

}


//Function B5: Request Password Send Email (Part 1)
if (isset($_POST["reset_password_email"]) && (!empty($_POST["reset_password_email"]))) {
	$reset_password_email     = $_POST["reset_password_email"];	
	
	$site_link  			  = $_POST["password_reset_site_link"];	
	$password_reset_status    = 1;
	$password_update_status   = 0;
	$password_reset_used	  = 0;
	//Password Update Status
	/*
	0- default value
	1- username not found
	2- email found
	3- database error
	4- Error Sending Email 
	5- success
	*/
	
	//Step 1: Create Reset Token 
	$password_reset_token = getToken($length=32);
	
	//Step 2: Check if username exists
	if ($result = mysqli_prepare($conn, "SELECT user_name FROM user_login WHERE user_email=?")) {
		$result -> bind_param("s", $reset_password_email);
		$result -> execute();
		$result -> bind_result($result_user_id);
		$result -> fetch();
		$user_name = $result_user_id;
		$result -> close();
		if(empty($user_name)) {
			//Not Found User Name		
			$password_update_status = 1;	
			
		} else {
			//Found User Name		
			$password_reset_username = $user_name;
			$password_update_status = 2;
	
		}
	} 	
	
	//Step 3: A User Name was Found so Proceed 
	if($password_update_status == 2) {

		//Step 4: Put into Database 
		$password_reset_used	  = 0;
		$sql = "UPDATE user_login SET password_reset_used = ? WHERE user_name = ?";
		$stmt = $conn->prepare($sql);
		$stmt->bind_param('is', $password_reset_used, $password_reset_username);
		$stmt->execute();	
		$stmt->close();	
	
		if (!($stmt = $conn->prepare("UPDATE user_login SET password_reset_key = ?, password_reset_sent = NOW(), password_reset_status = ? 
			WHERE user_name='$password_reset_username'"))) {
			echo "Prepare failed: (" . $conn->errno . ") " . $conn->error;
			$password_update_status  = 3;	
		}
				
		if (!$stmt->bind_param('ss', $password_reset_token, $password_reset_status)) {
			echo "Binding parameters failed: (" . $stmt->errno . ") " . $stmt->error;
			$password_update_status  = 3;	
		}
		if (!$stmt->execute()) {
			echo "Execute failed: (" . $stmt->errno . ") " . $stmt->error;
			$password_update_status  = 3;		
		}
	
		//Step 4: Put into Database 

		//Step 5: Send Email with Reset Key 		
		$link_part_one = "<a href=\"";
		$link_part_two = $site_link;
		$link_part_three = "?token=";
		$link_part_four = $password_reset_token;
		$link_part_five = "&useremail=";
		$link_part_six = $reset_password_email;
		$link_part_seven = "\"  target=\"_blank\"> Reset Password Link </a>";

		$link_raw = $link_part_two . $link_part_three . $link_part_four . $link_part_five . $link_part_six;
		$link = $link_part_one . $link_part_two . $link_part_three . $link_part_four . $link_part_five . $link_part_six . $link_part_seven;
		

		$to = $reset_password_email;
		$subject = "Reset Your Password";

		$message = "
		<html>
		<head>
		<title>HTML email</title>
		</head>
			<body>
				<p> Click on this <b> $link </b> and you will be able to update your password. 
				If you have any questions you can also visit our site at mywishlists.co and ask for help</p> 
				<p> Thanks,</p>
				<p> My Wishlist </p>
			</body>
		</html>
		";

		//Content Type 
		$headers = "MIME-Version: 1.0" . "\r\n";
		$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";

		//Headers
		$headers .= 'From: <david@mywishlists.co>' . "\r\n";
		$headers .= 'Bcc: vasquezd@onid.orst.edu' . "\r\n";

		
		if(mail($to,$subject,$message,$headers)) {
			//echo "mail sent";
			$password_update_status = 5;
		} else {
			$password_update_status = 4;
			//echo "mail had and error";
		}	
		
	$password_update_status = 5;
	//Step 6: Handle User Name Not Found 	
	} else {
		//echo "mail not sent";
		$password_update_status = 4;
	}	
	
	//echo $password_update_status;
	echo $link;
	
}

//Function B6: Request Password Update to New Password (Part 2)
if (isset($_POST["registration_password_one"]) && (!empty($_POST["registration_password_two"]))) {
	$password_reset_one     	= $_POST["registration_password_one"];
	$password_reset_two   		= $_POST["registration_password_two"];
	$password_reset_key   		= $_POST["password_reset_key"];
	$password_reset_email   	= $_POST["password_reset_email"];
	$salt = time();
	$new_password = sha1($password_reset_one . $salt);
	$password_reset_outcome     = 2;
	
	//Step 1: Check for Valid Password Update
	$sql = "SELECT * FROM user_login WHERE password_reset_key = '$password_reset_key'";
	$result_pending = $conn->query($sql) or die(mysqli_error());
		
	while($row = mysqli_fetch_array($result_pending)) {	
		$password_reset_sent          	= $row['password_reset_sent'];
		$password_reset_active         	= $row['password_reset_status'];
		$password_reset_database_key    = $row['password_reset_key'];
		$password_reset_email_sent_to   = $row['user_email'];

	}	
	
	//Step 2: Instantiate Array to hold Outcome
	/*
	Outcome 1: Password Reset
	Outcome 2: Timestamp Expired
	Outcome 3: Record not found 
	*/
	$reset_password_outcome['reset_password_outcome'] = 0;
	$reset_password_outcome['reset_password_outcome_message'] = "";

	//echo $password_reset_sent . " " . $password_reset_email_sent_to . " " .  $password_reset_database_key . " " . $password_reset_active;
	
	//Step 3: Make sure Password Reset Key Found
	if (isset($password_reset_sent) && (!empty($password_reset_sent))) {
	
		//Step 3: Make sure less then 24 hours has passed
		$password_resent_sent = strtotime($password_reset_sent);
		$current_time = time();
		$elapsed_time = $current_time - $password_resent_sent;
		
		//Timestamp still active 
		if($elapsed_time < 86400 && $elapsed_time > 0 && $password_reset_active ==1) {     
		
			if (!($stmt = $conn->prepare("UPDATE user_login SET password = ?, salt = ? WHERE password_reset_key = '$password_reset_key'"))) {
				//echo "Prepare failed: (" . $conn->errno . ") " . $conn->error;
				//$password_reset_outcome = 0;
			}
					
			if (!$stmt->bind_param('si', $new_password, $salt)) {
				//echo "Binding parameters failed: (" . $stmt->errno . ") " . $stmt->error;
				//$password_reset_outcome = 0;
			}
			
			if (!$stmt->execute()) {
				//echo "Execute failed: (" . $stmt->errno . ") " . $stmt->error;
				//$password_reset_outcome = 0;	
			}		
			
			//Update Active to 0
			$reset_completed_status = 0;
			$sql = "UPDATE user_login SET password_reset_status = ? WHERE password_reset_key = ?";
			$stmt = $conn->prepare($sql);
			$stmt->bind_param('is', $reset_completed_status, $password_reset_database_key);
			$stmt->execute();	
			
			//Update Active to 0
			$password_reset_used = 1;
			$sql = "UPDATE user_login SET password_reset_used = ? WHERE password_reset_key = ?";
			$stmt = $conn->prepare($sql);
			$stmt->bind_param('is', $password_reset_used, $password_reset_database_key);
			$stmt->execute();	
			
			$reset_password_outcome['reset_password_outcome'] = 1;
			$reset_password_outcome['reset_password_outcome_message'] = "Your have reset your password";			
			
			//echo " ACTIVE RESET ";
			echo json_encode($reset_password_outcome);
			
		//Timstamp Not Active
		} else {
			$reset_password_outcome['reset_password_outcome'] = 2;
			$reset_password_outcome['reset_password_outcome_message'] = "Your password link has expired, would you like to resend it?";	
			echo json_encode($reset_password_outcome);	
		}
	
	//Record not found	
	} else {
		$reset_password_outcome['reset_password_outcome'] = 3;
		$reset_password_outcome['reset_password_outcome_message'] = "There was a small error, we can resend your password link";			
		echo json_encode($reset_password_outcome);		
	}
}

//Function B7: Check Password Length *No PHP	

//Function B8: Check that both Passwords are the same *No PHP		



?>