<?php
require_once('functions.php');
require_once('classes/File.php');
require_once('classes/Notifications.php');
	
//FUNCTIONS TABLE OF CONTENTS//
/*
FUNCTIONS A: File 
	1) Function A1: Select File 
	2) Function A2: Double Click File (Trigger Download)
	3) Function A3: Rename File (Handle UI)
	4) Function A4: Cancel File Rename (Handle UI)
	5) Function A5: Save New File Name
	6) Function A6: Delete File (from File Action)
	7) Function A7: Trigger File Download from File Action Area 

FUNCTIONS B: Upload Handling
	1) Function B1: Trigger Browse for File 
	2) Function B2: Trigger Upload File 
	3) Function B3: Listen for File Upload Button Click and Display File Name
	4) Function B4: Upload File (only server code)

FUNCTIONS C: Global File Functions   
	1) Function C1: Global Rename Folder 
	2) Function C2: Global Delete Folder 

FUNCTIONS D: Right Click, Dropzone Related and Drag and Drop  
	1) Function D1: File Right Click Code  
	
	
*/

//FUNCTIONS A: File 
	
//FUNCTIONS B: Folder Related 

//Function B5: Save New Folder


//FUNCTIONS C: Global File Functions   
//Function C1: Global Rename Folder 
if (isset($_POST["new_file_name"]) && (!empty($_POST["file_id"]))) {
	$file_id 				= $_POST["file_id"];
	$new_file_name 	  		= $_POST["new_file_name"];
	$logged_in_user 		= $_POST["logged_in_user"];

	//Rename File 
	//$Current_File = new File($file_id);
	//$Current_File->renameFile($file_id, $new_file_name);	
	$sql = "UPDATE files SET file_name = ?, file_last_modified = NOW() WHERE file_id='$file_id'";
	$stmt = $conn->prepare($sql);
	$stmt->bind_param('s', $new_file_name);
	if ($stmt->execute()) {
		echo $new_file_name;
	} else {
		echo "error renaming";
	}	
}

//Function C2: Global Delete File
if (isset($_POST["file_id_delete"]) && (!empty($_POST["file_id_delete"]))) {
	$file_id 				= $_POST["file_id_delete"];
	$logged_in_user 		= $_POST["logged_in_user"];

	//echo $file_id . " " . $logged_in_user;
	//$Current_File = new File($file_id);
	//$Current_File->deleteFile($file_id);

	mysqli_query($conn,"UPDATE files SET file_status = 0, recycle_status = 1, file_last_modified = now() WHERE file_id = $file_id");	
}


