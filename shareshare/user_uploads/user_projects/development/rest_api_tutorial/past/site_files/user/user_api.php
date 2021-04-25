<?php	
	header('Content-Type: application/json');
	require_once('../../functions/page_header.php');

	//http://localhost/sites/template/site_files/user_api.php?user_id=1
	
	if(isset($_SESSION['authenticated'])){
		//echo "logged in";
	} else {
		//header("Location: ../index.php");
		//echo "NOT";
	}
	
	//Function 1: Get User Info 
	if (isset($_GET["user_id"]) && (!empty($_GET["user_id"]))) {
		$user_id = $_GET["user_id"];
		$user_name =  getUserName($user_id);
		$Current_User = new User($user_name);
		$Current_User->getUserInfo($user_name);	
		$first_name     = $Current_User->firstName;
		$last_name      = $Current_User->lastName;	
		$user_image     = $Current_User->userImage;		
		//{ "name":"John", "age":31, "city":"New York" };
		$user_information = '{ "first_name":"' . $first_name . '", "last_name":' . $last_name . ', "user_image":"' . $user_image . '" }';
		//USE JSON ENCODE 
		echo $user_information;
		
	} else {
		//echo "no";
	}

	//Function 2: Get User Friends
	if (isset($_GET["user_name"]) && (!empty($_GET["user_name"]))) {
		$user_name = $_GET["user_name"];
		$Current_User = new User($user_name);
		$Current_User->getFriendList($user_name);	
		$user_friend_names_array = $Current_User->friendListUserNames;	
		//echo $user_name;
		
		$user_friend_names_count = count($user_friend_names_array);
		$user_friends_json_part_one = "'{ ";
		$user_friends_json_part_two = "";
		
		//{ "name":"John", "age":31, "city":"New York" }
		
		for($x = 0; $x < $user_friend_names_count; $x++) {
			$current_friend = $user_friend_names_array[$x];
			$user_count = $x + 1;
			$user_friends_json_part_two = $user_friends_json_part_two . '"user_' . $user_count . '": "' . $current_friend . '"';
		
			//echo $x;
			//echo " <br />";
			//echo $user_friend_names_count;
			//echo " <br />";			
			//Add Comma if this is not the last element in the array 
			if ($x <= $user_friend_names_count - 2) {
				//echo "yes";
				//echo "<br />";
				$user_friends_json_part_two = $user_friends_json_part_two . ', ';	
			} else {
				//echo "no";
			}
		}
		
		$user_friends_json_part_three = "}'";
		
		$user_friends = $user_friends_json_part_one . $user_friends_json_part_two . $user_friends_json_part_three;
		
		echo $user_friends;
		
		
	} else {
		echo "no";
	}	

	
	
	
	//JSON 1
	/*
	$users_array = '{ "users": [
		{ "id": 1, "name": "david vasquez", "user_image": "11.jpg"},
		{"id": 2, "name": "matt ", "user_image": "12.jpg"},
		{"id": 3, "name": "brian ", "user_image": "13.jpg"}
	]}';
	
	echo $users_array;	
	*/

	
	//Server Method
	/*
	if ($_SERVER['REQUEST_METHOD'] === 'POST') {
		// …
	}
	*/
?>		