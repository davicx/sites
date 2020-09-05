<?php
require_once('functions.php');
require_once('includes/connection.inc.php');
require_once('classes/Requests.php');
require_once('classes/Notifications.php');
require_once('classes/Groups.php');

//FUNCTIONS TABLE OF CONTENTS//
/*
FUNCTIONS A: All Functions Related to Boards
	1) Function A1: Create a Board 
	
*/

//FUNCTIONS A: All Functions Related to Boards
//Function A1: Create a Board 

/*
new_board_name: new_board_name, 
: group_id, 
logged_in_user: logged_in_user, 
: group_is_private }, 
*/
if (isset($_POST["new_board_name"]) && (!empty($_POST["new_board_name"]))) {
	global $conn;	
	$board_name 	= $_POST["new_board_name"];	
	$group_id	 		= $_POST["group_id"];		
	$created_by_name 		= $_POST["logged_in_user"];		
	$group_is_private	= $_POST["group_is_private"];	
	$active_status		= 1;
	$group_key		 	= uniqid(microtime(),1);

	//STEP 1: Create new group and insert into groups table (This can't be done inside the class because you need Group ID to instantiate class)
	$stmt = $conn->prepare("INSERT INTO boards (board_name, group_id, created_by_name, active_status, updated, created) VALUES (?,?,?,?, NOW(), NOW()) ");
	$stmt->bind_param('sisi', $board_name, $group_id, $created_by_name, $active_status);

	//Success
	if ($stmt->execute()) {
		echo "success";

	} else {
		echo "Error: " . $sql . "<br>" . mysqli_error($conn);
	}
	
/*
Fatal error</b>:  Call to a member function bind_param() on a non-object in <b>/nfs/onid-fs1/u2/v/vasquezd/public_html/sites/functions/boards.php</b> on line <b>35</b><br />
board_name
group_id
created_by_name
is_default
is_public
active_status
recycle_status
updated
created
	
	//STEP 1: Create new group and insert into groups table (This can't be done inside the class because you need Group ID to instantiate class)
	$stmt = $conn->prepare("INSERT INTO groups (group_type, created_by, group_key, group_name, group_private) VALUES (?,?,?,?,?) ");
	$stmt->bind_param('ssssi', $group_type, $logged_in_user, $group_key, $group_name, $group_is_private);

	//Success
	if ($stmt->execute()) {
		//STEP 2: Select group ID and use this to populate the rest of the fields		
		$query = "SELECT group_id FROM groups WHERE group_key ='$group_key' AND created_by = '$logged_in_user' LIMIT 1";
		$result = mysqli_query($conn, $query);
		$row = mysqli_fetch_assoc($result);
		$new_group_id = $row['group_id'];

		//STEP 3: Create a Class and Add all Users to this Group
		$active_member = 1;
		$sql = 'INSERT INTO group_users (group_id, user_name, active_member) VALUES (?, ?, ?)';			  
		$stmt = $conn->stmt_init();
		$stmt = $conn->prepare($sql);
		$stmt->bind_param('isi', $new_group_id, $logged_in_user, $active_member);
		$stmt->execute();		
		$stmt->close();	

	} else {
		echo "Error: " . $sql . "<br>" . mysqli_error($conn);
	}
	*/	
}



/*
///SORT 


FUNCTIONS G: All Functions Related to Group
	1) Function G1: Create Group from Existing User 
	2) Function G2: Create Group from Email
	3) Function G3: Add Existing User to Group 
	4) Function G4: Add Existing User to Group through Email 
	5) Function G5: Create Board (boards are like groups but can have followers)
	6) Function G6: Follow Board (Group)
	7) Function G7: UnFollow Board (Group)	
	8) Function G8: Rename Group 
	9) Function G9: Leave Group 
	10) Function G10: Delete Group 
	11) Function G11: Delete Board
	
FUNCTIONS I: Internal Functions 
*No Server Code
	
FUNCTIONS G.UI: Functions Related to Group User Interface
*No Server Code

FUNCTIONS R: Right Click and Other Code 
	1) Function R.1: Group Right Click Code
	2) Function R.2: Mywall Right Click Code	
	
*/



