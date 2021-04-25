<?php

include 'connection.inc.php';
include 'connection.inc.php';

class MasterList {
	public $list_type = "";
	public $list_name = "";
	public $list_id = "";
	public $user_name = "";
	public $user_id = "";
	public $list_created_by = "";
	public $public_status = "";
	public $active_status = "";
	public $updated = "";
	public $created = "";
	public $createdByLoggedInUser = ""; //1 created by logged in user 0 just viewing privelege
	
	//Get all list members 
	public $allListUsers 			= array();
	public $activeListUsers 		= array();
	public $activeListOwners 		= array();
	public $activeListViewers 		= array();
	public $pendingListUsers 		= array();	
	public $friendsNotInList 		= array();

	
	//Method ML1: Construct new list (for this the default list id is 0)
	public function __construct($user_name, $list_type, $list_id) {
		$this->user_name = $user_name;
		$this->list_type = $list_type;	
	}

	//Method ML2: Create New List
	public function createNewList($logged_in_user, $list_type, $list_name, $group_id) {
		global $conn;
		$user_name = $logged_in_user;
		$active_status = 1;
		$user_privilege = "own";
		$created_by = $logged_in_user;
		$shared_with = $logged_in_user;
		
		//Get User ID 
		if ($result = mysqli_prepare($conn, "SELECT user_id FROM user_profile WHERE user_name=?")) {
			$result -> bind_param("s", $user_name);
			$result -> execute();
			$result -> bind_result($result_user_id);
			$result -> fetch();
			$user_id = $result_user_id;
			$result -> close();
		} 		
		
		//Generate Unique Key 
		$unique_key = md5(microtime().rand());
		
		$insert = $conn->prepare("INSERT INTO list (user_privilege, created_by, shared_with, 
		list_type, list_name, group_id, user_name, user_id, unique_key, active_status, created) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, NOW()) ");
		$insert->bind_param('sssssisisi', $user_privilege, $created_by, $shared_with, $list_type, $list_name, $group_id, $user_name, 
		$user_id, $unique_key, $active_status);
		
		if ($insert->execute()) {
			//echo "New list created";
		} else {
			//echo "error";
		}
		
		//Get Unique key to update post id 		
		if ($result = mysqli_prepare($conn, "SELECT list_primary_id FROM list WHERE unique_key=?")) {
			$result -> bind_param("s", $unique_key);
			$result -> execute();
			$result -> bind_result($result_key);
			$result -> fetch();
			$list_primary_id = $result_key;
			$result -> close();
		} 		
		
		//Update post ID 
		$sql = "UPDATE list SET list_id = '$list_primary_id' WHERE unique_key= '$unique_key'";

		if ($conn->query($sql) === TRUE) {
			//echo "Record updated successfully Again";
		} else {
			//echo "Error updating record: " . $conn->error;
		}
		
		//Insert new user into database 
		$active_member = 1;
		
		$insert = $conn->prepare("INSERT INTO list_users (list_id, user_name, user_privilege, active_member, created) VALUES (?, ?, ?, ?, NOW()) ");
		$insert->bind_param('issi', $list_primary_id, $user_name, $user_privilege, $active_member);
		