//Function: B4 
$uploadResult = false;
$max = 10485760;
if (isset($_POST['submit-file-trigger'])) {
	//echo "set";
	
	require_once(FUNCTIONS_FOLDER . 'classes/Upload.php');
	try {
		$destination = "../../user_uploads/user_file_uploads/";
		$upload = new Upload($destination);
		$upload->setMaxSize($max);
		$originalFileName = $upload->getName();
		$upload->move();
		$upload_result = $upload->getMessages();
		$uploadResult = $upload->getUploadOutcome(); 
		$serverImageName = $upload_result[0]; 
		$no_file_added_test = "No file selected.";
		
		
		//STEP 1: Get All Additional information from upload form 
		//Part 1: Site and User Specific
		if(isset($_POST['master-site'])){ $master_site = $_POST['master-site']; }else { $master_site = "shareshare"; }	 
		if(isset($_POST['logged-in-user'])){ $logged_in_user = $_POST['logged-in-user']; } else { $logged_in_user = "error"; }		
		if(isset($_POST['visiting-friend-id'])){ $visiting_friend_id = $_POST['visiting-friend-id']; } else {$visiting_friend_id = 0; }	
		
		//Part 2: File Specific
		if(isset($_POST['group-id'])){ $group_id = $_POST['group-id']; } else { $group_id = 0; }
		if(isset($_POST['redirect'])){ $redirect = $_POST['redirect']; } else { $redirect = "#"; }
		if(isset($_POST['list-id'])){ $list_id = $_POST['list-id']; } else { $list_id = 0; }		
		if(isset($_POST['current-folder'])){ $current_folder = $_POST['current-folder']; } else { $current_folder = 0; }
		if(isset($_POST['parent-folder'])){ $parent_folder = $_POST['parent-folder']; } else { $parent_folder = 0; }
		if (isset($_POST['file-upload-caption'])){ $file_caption = $_POST['file-upload-caption']; } else { $file_caption = ""; }	

		//Part 3: Post Specific
		if(isset($_POST['post-id'])){ $post_id = $_POST['post-id']; } else { $post_id = 0; }
		if(isset($_POST['post-from'])){ $post_from = $_POST['post-from']; } else { $post_from = $group_id; }
		if(isset($_POST['post-to'])){ $post_to = $_POST['post-to']; } else { $post_to = $group_id; }
		if(isset($_POST['post-type'])){ $post_type = $_POST['post-type']; } else { $post_type = "file"; }
		
		//Part 4: Notification Specific
		if(isset($_POST['notification-message'])){ $notification_message = $_POST['notification-message']; } else { $notification_message = ""; }
		if(isset($_POST['notification-type'])){ $notification_type = $_POST['notification-type']; } else { $notification_type = "new_file"; }
		if(isset($_POST['notification-link'])){ $notification_link = $_POST['notification-link']; } else { $notification_link = $page_redirect; }
		
		//Part 5: Remaining Variables 
		$file_name_full = $originalFileName; 
		$file_name = preg_replace('/\\.[^.\\s]{3,4}$/', '', $file_name_full); //Remove Extension and store Seperately 
		$file_extension = pathinfo($file_name_full, PATHINFO_EXTENSION);
		$file_name_server = $serverImageName; 
		$file_image = getFileType($serverImageName, $logged_in_user); 				
		$user_name = $logged_in_user; 		
		$user_id = getUserID($logged_in_user); 		
		$file_status = 1;

		//STEP 2: Make Sure a File was Selected 
		if(strcasecmp($file_name_server,$no_file_added_test) != 0 ) {
			
			//STEP 3: Insert into Posts 
			$sql = "INSERT INTO files (master_site, parent_folder, group_id, file_name, file_image, file_extension, file_name_server, 
				user_name, user_id, file_caption, file_status, file_created, file_last_modified) 
				VALUES (?,?,?,?,?,?,?,?,?,?,?, NOW(), NOW())";		  
			$stmt = $conn->stmt_init();
			$stmt = $conn->prepare($sql);
			$stmt->bind_param('siisssssisi', $master_site, $parent_folder, $group_id, $file_name, $file_image, $file_extension, $file_name_server,
			$user_name, $user_id, $file_caption, $file_status);
			
			if ($stmt->execute()) {
				
				//STEP 4: Add a new Group Notification 
				if(isset($_POST['notification-message'])){ $notification_message = $_POST['notification-message']; } else { $notification_message = "error ";} 
				if(isset($_POST['notification-type'])){ $notification_type = $_POST['notification-type']; } else { $notification_type = "new_post";} 
				if(isset($_POST['notification-link'])){ $notification_link = $_POST['notification-link']; } 
				$notification_from    = $post_from;
				$notification_to      = $post_to;
			
				$Current_Notification = new Notifications($logged_in_user);
				$notification_to_array = getActiveGroupMembers($group_id);
				$notification_to_count = count($notification_to_array);				

				//Loop Through all Group Member and Send them a Notification 
				for($x = 0; $x < $notification_to_count; $x++) {
					$notification_to = $notification_to_array[$x];				
					$Current_Notification->createGroupNotification($master_site, $notification_from, $notification_to, $notification_message, $notification_link, $notification_type, $group_id);
				}		

				//STEP 5: Redirect 				
				$page_redirect = 'Location: '. $redirect;
				header($page_redirect);
				die;				
						
			} else {
				//echo "Error: <br>" . mysqli_error($conn);
			}
			
		} 
	} catch (Exception $e) {
			echo $e->getMessage();
	}
		
} 
//APPENDIX 
/*
file_id
master_site 
parent_folder 	
current_folder 	
group_id 	
post_id 	
file_name 	
file_image 
file_extension 	
file_name_server 	
user_name 	
user_id 	
file_caption 	
file_seen 
file_status
recycle_status
unique_id 
file_created 
file_last_modified 	
*/



?>