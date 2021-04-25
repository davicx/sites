<?php

	//STEP 1: Include Files
	require_once('../../functions/includes/constants.inc.php'); 
	require_once(CODE_ROOT . '../functions/includes/connection.inc.php');	
	require_once(CODE_ROOT .  '../functions/functions.php'); 
	require_once(CODE_ROOT .  '../functions/files.php');	
	require_once(CODE_ROOT .  '../functions/discussion.php');	
	require_once(CODE_ROOT . '../functions/includes/check_login_status.inc.php');
	

	//STEP 2: Include Classes
	require_once(CODE_ROOT .  '../functions/classes/MasterList.php');	
	require_once(CODE_ROOT .  '../functions/classes/User.php');	
	require_once(CODE_ROOT .  '../functions/classes/Notifications.php');	
	require_once(CODE_ROOT .  '../functions/classes/Requests.php');	
	include (CODE_ROOT . '../functions/classes/Groups.php');
	include (CODE_ROOT . '../functions/classes/Activity.php');
	include (CODE_ROOT . '../functions/classes/Comments.php');
	
	//STEP 3: Check if User is Logged In
	if(isset($_SESSION['authenticated'])){
	

		$logged_in_user = $_SESSION['varname'];
		$logged_in_user_image = getUserImage($logged_in_user);
		$logged_in_user_id = getUserID($logged_in_user);
		$Current_User = new User($logged_in_user);
		$Current_User->getUserInfo($logged_in_user);		
		$Current_User->getFriendList($logged_in_user);		
		$logged_in_users_friends_array = $Current_User->friendListUserNames;
		$logged_in_users_friends_count = count($logged_in_users_friends_array);
		$currently_on_friend_page = 0;		
		
		//Check if this is your page 
		
	} else {

		$logged_in_user = "not_logged_in";
		$logged_in_user_id = 0;
	
	}
		
	//SITE VARIABLES
	$master_site = "homstac";
	

	
?>	