		if ($insert->execute()) {
			//echo "New list created";
		} else {
			//echo "error";
		}
	} 
		

	//Method ML2: Create New List
	public function createNewDefaultList($logged_in_user, $list_type, $list_name) {
		global $conn;
		$user_name = $logged_in_user;
		$active_status = 1;
		$user_privilege = "own";
		$created_by = $logged_in_user;
		$shared_with = $logged_in_user;
		
		//Get User ID 
		if ($result = mysqli_prepare($conn, "SELECT user_id FROM user_profile WHERE user_name=?")) {
			$result -> bind_param("s", $user_name);
			$result -> execute();
			$result -> bind_result($result_user_id);
			$result -> fetch();
			$user_id = $result_user_id;
			$result -> close();
		} 		
		
		//Generate Unique Key 
		$unique_key = md5(microtime().rand());
		$is_default = 1; 
		 
		$insert = $conn->prepare("INSERT INTO list (user_privilege, created_by, shared_with, 
		list_type, list_name, user_name, user_id, unique_key, is_default, active_status, created) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, NOW()) ");
		$insert->bind_param('ssssssiisi', $user_privilege, $created_by, $shared_with, $list_type, $list_name, $user_name, 
		$user_id, $unique_key, $is_default, $active_status);
		
		if ($insert->execute()) {
			//echo "New list created";
		} else {
			//echo "error";
		}
		
		//Get Unique key to update post id 		
		if ($result = mysqli_prepare($conn, "SELECT list_primary_id FROM list WHERE unique_key=?")) {
			$result -> bind_param("s", $unique_key);
			$result -> execute();
			$result -> bind_result($result_key);
			$result -> fetch();
			$list_primary_id = $result_key;
			$result -> close();
		} 		
		
		//Update post ID 
		$sql = "UPDATE list SET list_id = '$list_primary_id' WHERE unique_key= '$unique_key'";

		if ($conn->query($sql) === TRUE) {
			//echo "Record updated successfully Again";
		} else {
			//echo "Error updating record: " . $conn->error;
		}
		
		//Insert new user into database 
		$active_member = 1;
		
		$insert = $conn->prepare("INSERT INTO list_users (list_id, user_name, user_privilege, active_member, created) VALUES (?, ?, ?, ?, NOW()) ");
		$insert->bind_param('issi', $list_primary_id, $user_name, $user_privilege, $active_member);
		
		if ($insert->execute()) {
			//echo "New list created";
		} else {
			//echo "error";
		}
	} 
		
		
	//METHOD ML3: VIEW Add Existing User to List
	public function addUserExistingView($list_id, $list_type, $selected_friends, $logged_in_user) {
		global $conn;
		
		$request_type = "new_list";
		$status = 1;
		$active_member = 1;
		$user_privilege = "view";
		$created_by = $logged_in_user;
		
		//Get List Name 		
		if ($result = mysqli_prepare($conn, "SELECT list_name FROM list WHERE list_id=?")) {
			$result -> bind_param("i", $list_id);
			$result -> execute();
			$result -> bind_result($result_parent);
			$result -> fetch();
			$list_name = $result_parent;
			$result -> close();
		} 
		
		//Step 1: Insert into List Users 
		$total_new_friends = count($selected_friends);	
		
		//Loop through each invited friend and add to database 
		for($x = 0; $x < $total_new_friends; $x++) {
			$friend_invited_current = $selected_friends[$x];
			
			$sql = 'INSERT INTO list_users (list_id, user_privilege, user_name, active_member) VALUES (?, ?, ?, ?)';			  
			$stmt = $conn->stmt_init();
			$stmt = $conn->prepare($sql);
			// bind parameters and insert the details into the database
			$stmt->bind_param('issi', $list_id, $user_privilege, $friend_invited_current, $active_member);
			$stmt->execute();		
			$stmt->close();	
		}

		//Step 2: Insert into List
		for($x = 0; $x < $total_new_friends; $x++) {
			$friend_invited_current = $selected_friends[$x];	
			//$friend_invited_current_id = getUserID($friend_invited_current);
			
			//Get User ID 	
			if ($result = mysqli_prepare($conn, "SELECT user_id FROM user_profile WHERE user_name=?")) {
				$result -> bind_param("s", $friend_invited_current);
				$result -> execute();
				$result -> bind_result($result_user_id);
				$result -> fetch();
				$friend_invited_current_id = $result_user_id;
				$result -> close();
			} 
			
			$shared_with = $friend_invited_current;
			
			$sql = 'INSERT INTO list (list_id, user_name, user_id, user_privilege, created_by, shared_with, list_type, list_name, active_status) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)';			  
			$stmt = $conn->stmt_init();
			$stmt = $conn->prepare($sql);
			// bind parameters and insert the details into the database
			$stmt->bind_param('isisssssi', $list_id, $friend_invited_current, $friend_invited_current_id, $user_privilege, $created_by, $shared_with, $list_type, $list_name, $active_member);
			$stmt->execute();		
			$stmt->close();	

		}
	}
	
	
	//METHOD ML4: Add existing user to own list 
	public function addListOwnerExisting($list_id, $list_type, $selected_friends, $logged_in_user, $active_status, $active_member) {
		global $conn;

		$total_new_friends = count($selected_friends);	
		$request_type 		= "new_list";
		$status = 1;
		$user_privilege = "own";
		$created_by = $logged_in_user;
		//$active_status = 0;
		$active_member = 0;
		
		//Get List Name 		
		if ($result = mysqli_prepare($conn, "SELECT list_name FROM list WHERE list_id=?")) {
			$result -> bind_param("i", $list_id);
			$result -> execute();
			$result -> bind_result($result_parent);
			$result -> fetch();
			$list_name = $result_parent;
			$result -> close();
		} 

		//Step 1: Insert into List Users 

		//Loop through each invited friend and add to database 
		for($x = 0; $x < $total_new_friends; $x++) {
			$friend_invited_current = $selected_friends[$x];
		
			$sql = 'INSERT INTO list_users (list_id, user_privilege, user_name, active_member) VALUES (?, ?, ?, ?)';			  
			$stmt = $conn->stmt_init();
			$stmt = $conn->prepare($sql);
			// bind parameters and insert the details into the database
			$stmt->bind_param('issi', $list_id, $user_privilege, $friend_invited_current, $active_member);
			$stmt->execute();		
			$stmt->close();	
		} 

		//Step 2: Create Co Owner 
		for($x = 0; $x < $total_new_friends; $x++) {
			$friend_invited_current = $selected_friends[$x];	
			$friend_invited_current_id = getUserID($friend_invited_current);
			$shared_with = $friend_invited_current;
			
			$sql = 'INSERT INTO list (list_id, user_name, user_id, user_privilege, created_by, shared_with, list_type, list_name, active_status) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)';			  
			$stmt = $conn->stmt_init();
			$stmt = $conn->prepare($sql);
			// bind parameters and insert the details into the database
			$stmt->bind_param('isisssssi', $list_id, $friend_invited_current, $friend_invited_current_id, $user_privilege, $created_by, $shared_with, $list_type, $list_name, $active_member);
			$stmt->execute();		
			$stmt->close();	
		}

		//Step 3: Add Pending Requests- Insert into pending users 
		for($x = 0; $x < $total_new_friends; $x++) {
			$friend_invited_current = $selected_friends[$x];	
			$request_type_name = "Wants to add you to a list";
			
			$sql = 'INSERT INTO pending_requests (request_type, request_type_name, sent_by, sent_to, list_id, status) VALUES (?, ?, ?, ?, ?, ?)';			  
			$stmt = $conn->stmt_init();
			$stmt = $conn->prepare($sql);
			// bind parameters and insert the details into the database
			$stmt->bind_param('ssssii', $request_type, $request_type_name, $logged_in_user, $friend_invited_current, $list_id, $status);
			$stmt->execute();
		}
		}

		
	
	//Method ML5: Rename List	
	public function renameList($logged_in_user, $list_name, $list_id) {
		global $conn;
		
		$sql = "UPDATE list SET list_name = '$list_name' WHERE list_id= '$list_id' AND created_by = '$logged_in_user'";

		if ($conn->query($sql) === TRUE) {
			echo "Record updated successfully";
		} else {
			echo "Error updating record: " . $conn->error;
		}
	}
	
	
	//Method ML6: Get List Info 
	public function getListInfo($loggedInUser, $listID) {
		global $conn;
		
		$logged_in_user = $loggedInUser;
		$list_id = $listID;	
		
		//Get List Info 
		$sql = "SELECT * FROM list WHERE list_id = '$list_id'";
		$result_list_info = $conn->query($sql) or die(mysqli_error());	
			
		while($row_list_info = mysqli_fetch_array($result_list_info)) {
			
			//List Name
			$list_name = $row_list_info['list_name']; 
			$list_name = ucwords($list_name);	
			$this->list_name 	= $list_name; 				
	
			//List Created By
			$list_created_by = $row_list_info['created_by']; 
			$this->public_status 	=  $row_list_info['public_status']; 	
			$this->list_created_by 	= $list_created_by; 	
			
			//Determine if Logged in User Created list 
			$logged_in_user = strtolower($logged_in_user);
			$list_created_by = strtolower($list_created_by);
			
			if(strcmp($list_created_by, $logged_in_user)==0 ){
				$this->createdByLoggedInUser = 1;
			} else {
				$this->createdByLoggedInUser = 0;				
			}
		}
					
		//Declare array to hold all users in each square
		$active_list_users = array();
		$active_user_count = 0;
		
		//Create an array with the returned Query of active users
		//List Created By Image
		//Total List Members
		
	}
	

	//Method ML7: Get List Members 
	public function getListUsers($loggedInUser, $listID) {
		global $conn;
		
		$user_name = $loggedInUser;
		$list_id = $listID;
		
		//Part 1: Get all active members (This may not need to limit to active member in this query, you can also use groupStatus to check)
		$sql = "SELECT user_name FROM list_users WHERE list_id = '$list_id' AND active_member = '1'";
		$result_list_friend = $conn->query($sql) or die(mysqli_error());	
		
		//Declare array to hold all users in each square
		$active_list_users = array();
		$active_user_count = 0;
		
		//Create an array with the returned Query of active users 
		while($row_list_friend = mysqli_fetch_array($result_list_friend)) {
			$active_list_users[$active_user_count] = $row_list_friend['user_name'];
			$active_user_count = $active_user_count + 1;
		}
		
		//Remove any potential duplicates
		$active_list_users = array_unique($active_list_users); 
		$active_list_users = array_values($active_list_users);
		
		$this->activeListUsers= $active_list_users;
		
		//Part 2: Get Active List Owners 
		
		//Part 3: Get Active List Viewers 
		
		//Part 4: Get all pending members
		$sql = "SELECT user_name FROM list_users WHERE list_id = '$list_id' AND active_member = '0'";
		$result_pending = $conn->query($sql) or die(mysqli_error());	
		
		//Declare array to hold all users in each square
		$pending_list_users = array();
		$pending_user_count = 0;
		
		//Create an array with the returned Query of active users 
		while($row_pending  = mysqli_fetch_array($result_pending )) {
			$pending_list_users[$pending_user_count] = $row_pending ['user_name'];
			$pending_user_count = $pending_user_count + 1;
		}
		
		//Remove any potential duplicates
		$pending_list_users = array_unique($pending_list_users); 
		$pending_list_users = array_values($pending_list_users);		
		
		$this->pendingListUsers= $pending_list_users;
		
		//Part 5: Get all List members
		$sql = "SELECT user_name FROM list_users WHERE list_id = '$list_id'";
		$result_total = $conn->query($sql) or die(mysqli_error());	
		
		//Declare array to hold all users in each square
		$total_list_users = array();
		$total_user_count = 0;
		
		//Create an array with the returned Query of active users 
		while($row_total = mysqli_fetch_array($result_total )) {
			$total_list_users[$total_user_count] = $row_total['user_name'];
			$total_user_count = $total_user_count + 1;
		}
		
		//Remove any potential duplicates
		$total_list_users = array_unique($total_list_users); 
		$total_list_users = array_values($total_list_users);		
		
		$this->allListUsers= $total_list_users;
		
		//Part 6: Get all logged in user friends who are not in this group 
		$result_friends = mysqli_query($conn,"SELECT * FROM friends WHERE user_name = '$user_name' ");
		
		$total_user_friends = array();
		$friend_count = 0;
		
		while($row_friends = mysqli_fetch_array($result_friends)) {			
			$total_user_friends[$friend_count]	= $row_friends['friend_user_name'];
			$friend_count = $friend_count + 1;		
		}
		
		$invitable_friends = array_diff($total_user_friends, $total_list_users);	
		
		//Remove any potential duplicates
		$invitable_friends = array_unique($invitable_friends); 
		$invitable_friends = array_values($invitable_friends);	
		$this->friendsNotInList= $invitable_friends;
	
	}
}
?>