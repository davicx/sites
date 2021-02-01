<?php
require_once('functions.php');
require_once('classes/File.php');
require_once('classes/Notifications.php');
	
//FUNCTIONS TABLE OF CONTENTS//
/*

	
*/

//FUNCTIONS A: File 
	
//FUNCTIONS B: Folder Related 

//Function B5: Save New Folder


//FUNCTIONS C: File and Folder Related 
//Function C1: Rename File
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

//Function C2: Delete File
if (isset($_POST["file_id_delete"]) && (!empty($_POST["file_id_delete"]))) {
	$file_id 				= $_POST["file_id_delete"];
	$logged_in_user 		= $_POST["logged_in_user"];

	//echo $file_id . " " . $logged_in_user;
	//$Current_File = new File($file_id);
	//$Current_File->deleteFile($file_id);

	mysqli_query($conn,"UPDATE files SET file_status=0, recycle_status = 1, file_last_modified = now() WHERE file_id = $file_id");	
}



//FUNCTIONS D: Upload Handling

	
//FUNCTIONS F: File Upload Code (Handling actual upload) 
//Function F1: Upload for a Post  	
$uploadResult = false;
$max = 10485760;
if (isset($_POST['file-upload-post'])) {
	
	require_once(FUNCTIONS_FOLDER . 'classes/Upload.php');
	try {
		
		//STEP 1: Get all Upload Photo and Post Information 
		if(isset($_POST['destination'])){ $destination = $_POST['destination']; }
		$upload = new Upload($destination);
		$upload->setMaxSize($max);
		$originalFileName = $upload->getName();
		$upload->move();
		$upload_result = $upload->getMessages();
		$uploadResult = $upload->getUploadOutcome(); 
		$serverImageName = $upload_result[0]; 	

		//STEP 2: Get All Additional information from upload form 
		//Part 1: Site and User Specific
		if(isset($_POST['master-site'])){ $master_site = $_POST['master-site']; } 
		if(isset($_POST['logged-in-user'])){ $logged_in_user = $_POST['logged-in-user']; } else { $logged_in_user = "error"; }		
		if(isset($_POST['visiting-friend-id'])){ $visiting_friend_id = $_POST['visiting-friend-id']; } else {$visiting_friend_id = 0; }	

		
		
		/*
				
		//Part 2: File Specific
		if(isset($_POST['upload-key'])){ $upload_key = $_POST['group-id']; } else { $upload_key = "../../user_uploads/user_file_uploads/"; }
		if(isset($_POST['group-id'])){ $group_id = $_POST['group-id']; } else { $group_id = 0; }
		if(isset($_POST['list-id'])){ $list_id = $_POST['list-id']; } else { $list_id = 0; }		
		if(isset($_POST['current-folder'])){ $current_folder = $_POST['current-folder']; } else { $current_folder = 0; }
		if(isset($_POST['parent-folder'])){ $parent_folder = $_POST['parent-folder']; } else { $parent_folder = 0; }
		if(isset($_POST['caption'])){ $post_caption = $_POST['caption']; } else { $post_caption = ""; } 
		if(isset($_POST['redirect'])){ $page_redirect = $_POST['redirect']; } else { $page_redirect = $_SERVER['PHP_SELF']; } 
		
		//Part 3: Post Specific
		if(isset($_POST['post-id'])){ $post_id = $_POST['post-id']; } else { $post_id = 0; }
		if(isset($_POST['post-from'])){ $post_from = $_POST['post-from']; } else { $post_from = $logged_in_user; }
		if(isset($_POST['post-to'])){ $post_to = $_POST['post-to']; } else { $post_to = $logged_in_user; }
		if(isset($_POST['post-type'])){ $post_type = $_POST['post-type']; } else { $post_type = "file"; }
		
		//Part 4: Notification Specific
		if(isset($_POST['notification-message'])){ $notification_message = $_POST['notification-message']; } else { $notification_message = ""; }
		if(isset($_POST['notification-type'])){ $notification_type = $_POST['notification-type']; } else { $notification_type = "New File"; }
		if(isset($_POST['notification-link'])){ $notification_link = $_POST['notification-link']; } else { $notification_link = $page_redirect; }
				
		*/
		//STEP 3: Handle Placing in Database 
		
		//STEP 4: Redirect Page
		//$page_redirect = 'Location: ' . $page_redirect;
		//header($page_redirect);
	//	die;						

	} catch (Exception $e) {
		echo $e->getMessage();
	}
}

	
//Function F2: Upload to File System (Group File System) 
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
		//print_r($_FILES["file-name"]);
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
		//$user_id = getUserID($logged_in_user); 		
		$user_id = 1; 		
		$file_status = 1;
		
		$sql = "INSERT INTO files (master_site, parent_folder, group_id, file_name, file_name_server, 
			user_name, user_id, file_created, file_last_modified) 
			VALUES (?,?,?,?,?,?,?, NOW(), NOW())";		  
		$stmt = $conn->stmt_init();
		$stmt = $conn->prepare($sql);
		$stmt->bind_param('siisssi', $master_site, $parent_folder, $group_id, $file_name, $file_name_server,
		$user_name, $user_id);
		
		if ($stmt->execute()) {
			echo "New record created successfully";
		} else {
			echo "Error: <br>" . mysqli_error($conn);
		}
		
		/* 
		$sql = "INSERT INTO files (master_site, parent_folder, current_folder, group_id, post_id, file_name, file_extension, file_name_server, 
			user_name, user_id, file_caption, file_seen, file_status, recycle_status, unique_id, file_created, file_last_modified) 
			VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?, NOW(), NOW())";		  
		$stmt = $conn->stmt_init();
		$stmt = $conn->prepare($sql);
		$stmt->bind_param('siisssssisis', $master_site, $user_name, $group_id, $parent_folder, $post_id, $file_name, $file_image, $file_type, $file_name_server,
		$user_name, $user_id, $file_caption, $file_status, $unique_id);
		
		if ($stmt->execute()) {
			echo "New record created successfully";
		} else {
			echo "Error: <br>" . mysqli_error($conn);
		}
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
/*
		$master_site = $serverImageName;
		$sql = "INSERT INTO files (master_site) VALUES (?)";		  
			
		$stmt = $conn->stmt_init();
		$stmt = $conn->prepare($sql);
		$stmt->bind_param('s', $master_site);

		if ($stmt->execute()) {
			echo "New record created successfully";
		} else {
			echo "Error: <br>" . mysqli_error($conn);
		}
	*/	
	} catch (Exception $e) {
		echo $e->getMessage();
	}

