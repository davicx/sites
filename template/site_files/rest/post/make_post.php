<?php
//Include Page Header 
//header('Content-Type: application/json');
require_once('../../../../functions/rest_header.php');
require_once('../../../../functions/classes/User.php');
require_once('../../../../functions/classes/Posts.php');
require_once('../../../../functions/classes/Notifications.php');
require_once('../../../../functions/classes/File.php');
require_once('../../../../functions/functions.php');
//include('../../../../functions/folders.php');

//http://people.oregonstate.edu/~vasquezd/sites/template/site_files/rest/post/make_post.php

if ($_SERVER["REQUEST_METHOD"] == "POST") {	
	
	$target_dir = "../../../../user_uploads/post_images/";
	$target_file = $target_dir . basename($_FILES["image"]["name"]);
	$uploadOk = 1;
	$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
	
	//STEP 1: Get Parameters

	//Post Parameters
	$master_site =  "shareshare";
	if(isset($_POST['post_from'])){ $logged_in_user = $_POST['post_from']; } else { $logged_in_user = "error"; }			
	if(isset($_POST['post_from'])){ $post_from = $_POST['post_from']; } else { $post_from = "error"; } 	
	if(isset($_POST['post_to'])){ $post_to = $_POST['post_to']; } else { $post_to = "error"; } 
	if(isset($_POST['post_caption'])){ $post_caption = $_POST['post_caption']; } else { $post_caption = "A new photo"; } 	
	if(isset($_POST['post_type'])){ $post_type = $_POST['post_type']; } else { $post_type = "photo"; } 	
	if(isset($_POST['group_id'])){ $group_id = $_POST['group_id']; } else { $group_id = 0; }		
	$post_status =  1;
	$board_id =  0;
	
	//File Parameters 
	$image_url =  $_FILES["image"]["name"]; //image_url and file_name_server are the same 
	$file_name_full =  $_FILES["image"]["name"];
	$original_file_name =  $_FILES["image"]["name"];
	$imageTimeStamp = time();
	$responsePost->file_name = $_FILES["image"]["name"];
	$file_name_server = $imageTimeStamp . basename($_FILES["image"]["name"]);
	
	//Notification Parameters
	if(isset($_POST['notification_message'])){ $notification_message = $_POST['notification_message']; } else { $notification_message = ""; }
	if(isset($_POST['notification_type'])){ $notification_type = $_POST['notification_type']; } else { $notification_type = "new_file"; }
	if(isset($_POST['notification_link'])){ $notification_link = $_POST['notification_link']; } else { $notification_link = $page_redirect; }	
	
	// Allow certain file formats
	if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" && $imageFileType != "gif" ) {
	  $responsePost->is_image = "Not an Image";
	  $uploadOk = 0;
	} else {
		$responsePost->is_image = "Ok";
	}
	
	//Is a File
	$check = getimagesize($_FILES["image"]["tmp_name"]);
	if($check !== false) {
		$responsePost->is_image = "Is File";
		$uploadOk = 1;
	} else {
		$responsePost->is_image = "Is Not a File";
		$uploadOk = 0;
	}	
	
	//File Exists
	if (file_exists($target_file)) {
		$responsePost->file_already_uploaded = "Already a File";
		$uploadOk = 0;
	} else {
		$responsePost->file_already_uploaded = "Ok";
		
	}
	
	
	//STEP 2: Create JSON Response 
	$responsePost->post_from = $post_from;
	$responsePost->post_to = $post_to;
	$responsePost->post_caption = $post_caption;
	$responsePost->post_type = $post_type;
	$responsePost->group_id = $group_id;
	$responsePost->notification_message = $notification_message;
	$responsePost->notification_type = $notification_type;
	$responsePost->notification_link = $notification_link;
	$responsePost->file_name_server = $file_name_server;

	
	//FILE: Will Not Upload 
	if ($uploadOk == 0) {
		$responsePost->make_post_status = "File Can not be Uploaded";
		$responsePost->post_error = 1;

	//FILE: Will Upload and Insert Post 
	} else {	
		
		//Upload: Worked 
		if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) {
		
			//STEP 3: Insert Post into Database
			$stmt = $conn->prepare("INSERT INTO posts( master_site, post_type, post_status, group_id, board_id, post_from, post_to, post_caption,
				image_url, file_name, file_name_server, updated, created) 
				VALUES (?,?,?,?,?,?,?,?,?,?,?, NOW(), NOW())");
				
			$stmt->bind_param("ssiiissssss", $master_site, $post_type, $post_status, $group_id, $board_id, $post_from, $post_to, $post_caption, $image_url, $file_name_full, $file_name_server);

			if ($stmt->execute()) {
				
				//STEP 4: Add New Post Notifications 
				$notification_from    = $post_from;
				$Current_Notification = new Notifications($logged_in_user);
				
				//Post was made to a Group 
				if($group_id != 0) {
					$notification_to_array = getActiveGroupMembers($group_id);
					
				//Post was made to a person 
				} else {
					$notification_to_array = array($post_to);
				}
				
				$notification_to_count = count($notification_to_array);

				//Loop Through all Group Member and Send them a Notification 
				for($x = 0; $x < $notification_to_count; $x++) {
					$notification_to = $notification_to_array[$x];				
					$Current_Notification->createGroupNotification($master_site, $notification_from, $notification_to, $notification_message, $notification_link, $notification_type, $group_id);
				}		
				
			} else {
				$responsePost->make_post_status = "Error Inserting Into Database";
				$responsePost->post_error = 1;   
			}	

			$responsePost->make_post_status = "Post Was Made";
			$responsePost->post_error = 0;

		
		//Upload: Did Not Work 		
		} else {
 			$responsePost->make_post_status = "Error Uploading";
			$responsePost->post_error = 1;   
		}
		
	}

	//Return Response
	$responsePostJSON = json_encode($responsePost);	

	echo $responsePostJSON;

	
} else {
	    
	$responsePost->make_post_status = "Was not a Post";
	$responsePost->post_error = 1;   

	$responsePostJSON = json_encode($responsePost);	

	echo $responsePostJSON;
	
}

				
			
			
			
			
			//$active_group_members_array = getActiveGroupMembers($group_id);
			//$active_group_members_count = sizeof($active_group_members_array);
			//$responsePost->active_group_members_count = $active_group_members_count;
/*
function getActiveGroupMembers($group_id) {
	global $conn;
	
	$result_groups = mysqli_query($conn,"SELECT user_name FROM group_users 
		WHERE group_id = '$group_id'
		AND active_member = '1' ");
		
	$group_members_array = array();
	$group_members_array_count = 0;
	
	//Create Group  
	while($row_groups = mysqli_fetch_array($result_groups)) {	
		//Get Group Information 
		$user_name = $row_groups['user_name'];
		$group_members_array[$group_members_array_count] = $user_name;		
		$group_members_array_count = $group_members_array_count + 1;
	}	
	
	//Build Unique array and reset index 
	$group_members_array = array_unique($group_members_array);	
	$group_members_array =  array_values($group_members_array);
	
	return $group_members_array;
	 
}
*/