/*
//Function G5: Create Board



//Function G6: Follow Board (Group)
if (isset($_POST["follow_group"]) && (!empty($_POST["group_id_follow"]))) {
	$request_type 	    = "follow_group";	
	$logged_in_user     = $_POST["logged_in_user"];	
	$group_id  		    = $_POST["group_id_follow"];	
	$group_created_by  	= $_POST["group_created_by"];	
	$active_member    	= 1;
	
	//Step 1: Insert Current User to Group if they are not in it already
	//Check to see if they are already following this group 
	$check = mysqli_query($conn,"SELECT * FROM group_followers WHERE group_id = '$group_id' AND active_member = 1 AND user_name = '$logged_in_user' ");
	$count = $check->num_rows; 
	
	//If it has not insert friend request into pending rows
	if($count == 0){
		
		$sql = 'INSERT INTO group_followers (group_id, user_name, active_member) VALUES (?, ?, ?)';			  
		$stmt = $conn->stmt_init();
		$stmt = $conn->prepare($sql);
		$stmt->bind_param('isi', $group_id, $logged_in_user, $active_member);
		$stmt->execute();		
		$stmt->close();	
		
		//Create New Notification 
		$master_site = "my_wall";	
		$notification_from = $logged_in_user;
		$notification_to = $group_created_by;
		$notification_message = $logged_in_user . " Followed a Board";
		$notification_link = "#";
		//$Current_Notification->createNotification($master_site, $notification_from, $notification_to, $notification_message, $notification_link);
		echo "success";
	} else {
		echo "Request already Sent";
	}
}

//Function G7: Unfollow Board (Group)
if (isset($_POST["unfollow_group"]) && (!empty($_POST["group_id_unfollow"]))) {
	$request_type 	    = "unfollow_group";	
	$logged_in_user     = $_POST["logged_in_user"];	
	$group_id  		    = $_POST["group_id_unfollow"];	
	$group_created_by  	= $_POST["group_created_by"];	
	$active_member    	= 1;
	
	$sql = "DELETE FROM group_followers WHERE group_id = '$group_id' AND active_member = 1 AND user_name = '$logged_in_user'";

	if ($conn->query($sql) === TRUE) {
		echo "Record deleted successfully";
	} else {
		echo "Error deleting record: " . $conn->error;
	}

	$conn->close();
}


//Function G8: Rename Group 
if (isset($_POST["group_id_rename"]) && (!empty($_POST["group_id_rename"]))) {
		global $conn;
		$group_id		 	= $_POST["group_id_rename"];
		$new_group_name		= $_POST["new_group_name"];	
		$logged_in_user 	= $_POST["logged_in_user"];	
 
		//Instantiate Group and Create the Request 
		$Current_Group = new Group($group_id);
	    $Current_Group->updateGroupName($group_id, $new_group_name, $logged_in_user);			
}

//Function G9: Leave Group 
if (isset($_POST["leave_group_id"]) && (!empty($_POST["logged_in_user"]))) {		
	$group_id = $_POST["leave_group_id"];
	$logged_in_user = $_POST["logged_in_user"];
	
	//Instantiate group and leave it 
	$Current_Group = new Group($group_id);
	echo $Current_Group->leaveGroup($logged_in_user, $group_id);
	//echo $logged_in_user . " " . $group_id;
} 

//Function G10: Delete Group 
if (isset($_POST["delete_group_id"]) && (!empty($_POST["logged_in_user"]))) {		
	$group_id = $_POST["delete_group_id"];
	$logged_in_user = $_POST["logged_in_user"];
	$active_member = 0;
	$group_deleted = 1;
	
	//Set group_followers active_member = 0
	$sql = "UPDATE group_followers SET active_member = ? WHERE group_id='$group_id'";
	$stmt = $conn->prepare($sql);
	$stmt->bind_param('i', $active_member);
	if ($stmt->execute()) {
		echo "success";
	}	
	
	//Update group_users
	$sql = "UPDATE group_users SET active_member = ? WHERE group_id='$group_id'";
	$stmt = $conn->prepare($sql);
	$stmt->bind_param('i', $active_member);
	if ($stmt->execute()) {
		echo "success";
	}		
	//Update groups	
	$sql = "UPDATE groups SET group_deleted = ? WHERE group_id='$group_id'";
	$stmt = $conn->prepare($sql);
	$stmt->bind_param('i', $group_deleted);
	if ($stmt->execute()) {
		echo "success";
	}	
	

	// delete_group_id, logged_in_user: 
	//Instantiate group and leave it 
	//$Current_Group = new Group($group_id);
	//echo $Current_Group->leaveGroup($logged_in_user, $group_id);
	//echo $logged_in_user . " " . $group_id;
} 







//Function G5: Rename Group 
//Function G6: Internal Rename Group 
//Function G7: Leave Group 
//Function G8: Internal Leave Group 
//Function G10: Hover Code  	
//Function G11: Open Group on Click Code   	

//Function G12: Right Click Code 
if (isset($_POST["group_id_rename"]) && (!empty($_POST["group_id_rename"]))) {
		global $conn;
		$group_id		 	= $_POST["group_id_rename"];
		$new_group_name		= $_POST["new_group_name"];	
		$logged_in_user 	= $_POST["logged_in_user"];	
	//group_id_rename, new_group_name: new_group_name, user_name:

		//Instantiate Group and Create the Request 
		$Current_Group = new Group($group_id);
	    echo $Current_Group->updateGroupName($group_id, $new_group_name, $logged_in_user);			

}

//Part 2: Leave Group 	


//Function G13: Create Project (Group) From Existing User
if (isset($_POST["project_request_type"]) && (!empty($_POST["logged_in_user"]))) {
		global $conn;
		$request_type	 	= $_POST["project_request_type"];	
		$logged_in_user 	= $_POST["logged_in_user"];	
		$selected_friends 	= $_POST["selected_friends"];	
		$parent_group_id 	= $_POST["group_id"];	
		$group_key			= uniqid(microtime(),1);

		if (isset($_POST["group_name"]) && !empty($_POST["group_name"])) {
			$group_name = $_POST["group_name"];   
		} else {  
			$group_name = $logged_in_user . "'s Group";
		}
		
		//Step 1: Create new group and insert into groups table (This can't be done inside the class because you need Group ID to instantiate class)
		$insert = $conn->prepare("INSERT INTO groups (created_by, group_key, group_name, group_parent) VALUES (?,?,?,?) ");
		$insert->bind_param('sssi', $logged_in_user, $group_key, $group_name, $parent_group_id);
		
		if ($insert->execute()) {
			//Step 2: Select group ID and use this to populate the rest of the fields
			$query = "SELECT group_id FROM groups WHERE group_key ='$group_key' AND created_by = '$logged_in_user' LIMIT 1";
			$result = mysqli_query($conn, $query);
			$row = mysqli_fetch_assoc($result);
			$new_group_id = $row['group_id'];
		} else {
			echo "fail";
		}
		
		$Current_Group = new Group($new_group_id);
	    $Current_Group->createGroupExistingUsers($request_type, $logged_in_user, $selected_friends, $new_group_id, $group_key);
	
		echo "success";
}


//Function G14: Create List (Group) From Existing User (javascript is in divvy.js)
if (isset($_POST["list_request_type"]) && (!empty($_POST["logged_in_user"]))) {
		global $conn;
	
		$request_type	 	= $_POST["list_request_type"];	
		$logged_in_user 	= $_POST["logged_in_user"];	
		$selected_friends 	= $_POST["selected_friends"];	
		$list_parent 		= $_POST["list_parent"];	
		$group_key			= uniqid(microtime(),1);

		if (isset($_POST["list_name"]) && !empty($_POST["list_name"])) {
			$list_name = $_POST["list_name"];	
		} else {  
			$list_name = $logged_in_user . "'s Group";
		}
		
		//Step 1: Create new group and insert into groups table (This can't be done inside the class because you need Group ID to instantiate class)
		$insert = $conn->prepare("INSERT INTO groups (created_by, group_key, group_name, project_parent) VALUES (?,?,?,?) ");
		$insert->bind_param('sssi', $logged_in_user, $group_key, $list_name, $list_parent);
		
		if ($insert->execute()) {
			//Step 2: Select group ID and use this to populate the rest of the fields
			$query = "SELECT group_id FROM groups WHERE group_key ='$group_key' AND created_by = '$logged_in_user' LIMIT 1";
			$result = mysqli_query($conn, $query);
			$row = mysqli_fetch_assoc($result);
			$new_group_id = $row['group_id'];
		} else {
			echo "fail";
		}
		
		$Current_Group = new Group($new_group_id);
	    echo $Current_Group->createGroupExistingUsers($request_type, $logged_in_user, $selected_friends, $new_group_id, $group_key);
		
		//echo "success " . $list_parent . " " . $list_name;
}
*/
?>