/*
$target_dir = "../user_uploads/user_file_uploads/";
$target_file = $target_dir . basename($_FILES["file-name"]["name"]);

$uploadOk = 1;
$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
echo $imageFileType;

// Check if image file is a actual image or fake image
if(isset($_POST["upload_trigger"])) {
    $check = getimagesize($_FILES["file-name"]["tmp_name"]);
    if($check !== false) {
        echo "File is an image - " . $check["mime"] . ".";
        $uploadOk = 1;
    } else {
        echo "File is not an image.";
        $uploadOk =1;
    }
}
// Check if file already exists
if (file_exists($target_file)) {
    echo "Sorry, file already exists.";
    $uploadOk = 0;
}
// Check file size
if ($_FILES["file-name"]["size"] > 5000000) {
    echo "Sorry, your file is too large.";
    $uploadOk = 0;
}

// Check if $uploadOk is set to 0 by an error
if ($uploadOk == 0) {
    echo "Sorry, your file was not uploaded.";
// if everything is ok, try to upload file
} else {
    if (move_uploaded_file($_FILES["file-name"]["tmp_name"], $target_file)) {
        echo "The file ". basename( $_FILES["file-name"]["name"]). " has been uploaded.";
    } else {
        echo "Sorry, there was an error uploading your file.";
    }
}
	
*/
	
		
} 
/*	
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
	*/	
	

//APPENDIX 
/*
file_id		
master_site	
parent_folder		
group_id	
post_id		
file_name	  	
file_image	 	
file_type	 	
file_name_server	 
is_folder	 
folder_name	 
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