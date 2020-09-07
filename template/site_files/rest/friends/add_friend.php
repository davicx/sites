<?php
//http://people.oregonstate.edu/~vasquezd/sites/template/site_files/rest/friends/get_friends.php?user_name=vasquezd

//Include Page Header 
header('Content-Type: application/json');
require_once('../../../../functions/rest_header.php');
require_once('../../../../functions/classes/User.php');
require_once('../../../../functions/functions.php');
//$json = file_get_contents('php://input');
//$request_object = json_decode($json);

//$request_from = $request_object->request_from;
//$request_to = $request_object->request_to;

$logged_in_user = "vasquezd";
$add_friend_name = "matt";
$Current_User = new User($logged_in_user);
$Current_User->addFriend($logged_in_user, $add_friend_name);	
$add_friend_message = $Current_User->addFriendMessage;
$add_friend_outcome = $Current_User->addFriendOutcome;

$add_friend_response->request_from = $logged_in_user;
$add_friend_response->request_to = $add_friend_name;
$add_friend_response->add_friend_outcome = $add_friend_outcome;
$add_friend_response->add_friend_message = $add_friend_message;


$add_friend_response_json = json_encode($add_friend_response);

echo $add_friend_response_json;


/*
if (isset($request_from) && (!empty($request_to))) { 
	$add_friend_response->request_from = $request_from;
	$add_friend_response->request_to = $request_to;
	$add_friend_response->add_friend_outcome = 1;
	$add_friend_response->add_friend_message = "hi";

	$logged_in_user = $request_from;
	$add_friend_name = $request_to;
	
	//$Current_User = new User($logged_in_user);
	//$add_friend_outcome = $Current_User->addFriend($logged_in_user, $add_friend_name);		

	$add_friend_response_json = json_encode($add_friend_response);
	
	echo $add_friend_response_json;

} else {
	$add_friend_response->request_from = $request_from;
	$add_friend_response->request_to = $request_to;	
	$add_friend_response->add_friend_outcome = 0;
	$add_friend_response->add_friend_message = "There was an error trying to add this friend";
	
	$add_friend_response_json = json_encode($add_friend_response);
	
	echo $add_friend_response_json;
}
*/

/*

//http://people.oregonstate.edu/~vasquezd/sites/template/site_files/rest/friends/get_friends.php?user_name=vasquezd
//http://people.oregonstate.edu/~vasquezd/sites/template/site_files/rest/friends/add_friend.php

//Include Page Header 
header('Content-Type: application/json');
require_once('../../../../functions/rest_header.php');
require_once('../../../../functions/classes/User.php');
require_once('../../../../functions/functions.php');


//$logged_in_user = "vasquezd";
//$add_friend_name = "matt";

$json = file_get_contents('php://input');
$request_object = json_decode($json);

$request_from = $request_object->request_from;
$request_to = $request_object->request_to;

if (isset($request_from) && (!empty($request_to))) { 
	$add_friend_response->request_from = $request_from;
	$add_friend_response->request_to = $request_to;	
	$logged_in_user = $request_from;
	$add_friend_name = $request_to;
	
	$Current_User = new User($logged_in_user);
	$add_friend_outcome = $Current_User->addFriend($logged_in_user, $add_friend_name);		
	
	$add_friend_response->add_friend_outcome = 1;
	$add_friend_response->add_friend_message = "hi";

	$add_friend_response_json = json_encode($add_friend_response);
	echo $add_friend_response_json;

} else {
	$add_friend_response->request_from = $request_from;
	$add_friend_response->request_to = $request_to;	
	
	
	$add_friend_response->add_friend_outcome = 0;
	$add_friend_response->add_friend_message = "There was an error trying to add this friend";
	
	$add_friend_response_json = json_encode($add_friend_response);
	echo $add_friend_response_json;

}








/*
if (isset($_POST["add_friend_id"]) && (!empty($_POST["logged_in_user"]))) {
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




if (isset($request_from) && (!empty($request_to))) { 
	$add_friend_response->request_from = $request_from;
	$add_friend_response->request_to = $request_to;
	$current_friend->request_from = $request_from;
	$current_friend->request_to = $request_to;

	$current_friend_json = json_encode($current_friend);
	echo $current_friend_json;

} else {
	
	$current_friend->request_from = "Didn't work";
	$current_friend->request_to ="Didn't work To";
	
	$current_friend_json = json_encode($current_friend);
	echo $current_friend_json;

}

*/



?>