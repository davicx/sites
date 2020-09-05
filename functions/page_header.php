<?php
	$current_domain = $_SERVER['SERVER_NAME'];

	if(strcmp($current_domain,"people.oregonstate.edu")==0) {
		$currently_using_onid = 1;
	} else {
		$currently_using_onid = 0;	
	}

	//STEP 1: Include Files
	require_once('../../functions/includes/constants.inc.php'); 
	require_once(CODE_ROOT . '../functions/includes/session_timeout.inc.php');
	require_once(CODE_ROOT . '../functions/includes/connection.inc.php');	
	include(CODE_ROOT .  '../functions/includes/logout.inc.php'); 	
	require_once(CODE_ROOT .  '../functions/functions.php'); 
	require_once(CODE_ROOT .  '../functions/files.php');	
	require_once(CODE_ROOT .  '../functions/discussion.php');	
		
	//STEP 2: Include Classes
	require_once(CODE_ROOT .  '../functions/classes/MasterList.php');	
	require_once(CODE_ROOT .  '../functions/classes/User.php');	
	require_once(CODE_ROOT .  '../functions/classes/File.php');	
	require_once(CODE_ROOT .  '../functions/classes/Folder.php');	
	require_once(CODE_ROOT .  '../functions/classes/Notifications.php');	
	require_once(CODE_ROOT .  '../functions/classes/Requests.php');	
	include (CODE_ROOT . '../functions/classes/Groups.php');
	include (CODE_ROOT . '../functions/classes/Activity.php');
	include (CODE_ROOT . '../functions/classes/Comments.php');

	//STEP 3: Create Any Site Variables Needed
	$master_site 			= "shareshare";
	$group_id        		= 0;
	$list_id         		= 0;
	$friend_id				= 0;
	$visiting_friend_id 	= 0;
	$visiting_page_id 		= 0;
	$visiting_current_user 	= 0;
	$post_id 				= 0;
	$post_to				= "";
	$post_type				= "photo";
	$caption 				= "";
	
	//STEP 4: Check if User is Logged In
	if(isset($_SESSION['authenticated'])){
		//echo "logged in"; 
		$logged_in_user = $_SESSION['varname'];
		$logged_in_user_id = getUserID($logged_in_user);	
		$logged_in_user_image = getUserImage($logged_in_user);	
		$Current_user = new User($logged_in_user);	
	} else {
		header("Location: ../index.php");	
		//echo "Not Logged In ";
	}
	
	//STEP 5: Get Logged in Users Friends 
	$Current_user->getFriendList($logged_in_user);	
	$logged_in_users_friends_array = $Current_user->friendListUserNames;
	$logged_in_users_friends_count = count($logged_in_users_friends_array);	
	
	//STEP 6: Find out what type of page you are visiting
	
	//Type 1: Visiting a List 
	if(isset($_GET["list_id"])) {
		$list_id = base64_decode($_GET['list_id']);
		$visiting_page_id = $list_id;
		$post_to = $list_id;
		$post_to_type = "list";
	} 

	//Type 2: Visiting a Group 	
	if(isset($_GET["group_id"])) {
		$group_id = base64_decode($_GET['group_id']);
		$visiting_page_id = $group_id;
		$post_to = $group_id;		
		$post_to_type = "group";	
	} 
	
	//Type 3: Visiting a User Page
	if (isset($_GET["friend_id"])) {
		$friend_id = $_GET["friend_id"];
		$visiting_page_id = $friend_id;
	
		//Type 3A: You are on your Profile
		if($friend_id == $logged_in_user_id ) {
			//echo "You are on your page";
			$currently_on_friend_page = 0;
			
			//Type 3B: You are visiting a Friend 
		} else {
			$currently_on_friend_page = 1;
			//echo "Friend page";		
		}
	} 

	//STEP 7: Get All Other Page Variables 
	if(isset($_GET["current_folder"])) {
		$current_folder = $_GET["current_folder"];
	} else {
		$current_folder = 0;
	}

	if(isset($_GET["parent_folder"])) {
		$parent_folder = $_GET["parent_folder"];
	} else {
		$parent_folder = 0;
	}
/*
	if(isset($_GET["parent"])) {
		$parent_folder = $_GET["parent"];
	} else {
		$parent_folder = 0;
	}
*/
	
			//You are visiting a Friends Profile 
		
	
		///$visiting_page_id = $friend_id;
		//$post_to = getUserName($friend_id);	
		//$post_to_type = "friend";
		
		//Get All the Information for the User Whose Page you are Visiting (not you)
		//$visiting_user_name = getUserName($friend_id);	
		//$Visiting_User = new User($visiting_user_name);	
		//$Visiting_User->getUserInfo($visiting_user_name);
		//$Visiting_User->getFriendList($visiting_user_name);	
		//$visiting_user_friends_array = $Visiting_User->friendListUserNames;
		//$visiting_user_friends_count = count($visiting_user_friends_array);		
	/*
	//Type 4: You are on Your Page
	if($group_id == 0 && $list_id == 0 && $friend_id == 0) {

		$post_to = $logged_in_user;
		$post_to_type = "me";		
		
		//Get All the Information for the User Whose Page you are Visiting (This is You)
		$Visiting_User = new User($logged_in_user);	
		$Visiting_User->getUserInfo($logged_in_user);
		$Visiting_User->getFriendList($logged_in_user);	
		$visiting_user_friends_array = $Visiting_User->friendListUserNames;
		$visiting_user_friends_count = count($visiting_user_friends_array);		
	}
	
*/	
	
?>