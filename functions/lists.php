<?php
require_once('includes/constants.inc.php');
require_once('functions.php');
require_once('includes/connection.inc.php');
require_once('classes/MasterList.php');
require_once('classes/Notifications.php');

/*
FUNCTIONS A: Master List 
	1) Function A1: Create New List
	2) Function A2: Show Edit List Area 
	3) Function A3: Rename List 
	4) Function A4: Delete List
	5) Function A5: Leave List
	
FUNCTIONS B: Master List with Abilility to add and Remove Users (more Control) 
	1) Function B1: Add Existing User to View List 
	2) Function B2: Add Existing User to Own list 
	3) Function B3: Email User to View list 
	4) Function B4: Email User to Own list 
	5) Function B5: Remove User From List (They must only have viewing privilege) 
	6) Function B6: Make List Public	
    7) Function B7: Make List Private	
	8) Function B8: Remove User From List 

FUNCTIONS C: Internal Functions and External Code 
	1) Function C1: Delete List	 
	2) Function C2: Leave List  
	
FUNCTIONS D: External Code 
	1) Function D1: Right Click on Master list (Folder)
	2) Function D2: Right Click on Master list for Viewer (Folder)
	3) Function D3: Right Click on Default list (Folder)
	4) Function D4: Drag and Drop Code 	
*/
 

//Function A1: Create New List
if (isset($_POST["logged_in_user"]) && (!empty($_POST["list_name"]))) {
	$logged_in_user     = $_POST["logged_in_user"];
	$list_type     		= $_POST["list_type"];
	$list_name    		= $_POST["list_name"];
	$group_id     		= $_POST["group_id"];
	$list_id 			= 0;
		
	//echo $logged_in_user . " " . $list_type . " " . $list_name;
	//Instantiate new list 
	$Current_List = new MasterList($logged_in_user, $list_type, $list_id);
	$Current_List->createNewList($logged_in_user, $list_type, $list_name, $group_id);
	
	//Create Notification to Group (if set) 
	if($group_id != 0) {
		
	}
}

//Function A2: Show Edit List Area 
//*no Server Code 

//Function A3: Rename List 
if (isset($_POST["logged_in_user"]) && (!empty($_POST["new_list_name"]))) {
	$logged_in_user     = $_POST["logged_in_user"];
	$list_type     		= $_POST["list_type"];
	$list_name      	= $_POST["new_list_name"];
	$list_id      		= $_POST["list_id"];
	
	//Instantiate new list 
	$Current_List = new MasterList($logged_in_user, $list_type, $list_id);
	$Current_List->renameList($logged_in_user, $list_name, $list_id);
		
}

//Function A4: Delete List
if (isset($_POST["delete_list_id"]) && (!empty($_POST["logged_in_user"]))) {
	$list_id     	= $_POST["delete_list_id"];
	$logged_in_user = $_POST["logged_in_user"];
	$active_member = 0;
	
	$sql = "UPDATE list SET active_status = ? WHERE list_id = '$list_id' AND user_name = '$logged_in_user'";
	$stmt = $conn->prepare($sql);
	$stmt->bind_param('i', $active_member);
	
	if ($stmt->execute()) {
		echo "success";
	} else {
		echo "could not execute query";
	}
}

//Function A5: Leave List
if (isset($_POST["leave_list_id"]) && (!empty($_POST["logged_in_user"]))) {
	$list_id     	= $_POST["leave_list_id"];
	$logged_in_user = $_POST["logged_in_user"];
	$active_member = 0;
	
	$sql = "DELETE FROM list_users WHERE user_name='$logged_in_user' and list_id = '$list_id'";

	if ($conn->query($sql) === TRUE) {
		echo "Record deleted successfully";
	} else {
		echo "Error deleting record: " . $conn->error;
	}
	
	$sql = "DELETE FROM list WHERE shared_with ='$logged_in_user' and list_id = '$list_id'";

	if ($conn->query($sql) === TRUE) {
		echo "Record deleted successfully";
	} else {
		echo "Error deleting record: " . $conn->error;
	}

}


