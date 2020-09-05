<?php
//Include Page Header 
header('Content-Type: application/json');
require_once('../../../../functions/rest_header.php');
require_once('../../../../functions/classes/User.php');

//http://people.oregonstate.edu/~vasquezd/sites/template/site_files/rest/user/get_user.php?user_key=david&user_name=vasquezd
//http://people.oregonstate.edu/~vasquezd/sites/template/site_files/rest/user/get_user.php?user_key=kristen&user_name=kristen
//http://people.oregonstate.edu/~vasquezd/sites/template/site_files/rest/user/get_user.php?user_key=matt&user_name=matt


//USER REQUEST 
if (isset($_GET["user_key"]) && (!empty($_GET["user_key"]))) { 	
	//$logged_in_user = $_GET["user_name"];
	if(isset($_GET['user_name'])){ $logged_in_user = $_GET['user_name']; } else { $logged_in_user = "null"; }
	if(isset($_GET['user_key'])){ $user_key = $_GET['user_key']; } else { $user_key = "null"; }
		
	//Verify User
	$result = mysqli_query($conn,"SELECT * FROM user_login WHERE user_name = '$logged_in_user' ");

	while($row = mysqli_fetch_array($result)) {		
		$logged_in_user_key = $row['user_key'];	

	}
	
	//USER: Verified get their data 
	if(strcmp($logged_in_user_key, $user_key) == 0) {
		$Current_User_Profile = new User($logged_in_user);
		$Current_User_Profile->getUserInfo($logged_in_user);			
		
		//Create JSON User to Return 
		$loggedInUser->user_name = $Current_User_Profile->userName;
		$loggedInUser->first_name = $Current_User_Profile->firstName;
		$loggedInUser->last_name = $Current_User_Profile->lastName;
		$loggedInUser->full_user_name = $Current_User_Profile->fullUserName;
		//$loggedInUser->user_biography =$Current_User_Profile->biography;
		//$loggedInUser->user_image =$Current_User_Profile->userImage;
		$loggedInUser->user_image = $Current_User_Profile->userName . ".jpg";
		//$loggedInUser->total_friends =$Current_User_Profile->totalFriends;
		//$loggedInUser->total_groups =$Current_User_Profile->totalGroups;
		$loggedInUserJSON = json_encode($loggedInUser);		
		
		echo $loggedInUserJSON;	

	//USER: Couold not be Verified 
	} else {
		$loggedInUser->user_name = $logged_in_user;
		$loggedInUser->first_name = "null";
		$loggedInUser->last_name = "null";
		$loggedInUser->full_user_name = "null";
		$loggedInUser->user_biography = "null";
		$loggedInUser->user_image = "null";
		$loggedInUser->total_friends = "null";
		$loggedInUser->total_groups = "null";
		$loggedInUserJSON = json_encode($loggedInUser);		
		
		echo $loggedInUserJSON;		
	}
	
//REQUEST: Didn't work
} else {
	$loggedInUser->user_name = "Failed Request";
	$loggedInUser->first_name = "null";
	$loggedInUser->last_name = "null";
	$loggedInUser->full_user_name = "null";
	$loggedInUser->user_biography = "null";
	$loggedInUser->user_image = "null";
	$loggedInUser->total_friends = "null";
	$loggedInUser->total_groups = "null";
	$loggedInUserJSON = json_encode($loggedInUser);		
		
	echo $loggedInUserJSON;		

	echo $userObject;
	
}



































?>