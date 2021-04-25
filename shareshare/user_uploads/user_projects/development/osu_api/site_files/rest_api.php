<?php	
	header('Content-Type: application/json');
	require_once('../../functions/page_header.php');

	
	if(isset($_GET["user_id"])) {
		$current_user_id = $_GET['user_id'];
		$current_user = getUserName($current_user_id);
		$Current_User = new User($current_user);
		$Current_User->getUserInfo($current_user);		
		$Current_User->getFriendList($current_user);	
		
		//Get User Info from Current User Object 
		$current_user_name = $Current_User->userName;	
		$current_user_full_name = $Current_User->fullUserName;	
		$current_user_email = $Current_User->email;	
		$current_user_image = $Current_User->userImage;	

	} else {
		$current_user_name = "Name Not Found";	
		$current_user_full_name = "Name Not Found";	
		$current_user_email = "Name Not Found";		
		$current_user_image= "Name Not Found";	
	} 	
	
	$current_user_array['UserID'] = $current_user_id;
	$current_user_array['UserName'] = $current_user_name;
	$current_user_array['UserFullName'] = $current_user_full_name;
	$current_user_array['UserEmail'] = $current_user_email; 
	$current_user_array['UserImage'] = $current_user_image; 
	
	//echo json_encode($current_user_array);
	
	//JSON 1
	$users_array = '{ "users": [
		{ "id": 1, "name": "david vasquez", "user_image": "11.jpg"},
		{"id": 2, "name": "matt ", "user_image": "12.jpg"},
		{"id": 3, "name": "brian ", "user_image": "13.jpg"}
	]}';
	
	echo $users_array;	
?>		