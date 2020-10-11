<?php
require_once('functions.php');
require_once('includes/connection.inc.php');
require_once('includes/constants.inc.php');
require_once('classes/Posts.php');
require_once('classes/User.php');
require_once('classes/Notifications.php');
/*
FUNCTIONS A: Messages
	1) Function A1: Select a Conversation 
	2) Function A2: Delete a Conversation 
*/

//FUNCTIONS A: Messages
//Function A1: Select a Conversation 
if (isset($_POST["logged_in_user"]) && (!empty($_POST["fetch_messages_from_id"]))) {	
	$logged_in_user  		= $_POST["logged_in_user"]; 
	$fetch_messages_from_id = $_POST["fetch_messages_from_id"]; 
		
	$message_friend = "becca";
	
	$sql = "SELECT * FROM posts WHERE post_status = '1' AND post_type = 'message' AND
		(post_from = '$logged_in_user' AND post_to = '$message_friend' ) OR
		(post_from = '$message_friend' AND post_to = '$logged_in_user' ) 
		ORDER BY post_id DESC";
	$result = $conn->query($sql) or die(mysqli_error());	

	while($row = mysqli_fetch_array($result)) {		

		//All Post Individual Information  
		$post_type = $row['post_type'];
		$post_id = $row['post_id'];

		//Instantiate all wall posts based on post id 
		$Current_Post = new Post($post_id);
		$Current_Post->getUserPost($post_id, $logged_in_user);
		$Current_Post->getPostedTimeMessage($post_id, $logged_in_user);
		$post_from    	= $Current_Post->post_from;
		$post_to 	  	= $Current_Post->post_to;
		$post_caption 	= $Current_Post->post_caption;

		//Post Date and Time 			
		//$posted_time_message = $Current_Post->posted_time_message;
				

		//Get User Name and Info 	
		$Current_User_Post 		= new User($post_from);
		$Current_User_Post->getUserInfo($post_from);			
		$post_from_user_image   = $Current_User_Post->userImage;
		$post_from_user_name    = $Current_User_Post->fullUserName;		
	}	
	//echo $fetch_messages_from_id;
}


//Function A2: Delete a Conversation 
if (isset($_POST["logged_in_user"]) && (!empty($_POST["delete_conversation_user_name"]))) {	
	$logged_in_user  		= $_POST["logged_in_user"]; 
	$delete_conversation_user_name = $_POST["delete_conversation_user_name"]; 

	$sql = "UPDATE posts SET post_status= '0' WHERE post_from ='$delete_conversation_user_name' OR post_to ='$delete_conversation_user_name'";

	if (mysqli_query($conn, $sql)) {
		echo "Record updated successfully";
	} else {
		echo "Error updating record: " . mysqli_error($conn);
	}


}










