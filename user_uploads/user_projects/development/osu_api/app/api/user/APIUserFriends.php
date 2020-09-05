<?php 
//Include all Core Files
require_once('../../functions/includes/constants.inc.php');
require_once('../../functions/includes/connection.inc.php');
require_once('../../functions/functions.php');
require_once('../../functions/user.php');
require_once('../../functions/classes/User.php');

header('Content-Type: application/json');

//Route: Get All User Friends
$app->get('/api/user/APIUserFriends/{id}', function ($request) {  
	global $conn; 

	//If a user was sent then get there information 
	if(isset($current_user_id)) {
		$current_user = getUserName($current_user_id);
		$Current_User = new User($current_user);
		$Current_User->getUserInfo($current_user);		
		$Current_User->getFriendList($current_user);	
		$current_user_friends_array = $Current_User->friendListUserNames;
		$current_user_friends_count = count($logged_in_users_friends_array);
	
		//Loop Through Friends and Add Their User Name to Array 
		for($x = 0; $x < $current_user_friends_count; $x++) {
			$current_friend_name = $current_user_friends_array[$x];
		} 
				
	
	//Handle Errors 
	} else {
		$current_user_friend_array['current_user_name'] = "Not Found";
	} 	
	
	//Return JSON Output 
	echo json_encode($current_user_friends_array);	
	
});