//FUNCTIONS B: Master List with Abilility to add and Remove Users (more Control) 
//Function B1: Add Existing User to View List 
if (isset($_POST["logged_in_user"]) && (!empty($_POST["list_add_selected_friends"]))) {
	global $conn;
	$list_id		 	= $_POST["list_id"];
	$list_type    	 	= $_POST["list_type"];
	$selected_friends 	= $_POST["list_add_selected_friends"];	
	$logged_in_user 	= $_POST["logged_in_user"];	

	//Notification Information
	$master_site 			= $_POST["master_site"];	
	$notification_message 	= $_POST["notification_message"];	
	$notification_link 		= $_POST["notification_link"];	
	$notification_from  	= $logged_in_user;
 	$selected_friends_count = count($selected_friends);
	 

	//Instantiate Group and Create the Request 
	$Current_List = new MasterList($logged_in_user, $list_type, $list_id);
	echo $Current_List->addUserExistingView($list_id, $list_type, $selected_friends, $logged_in_user);		
	
	//Create New Notifications to all Invited Friends 
	for($x = 0; $x < $selected_friends_count; $x++) {
		$notification_to	= $selected_friends[$x];
		$Current_Notification = new Notifications($logged_in_user);		
		echo $Current_Notification->createListNotification($master_site, $notification_from, $notification_to, $notification_message, $notification_link, $list_id);		
	}		
}

//Function B2: Add Existing User to Own list 
if (isset($_POST["logged_in_user"]) && (!empty($_POST["list_add_selected_owners"]))) {
	global $conn;
	$list_id		 	= $_POST["list_id"];
	$list_type    	 	= $_POST["list_type"];
	$selected_friends 	= $_POST["list_add_selected_owners"];	
	$logged_in_user 	= $_POST["logged_in_user"];	
	$active_status 		= 1;
	$active_member 		= 0;
	
	//Instantiate Group and Create the Request 
	$Current_List = new MasterList($logged_in_user, $list_type, $list_id);
	echo $Current_List->addListOwnerExisting($list_id, $list_type, $selected_friends, $logged_in_user, $active_status, $active_member);		

}

