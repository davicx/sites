<?php
require_once('functions.php');
require_once('classes/File.php');
require_once('classes/Notifications.php');

	
//Function F2: Upload to File System (Group File System) 
$uploadResult = false;
$max = 10485760;
if (isset($_POST['file-upload'])) {
	
	require_once(FUNCTIONS_FOLDER . 'classes/Upload.php');
	try {
		
		//STEP 1: Get all Upload Photo and Post Information 
		//if(isset($_POST['destination'])){ $destination = $_POST['destination']; }
		$destination = "../../user_uploads/user_file_uploads/";
		$upload = new Upload($destination);
		$upload->setMaxSize($max);
		$originalFileName = $upload->getName();
		$upload->move();
		$upload_result = $upload->getMessages();
		$uploadResult = $upload->getUploadOutcome(); 
		$serverImageName = $upload_result[0]; 	

		//STEP 2: Get All Additional information from upload form 
		//Part 1: Site and User Specific
		if(isset($_POST['master-site'])){ $master_site = $_POST['master-site']; }else { $master_site = "shareshare"; }	 
		if(isset($_POST['logged-in-user'])){ $logged_in_user = $_POST['logged-in-user']; } else { $logged_in_user = "error"; }		
		if(isset($_POST['visiting-friend-id'])){ $visiting_friend_id = $_POST['visiting-friend-id']; } else {$visiting_friend_id = 0; }	
		
		//Part 2: File Specific
		if(isset($_POST['upload-key'])){ $upload_key = $_POST['group-id']; } else { $upload_key = "../../user_uploads/user_file_uploads/"; }
		if(isset($_POST['group-id'])){ $group_id = $_POST['group-id']; } else { $group_id = 0; }
		if(isset($_POST['list-id'])){ $list_id = $_POST['list-id']; } else { $list_id = 0; }		
		if(isset($_POST['current-folder'])){ $current_folder = $_POST['current-folder']; } else { $current_folder = 0; }
		if(isset($_POST['parent-folder'])){ $parent_folder = $_POST['parent-folder']; } else { $parent_folder = 0; }
		if (isset($_POST['file-caption'])){ $file_caption = $_POST['file-caption']; } else { $file_caption = "caption"; }	
		if(isset($_POST['redirect'])){ $page_redirect = $_POST['redirect']; } else { $page_redirect = $_SERVER['PHP_SELF']; } 
		if(isset($_POST['unique-id'])){ $unique_id = $_POST['unique-id']; } else { $unique_id = "unique"; } 
		
		//Part 3: Post Specific
		if(isset($_POST['post-id'])){ $post_id = $_POST['post-id']; } else { $post_id = 0; }
		if(isset($_POST['post-from'])){ $post_from = $_POST['post-from']; } else { $post_from = $logged_in_user; }
		if(isset($_POST['post-to'])){ $post_to = $_POST['post-to']; } else { $post_to = $logged_in_user; }
		if(isset($_POST['post-type'])){ $post_type = $_POST['post-type']; } else { $post_type = "file"; }
		
		//Part 4: Notification Specific
		if(isset($_POST['notification-message'])){ $notification_message = $_POST['notification-message']; } else { $notification_message = ""; }
		if(isset($_POST['notification-type'])){ $notification_type = $_POST['notification-type']; } else { $notification_type = "New File"; }
		if(isset($_POST['notification-link'])){ $notification_link = $_POST['notification-link']; } else { $notification_link = $page_redirect; }
		
		//Part 5: Remaining Variables 
		$file_name = $originalFileName; 
		$file_type = pathinfo($file_name, PATHINFO_EXTENSION);
		$file_name_server = $serverImageName; 
		$file_image = getFileType($serverImageName, $logged_in_user); 				
		$no_file_added_test = "No file selected.";
		$user_name = $logged_in_user; 		
		$user_id = getUserID($logged_in_user); 		
		$file_status = 1;
		//$file_seen = 0;		
		//$recycle_status = 0;
		
		//STEP 3: Handle Placing in Database 
		$sql = "INSERT INTO files (master_site, group_id, parent_folder, post_id, file_name, file_image, file_type, file_name_server, 
			user_name, user_id, file_caption, file_status, unique_id, file_created, file_last_modified) 
			VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?, NOW(), NOW())";		  
		$stmt = $conn->stmt_init();
		$stmt = $conn->prepare($sql);
		$stmt->bind_param('siiisssssisis', $user_name, $group_id, $parent_folder, $post_id, $file_name, $file_image, $file_type, $file_name_server,
			$user_name, $user_id, $file_caption, $file_status, $unique_id);
		$stmt->execute();		
		
		//STEP 4: Handle Notifications 
		//*Notify all group members but not the uploader 
		
		//STEP 5: Redirect Page
		$page_redirect = 'Location: ' . $page_redirect;
		header($page_redirect);
		die;						

		
	} catch (Exception $e) {
		echo $e->getMessage();
	}
}
	
	