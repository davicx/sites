<?php
//http://people.oregonstate.edu/~vasquezd/sites/template/site_files/rest/friends/get_friends.php?user_name=vasquezd

//Include Page Header 
header('Content-Type: application/json');
require_once('../../../../functions/rest_header.php');
require_once('../../../../functions/classes/User.php');

if (isset($_POST["request_from"]) && (!empty($_POST["request_to"]))) { 
		
		$current_friend->request_from = $_POST["request_from"];
		$current_friend->request_to = $_POST["request_to"];

		$current_friend_json = json_encode($current_friend);
		echo $current_friend_json;
	/*
	$user_name = $_GET["user_name"];
	$friends_array = array();		
		
	$result = mysqli_query($conn,"SELECT * FROM friends WHERE user_name = '$user_name'");

	while($row = mysqli_fetch_array($result)) {		
		$friend_user_name = $row['friend_user_name'];
		$friends_id = $row['friend_id'];
		
		$current_friend->friend_user_name = $friend_user_name;
		$current_friend->friends_id = $friends_id;
		$Current_Friend_Profile = new User($friend_user_name);
		$Current_Friend_Profile->getUserInfo($friend_user_name);
		$current_friend->user_image = $Current_Friend_Profile->userImage;
		$current_friend->first_name = $Current_Friend_Profile->firstName;
		$current_friend->last_name = $Current_Friend_Profile->lastName;

		array_push($friends_array, $current_friend);
		unset($current_friend);
	}


	$current_friends_json = json_encode($friends_array);
	echo $current_friends_json;
	*/
} else {
	
		$current_friend->request_from = "NA";
		$current_friend->request_to ="NA";
		
		$current_friend_json = json_encode($current_friend);
		echo $current_friend_json;
	/*	
		$friends_array = array();		
		$current_friend->friend_user_name = "no user name";
		$current_friend->friends_id = 0;		
		$current_friend->user_image = "";
		$current_friend->first_name = "";
		$current_friend->last_name = "";

		array_push($friends_array, $current_friend);
		unset($current_friend);
		
		$current_friends_json = json_encode($friends_array);
		echo $current_friends_json;
	*/
}



?>