//Function B3: Email User to View list 
if (isset($_POST["invite_list_viewer"]) && (!empty($_POST["logged_in_user"]))) {
	
	global $conn;
	$list_id		 	= $_POST["list_id"];
	$list_type    	 	= $_POST["list_type"];
	$logged_in_user 	= $_POST["logged_in_user"];		
	$selected_users 	= $_POST["selected_users"];	
	$site_link		 	= $_POST["site_link"];		
	$email_message		 = $_POST["email_message"];			
	$selected_users = array_filter($selected_users);
	$selected_users = array_values($selected_users);
	$total_selected_users = count($selected_users);
	$request_type  = "new_list";
	$status = 1;
	$active_member = 0;
	$group_key = uniqid(microtime(),1);

	//Send Email to all invited users 
	for($x = 0; $x < $total_selected_users; $x++) {
		$friend_email = $selected_users[$x];
			
		if(!empty($email_message)) {
			$email_message_send = 	$email_message;	
		} else {
			$email_message_send = $selected_users[$x] . " wants to share their wishlist with you. If you follow the link you can sign up for an account and view their list!";			
		}
		
		//Step 1: Create Email Link (For Wishlist)
		$part_one = "<a href=";
		$part_two = $site_link;
		$part_three = "?hash=";		
		$hash = sha1(mt_rand(10000,99999).time().$friend_email);
		$link_part_one = $part_one . $part_two . $part_three;
		$link_part_two = $hash;
		$link_part_three = "&useremail=";
		$link_part_four = $friend_email;
		$link_part_five = "&friendname=";
		$link_part_six = $logged_in_user;
		$link_part_seven = "&listid=";
		$link_part_eight = $list_id;
		$link_part_nine = "\">Join WishList</a>";
		$link = $link_part_one . $link_part_two . $link_part_three . $link_part_four . $link_part_five . $link_part_six . $link_part_seven . $link_part_eight . $link_part_nine;
		
		//Step 2: Create Existing user Email Link (For Wishlist)
		$site_link_current_user = "http://mywishlists.co/wishlist/index_invite.php";
		$part_one_current_user = "<a href=";
		$part_two_current_user = $site_link_current_user;
		$part_three_current_user = "?hash=";		
		//$hash = sha1(mt_rand(10000,99999).time().$friend_email);
		$link_part_one_current_user = $part_one_current_user . $part_two_current_user . $part_three_current_user;
		$link_part_two_current_user = $hash;
		$link_part_three_current_user = "&useremail=";
		$link_part_four_current_user = $friend_email;
		$link_part_five_current_user = "&friendname=";
		$link_part_six_current_user = $logged_in_user;
		$link_part_seven_current_user = "&listid=";
		$link_part_eight_current_user = $list_id;
		$link_part_nine_current_user = "\">Login and Add the List </a>";
		$link_current_user = $link_part_one_current_user . $link_part_two_current_user . $link_part_three_current_user . $link_part_four_current_user . $link_part_five_current_user . $link_part_six_current_user . $link_part_seven_current_user . $link_part_eight_current_user . $link_part_nine_current_user;

		$to = $selected_users[$x];
		$subject = "Wishlist Invite";

		$message = "
		<html>
		<head>
		<title>HTML email</title>
		</head>
			<body>
				<p> $email_message_send </p>
				<p> By following this <b> $link </b> you will be able to see their list when you register! 
				If you have any questions you can also visit our site at mywishlists.co</p> 
				<p> Do you <b> already have an account, </b> you can $link_current_user by following the link! </p>
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

		//mail($to,$subject,$message,$headers);

		//Step 3: Create Pending Request
		$codehash = $hash;
		$request_from = $logged_in_user;
		$request_to = $link;
		$request_to_existing_user = $link_current_user;
		$status = 1;
		$stmt = $conn->prepare("INSERT INTO pending_email(codehash, request_from, request_to, request_to_existing_user, email, list_id, status) VALUES (?, ?, ?, ?, ?, ?, ?)");
		$stmt->bind_param("sssssii", $codehash, $request_from, $request_to, $request_to_existing_user, $friend_email, $list_id, $status);

		if ($stmt->execute()) {
			echo "New record created successfully";
			//echo $link_part_one;
		} else {
			echo "Error: <br>" . mysqli_error($conn);
		}
		$stmt->close();		
	}	
}

