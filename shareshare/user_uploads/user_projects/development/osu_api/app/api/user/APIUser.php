<?php 
//Include all Core Files
require_once('../../functions/includes/constants.inc.php');
require_once('../../functions/includes/connection.inc.php');
require_once('../../functions/functions.php');
require_once('../../functions/user.php');
require_once('../../functions/classes/User.php');

header('Content-Type: application/json');

//Route: Get All User Info
$app->get('/api/user/UserAPI/{id}', function ($request) {
	global $conn; 
	$current_user_id = $request->getAttribute('id');
	
	//If a user was sent then get there information 
	if(isset($current_user_id)) {
		$current_user = getUserName($current_user_id);
		$Current_User = new User($current_user);
		$Current_User->getUserInfo($current_user);		
		
		//Get User Info from Current User Object 
		$current_user_name = $Current_User->userName;	
		$current_user_full_name = $Current_User->fullUserName;	
		$current_user_email = $Current_User->email;	
		$current_user_image = $Current_User->userImage;	

		$current_user_array['current_user_name'] = $current_user_name;
		$current_user_array['current_user_full_name'] = $current_user_full_name;
		$current_user_array['current_user_email'] = $current_user_email; 
		$current_user_array['current_user_image'] = $current_user_image; 	
	
	//Handle Errors 
	} else {
		$current_user_array['current_user_name'] = "Not Found";
		$current_user_array['current_user_full_name'] = "";
		$current_user_array['current_user_email'] = ""; 
		$current_user_array['current_user_image'] = ""; 
	} 	
	
	echo json_encode($current_user_array);	
	
	
});
   