//Function B4: Email User to Own list 
if (isset($_POST["co_list_email_test"]) && (!empty($_POST["logged_in_user"]))) {
	global $conn;

	$list_id		 	= $_POST["list_id"];
	$list_type    	 	= $_POST["list_type"];
	$logged_in_user 	= $_POST["logged_in_user"];		
	$selected_users 	= $_POST["selected_users"];	
	$site_link		 	= $_POST["site_link"];		
	$selected_users = array_filter($selected_users);
	$selected_users = array_values($selected_users);
	$total_selected_users = count($selected_users);
	$request_type  = "new_list";
	$status = 1;
	$active_member = 0;
	$group_key = uniqid(microtime(),1);
	

	//Send Email to all invited users 
	for($x = 0; $x < $total_selected_users; $x++) {
		$friend_email = $selected_users[$x];
		
		//Step 1: Create Email Link 
		$part_one = "<a href=";
		$part_two = $site_link;
		$part_three = "?hash=";		
		//$link_part_one = "<a href=\"http://people.oregonstate.edu/~vasquezd/sites/shareshare/site_files/register_email.php\">Join ShareShare</a>"; 		
		$hash = sha1(mt_rand(10000,99999).time().$friend_email);
		$link_part_one = $part_one . $part_two . $part_three;
		$link_part_two = $hash;
		$link_part_three = "&useremail=";
		$link_part_four = $friend_email;
		$link_part_five = "&friendname=";
		$link_part_six = $logged_in_user;
		$link_part_seven = "&listidown=";
		$link_part_eight = $list_id;
		$link_part_nine = "\">Join Wishlist</a></p>";
		$link = $link_part_one . $link_part_two . $link_part_three . $link_part_four . $link_part_five . $link_part_six . $link_part_seven . $link_part_eight . $link_part_nine;
		
		$to = $selected_users[$x];
		$subject = $logged_in_user . ' wants to share files on WishList ';
		$message = "hello, your friend wants you to see their list they created!" . $link. " If you follow the link and sign up you will have access to the list!" ;
			
		$headers = 'From: david.vasquez@oregonstate.edu' . "\r\n" .
			'Reply-To: david.vasquez@oregonstate.edu' . "\r\n" .
			'X-Mailer: PHP/' . phpversion();
		$headers = "Content-Type: text/html; charset=ISO-8859-1\r\n";
		mail($to, $subject, $message, $headers);
		
		//Step 3: Create Pending Request
		$stmt = $conn->prepare("INSERT INTO pending_email(codehash, request_from, request_to, email, list_id_own) VALUES (?, ?, ?, ?, ?)");
		$stmt->bind_param("ssssi", $hash, $logged_in_user, $link, $friend_email, $list_id);

		
		if ($stmt->execute()) {
			//echo "New record created successfully";
			echo $link_part_one;
		} else {
			echo "Error: " . $sql . "<br>" . mysqli_error($conn);
		}
		$stmt->close();
	
	}

}


//Function B5: Remove User From List (They must only have viewing privilege) 
if (isset($_POST["remove_user"]) && (!empty($_POST["list_id"]))) {
	$list_id       = $_POST["list_id"];
	$remove_user   = $_POST["remove_user"];
	
	$sql = "DELETE FROM list_users WHERE user_name='$remove_user' and list_id = '$list_id'";

	if ($conn->query($sql) === TRUE) {
		echo "Record deleted successfully";
	} else {
		echo "Error deleting record: " . $conn->error;
	}
}

//Function B6: Make List Public	
if (isset($_POST["list_id_make_public"]) && (!empty($_POST["logged_in_user"]))) {
	$logged_in_user     = $_POST["logged_in_user"];
	$list_id    		= $_POST["list_id_make_public"];
	$public_status		= 1;
	
	$sql = "UPDATE list SET public_status = ? WHERE list_id = '$list_id' AND created_by = '$logged_in_user'";
	$stmt = $conn->prepare($sql);
	$stmt->bind_param('i', $public_status);
	
	if ($stmt->execute()) {
		echo "success";
	} else {
		echo "could not execute query";
	}	
}

//Function B7: Make List Private	
if (isset($_POST["list_id_make_private"]) && (!empty($_POST["logged_in_user"]))) {
	$logged_in_user     = $_POST["logged_in_user"];
	$list_id    		= $_POST["list_id_make_private"];
	$public_status		=0;
	
	$sql = "UPDATE list SET public_status = ? WHERE list_id = '$list_id' AND created_by = '$logged_in_user'";
	$stmt = $conn->prepare($sql);
	$stmt->bind_param('i', $public_status);
	
	if ($stmt->execute()) {
		echo "success";
	} else {
		echo "could not execute query";
	}
}

//Function B8: Remove User From List 


//FUNCTIONS C: Internal Functions and External Code 
//Function C1: Delete List	 
//*no Server Code 

//Function C2: Leave List  
//*no Server Code 

//FUNCTIONS D: External Code 
//Function D1: Right Click on Master list (Folder)
//*no Server Code 

//Function D2: Right Click on Master list for Viewer (Folder)
//*no Server Code 

//Function D3: Right Click on Default list (Folder)
//*no Server Code 

//Function D4: Drag and Drop Code 	
//*no Server Code 




?>