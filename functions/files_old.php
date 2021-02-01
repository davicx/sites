<?php
require_once('functions.php');
require_once('classes/File.php');
require_once('classes/Notifications.php');

//FUNCTIONS TABLE OF CONTENTS//
/*
FUNCTIONS A: File Related 
	1) Function A1: Trigger File Rename *no server code
	2) Function A2: Save New File Name
	3) Function A3: Cancel Save File Name *no server code
	4) Function A4: Trigger Delete File *no server code
	5) Function A5: Delete File 
	6) Function A6: Rename File *no server code
	7) Function A7: Trigger File Rename on Menu Click *no server code
	8) Function A8: Trigger File Download *no server code
	9) Function A9: Trigger File Download on Double Click *no server code
	
FUNCTIONS B: Folder Related 
	1) Function B1: Show Create New Folder Area 
	2) Function B2: Create and Save New Folder
	3) Function B3: Cancel New Folder 
	4) Function B4: Initiate Rename Folder
	5) Function B5: Trigger Rename Folder From Header
	6) Function B6: Cancel Rename Folder 
	7) Function B7: Rename Folder  
	8) Function B8: Open Folder when Name is Clicked 
	9) Function B9: Open Folder When Double Click 

FUNCTIONS C: Upload Related 
	1) Function C1: Upload a Post Photo 
	2) Function C2: Upload a Post Article
	3) Function C3: Upload a Post File 
	4) Function C4: Upload to File System
	5) Function C5: Generic Upload (works with template_upload.php)
	5) Function C6: Change User Image 
	
FUNCTIONS D: UI and Design Related 
	1) Function D1: Add File Selected Class 
	2) Function D2: Add Folder Selected Class 
	
FUNCTIONS E: Right Click, Dropzone Related and Drag and Drop   

*/

//FUNCTIONS A: File Related 
//Function A2: Save New File Name


//Function A5: Delete File 



//FUNCTIONS C: Upload Related 
//Function C1: Upload a Post Photo
$uploadResult = false;
$max = 10485760;
if (isset($_POST['upload-post-photo'])) {
	
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
		
		if(isset($_POST['master-site'])){ $master_site = $_POST['master-site']; } 
		if(isset($_POST['logged-in-user'])){ $logged_in_user = $_POST['logged-in-user']; } 		
		if(isset($_POST['visiting-friend-id'])){ $visiting_friend_id = $_POST['visiting-friend-id']; } else {$visiting_friend_id = 0; }	
		if(isset($_POST['group-id'])){ $group_id = $_POST['group-id']; } else { $group_id = 0; }
		if(isset($_POST['list-id'])){ $list_id = $_POST['list-id']; } else { $list_id = 0; }		
		if(isset($_POST['parent'])){ $parent = $_POST['parent']; } 
		if(isset($_POST['caption'])){ $post_caption = $_POST['caption']; } else { $post_caption = ""; } 
		if(isset($_POST['post-from'])){ $post_from = $_POST['post-from']; } 
		if(isset($_POST['post-to'])){ $post_to = $_POST['post-to']; } 
		if(isset($_POST['post-type'])){ $post_type = $_POST['post-type']; } 
		
		$file_name = $originalFileName; 
		$file_type = pathinfo($file_name, PATHINFO_EXTENSION);
		$file_name_server = $serverImageName; 

		$file_image = getFileType($serverImageName, $logged_in_user); 			
		if (isset($_POST['file-caption'])){ $file_caption = $_POST['file-caption']; } else { $file_caption = ""; }		
		$no_file_added_test = "No file selected.";
		$post_status = 1;
	
				
		//STEP 2: Make Sure a File was Selected 
		if(strcasecmp($file_name_server,$no_file_added_test) != 0 ) {
			
			//STEP 3: Insert into Posts 
			$stmt = $conn->prepare("INSERT INTO posts( master_site, group_id, list_id, post_from, post_to, post_type, post_caption, image_url, 
				file_url, file_name, post_status) 
				VALUES (?,?,?,?,?,?,?,?,?,?,?)");
				
			$stmt->bind_param("siisssssssi", $master_site, $group_id, $list_id, $post_from, $post_to, $post_type, $post_caption, $file_name_server, 
				$file_name_server, $file_name, $post_status);
	
			if ($stmt->execute()) {
			 
				//STEP 4: Add New Photo Notifications 
				if(isset($_POST['notification-message'])){ $notification_message = $_POST['notification-message']; } else { $notification_message = "shared a photo ";} 
				if(isset($_POST['notification-type'])){ $notification_type = $_POST['notification-type']; } else { $notification_type = "new_post";} 
				if(isset($_POST['notification-link'])){ $notification_link = $_POST['notification-link']; } 
				$notification_from    = $post_from;
				$notification_to      = $post_to;
			
				$Current_Notification = new Notifications($logged_in_user);

				//New Group Post	
				if ($group_id != 0 && $list_id == 0) {
					$notification_to_array = getActiveGroupMembers($group_id);
					$notification_to_count = count($notification_to_array);
					

					//Loop Through all Group Member and Send them a Notification 
					for($x = 0; $x < $notification_to_count; $x++) {
						$notification_to = $notification_to_array[$x];				
					    $Current_Notification->createGroupNotification($master_site, $notification_from, $notification_to, $notification_message, $notification_link, $notification_type, $group_id);
					}		

					$Current_Notification->createGroupNotification($master_site, $notification_from, $notification_message, $notification_link, $notification_type, $group_id);	

				//New List Post		
				} else if ($list_id != 0) {	
					$notification_type = "list_item";	
					$notification_to_array = getActiveGroupMembers($group_id);
					$notification_to_count = count($notification_to_array);

					//Loop Through all Group Member and Send them a Notification 
					for($x = 0; $x < $notification_to_count; $x++) {
						$notification_to = $notification_to_array[$x];		
						
						//Checked if logged in user made the group post 
						if ($notification_from == $notification_to) {	
							$from_logged_in_user = 1;	
						} else {
							$from_logged_in_user = 0;				
						}

						$Current_Notification->createListNotification($master_site, $notification_from, $notification_to, $notification_message, $notification_link, $notification_type, $list_id, $group_id, $from_logged_in_user);
					}		
					
				//New Regular Post
				} else {
					$notification_to = $post_to;		
					$Current_Notification->createNotification($master_site, $notification_from, $notification_to, $notification_message, $notification_link, $notification_type);		
					//echo "NORMAL";
				}
				


				//STEP 5: Reload Page *need to add post to friend 
				$page_redirect = 'Location: '. $_SERVER['PHP_SELF'];
				
				//Type 1: This is a Post to a Visiting Friend 
				if($visiting_friend_id != 0 ) {
					header($page_redirect . "?friend_id=" . $visiting_friend_id);
					die;						

				//This is a post to All Other Pages 
				} else {
					
					//Type 2: Group Redirect
					if ($group_id != 0 && $list_id == 0) {
						//header('Location: '. $_SERVER['PHP_SELF'] . "?group_id=" . base64_encode($group_id));
						$page_redirect_group = $page_redirect  . "?group_id=" . base64_encode($group_id);					
						header($page_redirect_group);
						die;				
					
					//Type 3: List Redirect
					} else if ($group_id != 0 && $list_id !=0) {
						//$page_redirect = "?group_id=" . base64_encode($group_id) . "&list_id=" . $list_id;
						$page_redirect_list = $page_redirect . "?group_id=" . base64_encode($group_id) . "&list_id=" . $list_id;
						header($page_redirect_list);		
					
					//Type 4: All Other		
					} else {
						header($page_redirect);
						die;						
					}
				}
				

			} else {
				//echo "Error: <br>" . mysqli_error($conn);
			}
		} 
	} catch (Exception $e) {
		echo $e->getMessage();
	}
}
		
//Function C2: Upload a Post Article
$uploadResult = false;
$max = 10485760;
if (isset($_POST['upload-article-image'])) {
	
	require_once(FUNCTIONS_FOLDER . 'classes/Upload.php');
	try {
		//Get all Upload File Information 
		if(isset($_POST['destination'])){ $destination = $_POST['destination']; }	
		$upload = new Upload($destination);
		$upload->setMaxSize($max);
		$originalFileName = $upload->getName();
		$upload->move();
		$upload_result = $upload->getMessages();
		$uploadResult = $upload->getUploadOutcome(); 
		$serverImageName = $upload_result[0]; 	


		//FILE: Upload Variables
		if (isset($_POST['master-site'])){ $master_site = $_POST['master-site']; } else { $master_site = ""; }		
		if (isset($_POST['group-id'])){ $group_id = $_POST['group-id']; } else { $group_id = 0; }		
		if (isset($_POST['list-id'])){ $list_id = $_POST['list-id']; } else { $list_id = 0; }		
		if(isset($_POST['post-from'])){ $logged_in_user = $_POST['post-from']; } else {$logged_in_user = "error"; }
		if(isset($_POST['post-from'])){ $post_from = $_POST['post-from']; } 
		if(isset($_POST['post-to'])){ $post_to = $_POST['post-to']; } 
		if(isset($_POST['post-type'])){ $post_type = $_POST['post-type']; } 
		if (isset($_POST['article-caption'])){ $post_caption = $_POST['article-caption']; } else { $post_caption = ""; }		
		if (isset($_POST['post-article-url'])){ $post_url = $_POST['post-article-url']; } else { $post_url = ""; }		 
		$image_url = $serverImageName;
		$file_url = $serverImageName;
		$file_name = $serverImageName;
		if (isset($_POST['article-title'])){ $article_title = $_POST['article-title']; } else { $article_title = ""; }					
		if (isset($_POST['article-description'])){ $article_description = $_POST['article-description']; } else { $article_description = ""; }	
		$post_status = 1;
		
		//STEP 1: Insert into Article Table
		/*
		$stmt = $conn->prepare("INSERT INTO posts(master_site,
			image_url, file_url, file_name, article_title, article_text, post_status) 
			VALUES (?,?,?,?,?,?,?)");
			
		$stmt->bind_param("ssssssi", $master_site,
			$image_url, $file_url, $file_name, $article_title, $article_description, $post_status
		);

		if ($stmt->execute()) {
			echo "New record created successfully";
		} else {
			echo "Error: <br>" . mysqli_error($conn);
		}	
		$stmt->close();	
		*/
		
		$stmt = $conn->prepare("INSERT INTO posts(master_site, group_id, list_id, post_from, post_to, post_type, post_caption, post_url,
			image_url, file_url, file_name, article_title, article_text, post_status) 
			VALUES (?,?,?,?,? ,?,?,?,?,? ,?,?,?,?)");
			
		$stmt->bind_param("siissssssssssi", $master_site, $group_id, $list_id, $post_from, $post_to, $post_type, $post_caption, $post_url,
			$image_url, $file_url, $file_name, $article_title, $article_description, $post_status
		);

		if ($stmt->execute()) {
			echo "New record created successfully";
		} else {
			echo "Error: <br>" . mysqli_error($conn);
		}	
		$stmt->close();	
		
			
		//STEP 2: Add New Text Notifications 
		if(isset($_POST['notification-message-article'])){ $notification_message = $_POST['notification-message-article']; } else { $notification_message = "shared a photo ";} 
		if(isset($_POST['notification-type-article'])){ $notification_type = $_POST['notification-type-article']; } else { $notification_type = "new_post";} 
		if(isset($_POST['notification-link-article'])){ $notification_link = $_POST['notification-link-article']; } else {$notification_link = "#";}
		$notification_from    = $post_from;
		$notification_to      = $post_to;
		
		$Current_Notification = new Notifications($logged_in_user);

		//New Group Post	
		if ($group_id != 0 && $list_id == 0) {
			$notification_to_array = getActiveGroupMembers($group_id);
			$notification_to_count = count($notification_to_array);
			

			//Loop Through all Group Member and Send them a Notification 
			for($x = 0; $x < $notification_to_count; $x++) {
				$notification_to = $notification_to_array[$x];				
				echo $Current_Notification->createGroupNotification($master_site, $notification_from, $notification_to, $notification_message, $notification_link, $notification_type, $group_id);
			}		

			echo $Current_Notification->createGroupNotification($master_site, $notification_from, $notification_message, $notification_link, $notification_type, $group_id);	

		//New List Post		
		} else if ($list_id != 0) {	
			$notification_type = "list_item";	
			$notification_to_array = getActiveGroupMembers($group_id);
			$notification_to_count = count($notification_to_array);

			//Loop Through all Group Member and Send them a Notification 
			for($x = 0; $x < $notification_to_count; $x++) {
				$notification_to = $notification_to_array[$x];		
				
				//Checked if logged in user made the group post 
				if ($notification_from == $notification_to) {	
					$from_logged_in_user = 1;	
				} else {
					$from_logged_in_user = 0;				
				}

				echo $Current_Notification->createListNotification($master_site, $notification_from, $notification_to, $notification_message, $notification_link, $notification_type, $list_id, $group_id, $from_logged_in_user);
			}		
			
		//New Regular Post
		} else {
			$notification_to = $post_to;		
			$Current_Notification->createNotification($master_site, $notification_from, $notification_to, $notification_message, $notification_link, $notification_type);		
				echo "NORMAL";
		}		

		//STEP 3: Reload Page
		$page_redirect = 'Location: '. $_SERVER['PHP_SELF'];
		
		//Type 1: This is a Post to a Visiting Friend 
		if($visiting_friend_id != 0 ) {
			header($page_redirect . "?friend_id=" . $visiting_friend_id);
			die;						

		//This is a post to All Other Pages 
		} else {
			
			//Type 2: Group Redirect
			if ($group_id != 0 && $list_id == 0) {
				//header('Location: '. $_SERVER['PHP_SELF'] . "?group_id=" . base64_encode($group_id));
				$page_redirect_group = $page_redirect  . "?group_id=" . base64_encode($group_id);					
				header($page_redirect_group);
				die;				
			
			//Type 3: List Redirect
			} else if ($group_id != 0 && $list_id !=0) {
				//$page_redirect = "?group_id=" . base64_encode($group_id) . "&list_id=" . $list_id;
				$page_redirect_list = $page_redirect . "?group_id=" . base64_encode($group_id) . "&list_id=" . $list_id;
				header($page_redirect_list);		
			
			//Type 4: All Other		
			} else {
				header($page_redirect);
				die;						
			}
		}
		

	} catch (Exception $e) {
		echo $e->getMessage();
	}

}

//Function C3: Upload a Post File 
$uploadResult = false;
$max = 10485760;
if (isset($_POST['upload-post-file'])) {
	
	require_once(FUNCTIONS_FOLDER . 'classes/Upload.php');
	try {
		//Get all Upload File Information 
		if(isset($_POST['destination'])){ $destination = $_POST['destination']; }	
		$upload = new Upload($destination);
		$upload->setMaxSize($max);
		$originalFileName = $upload->getName();
		$upload->move();
		$upload_result = $upload->getMessages();
		$uploadResult = $upload->getUploadOutcome(); 
		$serverImageName = $upload_result[0]; 	

		
		//FILE: Upload Variables
		if (isset($_POST['master-site'])){ $master_site = $_POST['master-site']; } else { $master_site = ""; }		
		if (isset($_POST['logged-in-user'])){ $logged_in_user = $_POST['logged-in-user']; } else { $logged_in_user = "error"; }		
		if (isset($_POST['group-id'])){ $group_id = $_POST['group-id']; } else { $group_id = 0; }		
		if (isset($_POST['list-id'])){ $list_id = $_POST['list-id']; } else { $list_id = 0; }		
		if(isset($_POST['post-from'])){ $post_from = $_POST['post-from']; } 
		if(isset($_POST['post-to'])){ $post_to = $_POST['post-to']; } 
		if(isset($_POST['parent'])){ $parent = $_POST['parent']; } else { $parent = 0; }
		if(isset($_POST['post-type'])){ $post_type = $_POST['post-type']; } 
		if (isset($_POST['post-file-caption'])){ $post_caption = $_POST['post-file-caption']; } else { $post_caption = ""; }		
		if (isset($_POST['post-article-url'])){ $post_url = $_POST['post-article-url']; } else { $post_url = ""; }	
		
		//Make sure image is pointed at the user_file_uploads directory 
		$image_url = "../user_file_uploads/" . getFileImage($serverImageName);
		$file_url = $serverImageName;
		$file_name = $originalFileName;	
		$post_status = 1;
		
		//STEP 1: Insert into Article Table
		$stmt = $conn->prepare("INSERT INTO posts(master_site, group_id, list_id, post_from, post_to, post_type, post_caption, post_url,
			image_url, file_url, file_name, post_status) 
			VALUES (?,?,?,?,?,?,?,?,?,?,?,?)");
			
		$stmt->bind_param("siissssssssi", $master_site, $group_id, $list_id, $post_from, $post_to, $post_type, $post_caption, $post_url,
			$image_url, $file_url, $file_name, $post_status
		);

		if ($stmt->execute()) {
			echo "New record created successfully";
		} else {
			echo "Error: <br>" . mysqli_error($conn);
		}	
		$stmt->close();	
		
		
		//STEP 2: Create Notification
		if(isset($_POST['notification-message'])){ $notification_message = $_POST['notification-message']; } else { $notification_message = "shared a file ";} 
		if(isset($_POST['notification-type'])){ $notification_type = $_POST['notification-type']; } else { $notification_type = "new_post";} 
		if(isset($_POST['notification-link'])){ $notification_link = $_POST['notification-link']; } else {$notification_link = "#"; }
		$notification_from    = $post_from;
		$notification_to      = $post_to;

		$Current_Notification = new Notifications($logged_in_user);

		//New Group Post	
		if ($group_id != 0 && $list_id == 0) {
			$notification_to_array = getActiveGroupMembers($group_id);
			$notification_to_count = count($notification_to_array);
			

			//Loop Through all Group Member and Send them a Notification 
			for($x = 0; $x < $notification_to_count; $x++) {
				$notification_to = $notification_to_array[$x];				
				echo $Current_Notification->createGroupNotification($master_site, $notification_from, $notification_to, $notification_message, $notification_link, $notification_type, $group_id);
			}		

			echo $Current_Notification->createGroupNotification($master_site, $notification_from, $notification_message, $notification_link, $notification_type, $group_id);	

		//New List Post		
		} else if ($list_id != 0) {	
			$notification_type = "list_item";	
			$notification_to_array = getActiveGroupMembers($group_id);
			$notification_to_count = count($notification_to_array);

			//Loop Through all Group Member and Send them a Notification 
			for($x = 0; $x < $notification_to_count; $x++) {
				$notification_to = $notification_to_array[$x];		
				
				//Checked if logged in user made the group post 
				if ($notification_from == $notification_to) {	
					$from_logged_in_user = 1;	
				} else {
					$from_logged_in_user = 0;				
				}

				echo $Current_Notification->createListNotification($master_site, $notification_from, $notification_to, $notification_message, $notification_link, $notification_type, $list_id, $group_id, $from_logged_in_user);
			}		
			
		//New Regular Post
		} else {
			$notification_to = $post_to;		
			$Current_Notification->createNotification($master_site, $notification_from, $notification_to, $notification_message, $notification_link, $notification_type);		
				echo "NORMAL";
		}		

		//STEP 3: Reload Page
		$page_redirect = 'Location: '. $_SERVER['PHP_SELF'];
		
		//Type 1: This is a Post to a Visiting Friend 
		if($visiting_friend_id != 0 ) {
			header($page_redirect . "?friend_id=" . $visiting_friend_id);
			die;						

		//This is a post to All Other Pages 
		} else {
			
			//Type 2: Group Redirect
			if ($group_id != 0 && $list_id == 0) {
				//header('Location: '. $_SERVER['PHP_SELF'] . "?group_id=" . base64_encode($group_id));
				$page_redirect_group = $page_redirect  . "?group_id=" . base64_encode($group_id);					
				header($page_redirect_group);
				die;				
			
			//Type 3: List Redirect
			} else if ($group_id != 0 && $list_id !=0) {
				//$page_redirect = "?group_id=" . base64_encode($group_id) . "&list_id=" . $list_id;
				$page_redirect_list = $page_redirect . "?group_id=" . base64_encode($group_id) . "&list_id=" . $list_id;
				header($page_redirect_list);		
			
			//Type 4: All Other		
			} else {
				header($page_redirect);
				die;						
			}
		}		
		
		
		
		
		
		
		
		/*
		//New Group Post	
		if ($group_id != 0) {
			$notification_to_array = getActiveGroupMembers($group_id);
			$notification_to_count = count($notification_to_array);
			
			//Loop Through all Group Member and Send them a Notification 
			for($x = 0; $x < $notification_to_count; $x++) {
				$notification_to = $notification_to_array[$x];				
				echo $Current_Notification->createGroupNotification($master_site, $notification_from, $notification_to, $notification_message, $notification_link, $notification_type, $group_id);
			}		
		
		//New List Post		
		} else if ($list_id != 0) {	
			echo $Current_Notification->createListNotification($master_site, $notification_from, $notification_message, $notification_link, $notification_type, $list_id);
			
		//New Regular Post
		} else {
			echo $Current_Notification->createNotification($master_site, $notification_from, $notification_to, $notification_message, $notification_link, $notification_type);		
		}
		

		//STEP 3: Reload Page

		//Type 1: Normal redirect 						
		if(strcmp($post_from, $post_to) == 0) {
			//echo "NORMAL";
			$page_redirect = 'Location: '. $_SERVER['PHP_SELF'];
			
		//Type 2: Redirect to Friend Page 
		} else {
			$friend_user_id = getUserID($post_to);
			$page_redirect = 'Location: '. $_SERVER['PHP_SELF'] . '?friend_id=' . $friend_user_id;
				
		}
			
		if($group_id != 0 && $list_id !=0) {
			header($page_redirect);
			die;
			
		//Type 3: Group Redirect
		} else if($group_id != 0) {
			header('Location: '. $_SERVER['PHP_SELF'] . "?group_id=" . base64_encode($group_id));
			die;
		
		//Type 4: List Redirect
		} else if ($list_id !=0) {
			header('Location: '.$_SERVER['PHP_SELF'] . "?list_id=" . $list_id);
			die;
		
		//Type 5: Error Handling 
		} else {
			header($page_redirect);
			die;	

		}	
*/
	} catch (Exception $e) {
		echo $e->getMessage();
	}

}

//Function C4: Upload to File System
$uploadResult = false;
$max = 10485760;
if (isset($_POST['upload-file-system'])) {
	
	require_once(FUNCTIONS_FOLDER . 'classes/Upload.php');
	try {
		//Get all Upload File Information 
		if(isset($_POST['destination'])){ $destination = $_POST['destination']; }	
		$upload = new Upload($destination);
		$upload->setMaxSize($max);
		$originalFileName = $upload->getName();
		$upload->move();
		$upload_result = $upload->getMessages();
		$uploadResult = $upload->getUploadOutcome(); 
		$serverImageName = $upload_result[0]; 	

		//FILE: Upload Variables
		//The upload key is used to handle any file uploaded since this handles all file uploads across sites
		if(isset($_POST['upload-key'])){ $upload_key = $_POST['upload-key']; }
		if(isset($_POST['redirect'])){ $redirect = $_POST['redirect']; } 	
		if(isset($_POST['upload-folder'])){ $upload_folder_id = $_POST['upload-folder']; } else { $upload_folder_id = 0;}
		
		//Database File Information 
		if(isset($_POST['master-site'])){ $master_site = $_POST['master-site']; } 
		if(isset($_POST['group-id'])){ 
			$group_id = $_POST['group-id'];
		} else {
			$group_id = 0; 
		}
		if(isset($_POST['post-id'])){ $post_id = $_POST['post-id']; } else { $post_id = 0; }
		if(isset($_POST['parent'])){ $parent = $_POST['parent']; } else { $parent = 0; }
		$file_name = $originalFileName; 
		$file_type = pathinfo($file_name, PATHINFO_EXTENSION);
		$file_name_server = $serverImageName; 
		$file_path_server = $destination;
		$file_path = getFilePath($parent);
		$is_folder = 0;
		if(isset($_POST['folder'])){ $folder_name = $_POST['folder']; } 
		if(isset($_POST['logged-in-user'])){ $logged_in_user = $_POST['logged-in-user']; } else { $logged_in_user = 0; }
		$file_image = getFileType($serverImageName, $logged_in_user); 
		$user_name = $logged_in_user; 		
		$user_id = getUserID($logged_in_user); 		
		if (isset($_POST['file-caption'])){ $file_caption = $_POST['file-caption']; } else { $file_caption = ""; }		
		$file_seen = 0;
		$file_status = 1;
		$recycle_status = 0;
		$no_file_added_test = "No file selected.";
		
		//Make Sure a File was Selected 
		if(strcasecmp($file_name_server,$no_file_added_test) != 0 ) {
			
			//STEP 1: Insert File Into Database 
			$sql = "INSERT INTO files (master_site, group_id, post_id, parent, file_name, file_image, file_type, file_name_server, 
			file_path, folder_name, user_name, user_id, file_caption, file_status,
			file_created, file_last_modified) 
			VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?, NOW(), NOW())";		  
			$stmt = $conn->stmt_init();
			$stmt = $conn->prepare($sql);
			$stmt->bind_param('siiisssssssisi', $master_site, $group_id, $post_id, $parent, $file_name, $file_image, $file_type, $file_name_server, 
			$file_path, $folder_name, $user_name, $user_id, $file_caption, $file_status);
			$stmt->execute();
			
			//STEP 2: Create Notifications 
			$notification_from    = $logged_in_user;

			if(isset($_POST['notification-message'])){ $notification_message = $_POST['notification-message']; } else { $notification_message = "shared a file with the group"; }
			if(isset($_POST['notification-type'])){ $notification_type = $_POST['notification-type']; } else { $notification_type = "file_upload"; }
			if(isset($_POST['notification-link'])){ $notification_link = $_POST['notification-link']; } else { $notification_link = "#"; }	

			$Current_Notification = new Notifications($logged_in_user);

			//Type 1: New Group Post
			if ($group_id != 0) {
				$notification_to_array = getActiveGroupMembers($group_id);
				$notification_to_count = count($notification_to_array);		
			
				for($x = 0; $x < $notification_to_count; $x++) {
					$notification_to = $notification_to_array[$x];	
					
					//STEP 4: Check if there is a notification for a discussion in this group already 
					$result_notifications = mysqli_query($conn,"SELECT * FROM notifications WHERE notification_to = '$notification_to' 
						AND group_id = '$group_id' 
						AND status_unseen = '1'
						AND notification_from = '$notification_from'
						AND notification_type = 'file_upload'
						AND notification_deleted = '0'");	
						
					$total_notifications = $result_notifications->num_rows;
					
					//There already is a current notification to this user in this group so update the count
					if($total_notifications > 0) {
						mysqli_query($conn,"UPDATE notifications SET notification_count = notification_count + 1 WHERE 
							notification_to = '$notification_to' 
							AND group_id = '$group_id' 
							AND status_unseen = '1'
							AND notification_from = '$notification_from'
							AND notification_type = 'file_upload'
							AND notification_deleted = '0'");	
			
					//There is not a current notification to this group user in this so create one 	
					} else {	
						echo $Current_Notification->createGroupNotification($master_site, $notification_from, $notification_to, $notification_message, $notification_link, $notification_type, $group_id);
					}
				}	

			//Type 2: New List Post		
			} else if ($list_id != 0) {	
				echo $Current_Notification->createListNotification($master_site, $notification_from, $notification_message, $notification_link, $notification_type, $list_id);
				
			//Type 3: New Regular Post
			} else {
				echo $Current_Notification->createNotification($master_site, $notification_from, $notification_to, $notification_message, $notification_link, $notification_type);		
			}			

			
			//STEP 3: Reload Page 
			header('Location: ' . $redirect);
			
		}
		
	} catch (Exception $e) {
		echo $e->getMessage();
	}

}
		
//Function C5: Generic Upload (works with template_upload.php)
$uploadResult = false;
$max = 10485760;
if (isset($_POST['upload'])) {
	
	require_once(FUNCTIONS_FOLDER . 'classes/Upload.php');
	try {
		//Get all Upload File Information 
		if(isset($_POST['destination'])){ $destination = $_POST['destination']; }	
		$upload = new Upload($destination);
		$upload->setMaxSize($max);
		$originalFileName = $upload->getName();
		$upload->move();
		$upload_result = $upload->getMessages();
		$uploadResult = $upload->getUploadOutcome(); 
		$serverImageName = $upload_result[0]; 	

		//FILE: Upload Variables
		//The upload key is used to handle any file uploaded since this handles all file uploads across sites
		if(isset($_POST['upload-key'])){ $upload_key = $_POST['upload-key']; }
		if(isset($_POST['redirect'])){ $redirect = $_POST['redirect']; } 	
		if(isset($_POST['upload-folder'])){ $upload_folder_id = $_POST['upload-folder']; } else { $upload_folder_id = 0;}
		
		//Database File Information 
		if(isset($_POST['master-site'])){ $master_site = $_POST['master-site']; } 
		if(isset($_POST['group-id'])){ $group_id = $_POST['group-id']; } 
		if(isset($_POST['post-id'])){ $post_id = $_POST['post-id']; } 
		if(isset($_POST['parent'])){ $parent = $_POST['parent']; } 
		$file_name = $originalFileName; 
		$file_type = pathinfo($file_name, PATHINFO_EXTENSION);
		$file_name_server = $serverImageName; 
		$file_path_server = $destination;
		$file_path = getFilePath($parent);
		$is_folder = 0;
		if(isset($_POST['folder'])){ $folder_name = $_POST['folder']; } 
		if(isset($_POST['user'])){ $logged_in_user = $_POST['user']; } 
		$file_image = getFileType($serverImageName, $logged_in_user); 
		$user_name = $logged_in_user; 		
		$user_id = getUserID($logged_in_user); 		
		if (isset($_POST['file-caption'])){ $file_caption = $_POST['file-caption']; } else { $file_caption = ""; }		
		$file_seen = 0;
		$file_status = 1;
		$recycle_status = 0;
		$no_file_added_test = "No file selected.";
		
		//Get File Name for an Article Uploaded Image 
		if(isset($_POST['upload-file-name'])){ 
			$article_server_image_name = $_POST['upload-file-name']; 
			
		} else {
			$article_server_image_name = "error.png";
		} 	

		//Make Sure a File was Selected 
		if(strcasecmp($file_name_server,$no_file_added_test) != 0 ) {
			
			//UPLOAD TYPE 1: Update User Profile 
			if (strcasecmp($upload_key, "user_profile") == 0) {
				$sql = "INSERT INTO files (file_name, file_name_server) VALUES ('User', 'Profile')";

				if (mysqli_query($conn, $sql)) {
					echo "New record created successfully";
					header('Location: ' . $redirect);
				} else {
					echo "Error: " . $sql . "<br>" . mysqli_error($conn);
				}
		
			//UPLOAD TYPE 2: Upload Post Photo 
			} elseif (strcasecmp($upload_key, "post_image") == 0) {
			
				//Get Photo Post Information
				$post_status = 1;
				$master_site = $master_site;
				if(isset($_POST['logged-in-user'])){ $logged_in_user = $_POST['logged-in-user']; } 
				if(isset($_POST['caption'])){ $post_caption = $_POST['caption']; } 
				if(isset($_POST['post-from'])){ $post_from = $_POST['post-from']; } 
				if(isset($_POST['post-to'])){ $post_to = $_POST['post-to']; } 
				if(isset($_POST['post-type'])){ $post_type = $_POST['post-type']; } 
				if(isset($_POST['group-id'])){ $group_id = $_POST['group-id']; } else { $group_id = 0; }
				if(isset($_POST['list-id'])){ $list_id = $_POST['list-id']; } else { $list_id = 0; }

				//STEP 1: Insert into Posts 
				$stmt = $conn->prepare("INSERT INTO posts( master_site, post_from, post_to, post_type, post_caption, image_url, 
					file_url, file_name, post_status) 
					VALUES (?,?,?,?,?,?,?,?,?)");
					
				$stmt->bind_param("ssssssssi", $master_site, $post_from, $post_to, $post_type, $post_caption, $file_name_server, 
					$file_name_server, $file_name, $post_status);
		
					
				if ($stmt->execute()) {
				 
					//STEP 2: Add New Text Notifications 
					if(isset($_POST['notification-message'])){ $notification_message = $_POST['notification-message']; } else { $notification_message = "shared a photo ";} 
					if(isset($_POST['notification-type'])){ $notification_type = $_POST['notification-type']; } else { $notification_type = "new_post";} 
					if(isset($_POST['notification-link'])){ $notification_link = $_POST['notification-link']; } 
					$notification_from    = $post_from;
					$notification_to      = $post_to;
					
					$Current_Notification = new Notifications($logged_in_user);

					//New Group Post	
					if ($group_id != 0) {
						$notification_to_array = getActiveGroupMembers($group_id);
						$notification_to_count = count($notification_to_array);
						
						//Loop Through all Group Member and Send them a Notification 
						for($x = 0; $x < $notification_to_count; $x++) {
							$notification_to = $notification_to_array[$x];				
							echo $Current_Notification->createGroupNotification($master_site, $notification_from, $notification_to, $notification_message, $notification_link, $notification_type, $group_id);
						}		
					
					//New List Post		
					} else if ($list_id != 0) {	
						echo $Current_Notification->createListNotification($master_site, $notification_from, $notification_message, $notification_link, $notification_type, $list_id);
						
					//New Regular Post
					} else {
						echo $Current_Notification->createNotification($master_site, $notification_from, $notification_to, $notification_message, $notification_link, $notification_type);		
					}

				
					//STEP 3: Reload Page
	
					//Type 1: Normal redirect 						
					if(strcmp($post_from, $post_to) == 0) {
						//echo "NORMAL";
						$page_redirect = 'Location: '. $_SERVER['PHP_SELF'];
						
					//Type 2: Redirect to Friend Page 
					} else {
						$friend_user_id = getUserID($post_to);
						$page_redirect = 'Location: '. $_SERVER['PHP_SELF'] . '?friend_id=' . $friend_user_id;
							
					}
						
					if($group_id != 0 && $list_id !=0) {
						header($page_redirect);
						die;
						
					//Type 3: Group Redirect
					} else if($group_id != 0) {
						header('Location: '. $_SERVER['PHP_SELF'] . "?group_id=" . base64_encode($group_id));
						die;
					
					//Type 4: List Redirect
					} else if ($list_id !=0) {
						header('Location: '.$_SERVER['PHP_SELF'] . "?list_id=" . $list_id);
						die;
					
					//Type 5: Error Handling 
					} else {
						header($page_redirect);
						die;	

					}	

				} else {
					//echo "Error: <br>" . mysqli_error($conn);
				}
			
			//UPLOAD TYPE 3: Upload Any File
			} elseif (strcasecmp($upload_key, "user_file_upload") == 0){

				//Insert File into Database 
				$sql = "INSERT INTO files (master_site, group_id, post_id, parent, file_name, file_image, file_type, file_name_server, 
				file_path, folder_name, user_name, user_id, file_caption, file_status,
				file_created, file_last_modified) 
				VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?, NOW(), NOW())";		  
				$stmt = $conn->stmt_init();
				$stmt = $conn->prepare($sql);
				$stmt->bind_param('siiisssssssisi', $master_site, $group_id, $post_id, $parent, $file_name, $file_image, $file_type, $file_name_server, 
				$file_path, $folder_name, $user_name, $user_id, $file_caption, $file_status);
				$stmt->execute();
				
				header('Location: ' . $redirect);
			

			//UPLOAD TYPE 4: Upload User Article Photo 
			} elseif (strcasecmp($upload_key, "upload_article") == 0){
				
				//Copy the correct file so it will be displayed 
				//copy(POST_UPLOAD . $file_name_server, POST_UPLOAD . $article_server_image_name);	
				
				//Delete 
				//$file_name_server
				
				
				/*
				$sql = "INSERT INTO files (file_name, file_name_server) VALUES ('$file_name_server', '$file_name_server')";

				if (mysqli_query($conn, $sql)) {
					echo "New record created successfully";
					header('Location: ' . $redirect);
				} else {
					echo "Error: " . $sql . "<br>" . mysqli_error($conn);
				}				
			
				*/

			
			//UPLOAD TYPE 5: All Other Uploads  
			} else {
				$sql = "INSERT INTO files (file_name, file_name_server) VALUES ('other', 'other')";

				if (mysqli_query($conn, $sql)) {
					echo "New record created successfully";
					header('Location: ' . $redirect);
				} else {
					echo "Error: " . $sql . "<br>" . mysqli_error($conn);
				}
			}
			
			
		}
		
		
	} catch (Exception $e) {
		echo $e->getMessage();
	}

}
		
//Function C6: Change User Image 
$uploadResult = false;
$max = 10485760;
if (isset($_POST['change-user-image'])) {
	global $conn; 
	
	require_once(FUNCTIONS_FOLDER . 'classes/Upload.php');
	try {
		//Get all Upload File Information 
		if(isset($_POST['destination'])){ $destination = $_POST['destination']; }	
		$upload = new Upload($destination);
		$upload->setMaxSize($max);
		$originalFileName = $upload->getName();
		$upload->move();
		$upload_result = $upload->getMessages();
		$uploadResult = $upload->getUploadOutcome(); 
		$serverImageName = $upload_result[0]; 	

		
		//FILE: Upload Variables
		//The upload key is used to handle any file uploaded since this handles all file uploads across sites
		if(isset($_POST['upload-key'])){ $upload_key = $_POST['upload-key']; }
		if(isset($_POST['redirect'])){ $redirect = $_POST['redirect']; } 	
		if(isset($_POST['upload-folder'])){ $upload_folder_id = $_POST['upload-folder']; } else { $upload_folder_id = 0;}
		
		//Database File Information 
		if(isset($_POST['master-site'])){ $master_site = $_POST['master-site']; } 
		if(isset($_POST['group-id'])){ $group_id = $_POST['group-id']; } 
		if(isset($_POST['post-id'])){ $post_id = $_POST['post-id']; } 
		if(isset($_POST['parent'])){ $parent = $_POST['parent']; } 
		$file_name = $originalFileName; 
		$file_type = pathinfo($file_name, PATHINFO_EXTENSION);
		$file_name_server = $serverImageName; 
		$file_path_server = $destination;
		$file_path = getFilePath($parent);
		$is_folder = 0;
		if(isset($_POST['folder'])){ $folder_name = $_POST['folder']; } 
		if(isset($_POST['user'])){ $logged_in_user = $_POST['user']; } 
		$file_image = getFileType($serverImageName, $logged_in_user); 
		$user_name = $logged_in_user; 		
		$user_id = getUserID($logged_in_user); 		
		if (isset($_POST['file-caption'])){ $file_caption = $_POST['file-caption']; } else { $file_caption = ""; }		
		$file_seen = 0;
		$file_status = 1;
		$recycle_status = 0;
		$no_file_added_test = "No file selected.";

		//Make Sure a File was Selected 
		if(strcasecmp($file_name_server,$no_file_added_test) != 0 ) {
			if (!($stmt = $conn->prepare("UPDATE user_profile SET image_name=? WHERE user_name='$logged_in_user'"))) {
				echo "Prepare failed: (" . $conn->errno . ") " . $conn->error;
			}
					
			if (!$stmt->bind_param('s', $serverImageName)) {
				echo "Binding parameters failed: (" . $stmt->errno . ") " . $stmt->error;
			}
			if (!$stmt->execute()) {
				echo "Execute failed: (" . $stmt->errno . ") " . $stmt->error;
			}	
			
		}

	} catch (Exception $e) {
		echo $e->getMessage();
	}

}
		



/*


//Function F4: Default File Upload (not used just a template)  	
$uploadResult = false;
$max = 10485760;
if (isset($_POST['default-file-upload'])) {
	
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
				
		
		//STEP 3: Handle Placing in Database 
		
		//STEP 4: Redirect Page
		//$page_redirect = 'Location: ' . $page_redirect;
		//header($page_redirect);
		//die;						

	} catch (Exception $e) {
		echo $e->getMessage();
	}
}

if (isset($_POST['change-user-photo'])) {
	
	require_once(FUNCTIONS_FOLDER . 'classes/Upload.php');
	try {
		$logged_in_user = "vasquezd";
		$serverImageName = "12.jpg";
		if(isset($_POST['destination'])){ $destination = $_POST['destination']; } else { $destination = USER_IMAGE;	}	
		$upload = new Upload($destination);
		$upload->setMaxSize($max);
		$originalFileName = $upload->getName();
		$upload->move();
		$upload_result = $upload->getMessages();
		$uploadResult = $upload->getUploadOutcome(); 
		$serverImageName = $upload_result[0]; 	
		
		if (!($stmt = $conn->prepare("UPDATE user_profile SET image_name=? WHERE user_name='$logged_in_user'"))) {
			echo "Prepare failed: (" . $conn->errno . ") " . $conn->error;
		}
				
		if (!$stmt->bind_param('s', $serverImageName)) {
			echo "Binding parameters failed: (" . $stmt->errno . ") " . $stmt->error;
		}
		if (!$stmt->execute()) {
			echo "Execute failed: (" . $stmt->errno . ") " . $stmt->error;
		}	
	
		/*
		//STEP 1: Get all Upload Photo and Post Information 
		if(isset($_POST['destination'])){ $destination = $_POST['destination']; }	
		$upload = new Upload($destination);
		$upload->setMaxSize($max);
		$originalFileName = $upload->getName();
		$upload->move();
		$upload_result = $upload->getMessages();
		$uploadResult = $upload->getUploadOutcome(); 
		$serverImageName = $upload_result[0]; 	
		
		if(isset($_POST['master-site'])){ $master_site = $_POST['master-site']; } 
		if(isset($_POST['logged-in-user'])){ $logged_in_user = $_POST['logged-in-user']; } 		
		
		$file_name = $originalFileName; 
		$file_type = pathinfo($file_name, PATHINFO_EXTENSION);
		$file_name_server = $serverImageName; 

		$file_image = getFileType($serverImageName, $logged_in_user); 			
		if (isset($_POST['file-caption'])){ $file_caption = $_POST['file-caption']; } else { $file_caption = ""; }		
		$no_file_added_test = "No file selected.";
		$post_status = 1;
	
				
		//STEP 2: Make Sure a File was Selected 
		if(strcasecmp($file_name_server,$no_file_added_test) != 0 ) {
			
			
			if (!($stmt = $conn->prepare("UPDATE user_profile SET image_name=? WHERE user_name='$logged_in_user'"))) {
				echo "Prepare failed: (" . $conn->errno . ") " . $conn->error;
			}
					
			if (!$stmt->bind_param('s', $serverImageName)) {
				echo "Binding parameters failed: (" . $stmt->errno . ") " . $stmt->error;
			}
			if (!$stmt->execute()) {
				echo "Execute failed: (" . $stmt->errno . ") " . $stmt->error;
			}	
			
			
			header("Location: user_profile.php");
			die();
		
		} else {
			//echo "Error: <br>" . mysqli_error($conn);
		}

	} catch (Exception $e) {
		echo $e->getMessage();
	}
}
		 */


//FUNCTIONS D: UI and Design Related 
//Function D1: Add File Selected Class and Function D2: Add Folder Selected Class 
if (isset($_POST["file_id_get_name"]) && (!empty($_POST["file_id_get_name"]))) {
	$file_id 				= $_POST["file_id_get_name"];

	$result = mysqli_query($conn,"SELECT * FROM files WHERE file_id = '$file_id' ");

	while($row = mysqli_fetch_array($result)) {		
		$file_name = $row['file_name']; 
		$file_type = $row['file_type']; 
	}

	$full_file_name = $file_name . "." . $file_type;
	$full_file_name = $file_name;
	
	echo $full_file_name;
}





////////////////////ORGANIZE ////////////////////////
			/*
			$sql = "INSERT INTO files (file_name, file_name_server) VALUES ('TEST', 'TEST')";

			if (mysqli_query($conn, $sql)) {
				echo "New record created successfully";
				header('Location: ' . $redirect);
			} else {
				echo "Error: " . $sql . "<br>" . mysqli_error($conn);
			}
			
			*/


//FUNCTIONS G: Folder Related 
//Function G1:Show Create New Folder Area
//*no server code
	
//Function G2: Create and Save New Folder


//FUNCTIONS I: UI and Design Related   
//Function I1: Add File Selected Class 
//*no server code

//Function I2: Add Folder Selected Class 
//*no server code

//FUNCTIONS R: Right Click, Dropzone Related and Drag and Drop  
if (isset($_POST["is_folder"]) && (!empty($_POST["folder_id"]))) {
	$folder_ID	=  $_POST['folder_id'];
	$file_id	=  $_POST['file_id'];

	$sql = "UPDATE files SET parent='$folder_ID' WHERE file_id='$file_id'";

	if ($conn->query($sql) === TRUE) {
		echo "Record updated successfully";
	} else {
		echo "Error updating record: " . $conn->error;
	}
	
}

if (isset($_POST["current_droppable_folder_id"]) && (!empty($_POST["current_draggable_file_id"]))) {
	$folder_ID	=  $_POST['current_droppable_folder_id'];
	$file_id	=  $_POST['current_draggable_file_id'];

	$sql = "UPDATE files SET parent='$folder_ID' WHERE file_id='$file_id'";

	if ($conn->query($sql) === TRUE) {
		echo "Record updated successfully";
	} else {
		echo "Error updating record: " . $conn->error;
	}
	
}
	
if (isset($_POST["is_link"]) && (!empty($_POST["folder_id"]))) {
	$folder_ID	=  $_POST['folder_id'];
	$link_ID	=  $_POST['link_id'];
	//echo "Drag and Drop File System Handle Links";
	
	$sql = "UPDATE links SET parent='$folder_ID' WHERE link_id='$link_ID'";

	if ($conn->query($sql) === TRUE) {
		echo "Record updated successfully";
	} else {
		echo "Error updating record: " . $conn->error;
	}

}
	



//FUNCTIONS U: Upload Related 
//Function U1: Upload User Image
//Function U2: Upload File 
	
	
//ORGANIZE BELOW 



////////////////////
//** ORGANIZE ///
////////////////////


//Function U6: 		
//Function U7: Upload File to a Comment 
/*	
$uploadResult = false;
$max = 10485760;
if (isset($_POST['upload-comment-file'])) {
	
	require_once(FUNCTIONS_FOLDER . 'classes/Upload.php');
	try {
		//Get all Upload File Information 
		if(isset($_POST['destination'])){ $destination = $_POST['destination']; }	
		$upload = new Upload($destination);
		$upload->setMaxSize($max);
		$originalFileName = $upload->getName();
		//$file_name = $upload->getName();
		$upload->move();
		$upload_result = $upload->getMessages();
		$uploadResult = $upload->getUploadOutcome(); 
		$serverImageName = $upload_result[0]; 	
		//$file_name_server = $upload_result[0]; 	

		//COMMENT: Upload Variables
		if (isset($_POST['logged-in-user'])){ $logged_in_user = $_POST['logged-in-user']; } else { $logged_in_user = ""; }				
		if (isset($_POST['comment-parent'])){ $comment_parent = $_POST['comment-parent']; } else { $comment_parent = ""; }				
		if (isset($_POST['comment-level'])){ $comment_level = $_POST['comment-level']; } else { $comment_level = ""; }				
		if (isset($_POST['comment-from'])){ $comment_from = $_POST['comment-from']; } else { $comment_from = ""; }				
		if (isset($_POST['comment-to'])){ $comment_to = $_POST['comment-to']; } else { $comment_level = ""; }				
		if (isset($_POST['new-comment'])){ $comment = $_POST['new-comment']; } else { $comment = ""; }							
		if(isset($_POST['redirect'])){ $redirect = $_POST['redirect']; } else { $redirect = ""; }	 
		if(isset($_POST['master-site'])){ $master_site = $_POST['master-site']; } else { $master_site = ""; }	 
		if(isset($_POST['group-id'])){ $group_id = $_POST['group-id']; } else { $group_id = ""; }	 
		$has_file = 1;

		
		//STEP 1: Insert into comments table 	
		$stmt = $conn->prepare("INSERT INTO comments(comment_parent, comment_level, comment, comment_from, 
			comment_to, has_file, file_name, file_name_server, updated, created) 
			VALUES (?,?,?,?,?,?,?,?, NOW(), NOW())");
		$stmt->bind_param("iisssiss",  $comment_parent, $comment_level, $comment, $comment_from, 
			$comment_to, $has_file, $originalFileName, $serverImageName);

		if ($stmt->execute()) {
			echo "New record created successfully";
		} else {
			//echo "Error: " . $sql . "<br>" . mysqli_error($conn);
			echo "Error:  <br>" . mysqli_error($conn);
		}
		$stmt->close();	

		//STEP 2: Create Notification
		if(isset($_POST['notification-message'])){ $notification_message = $_POST['notification-message']; } else {$notification_message = "";}
		if(isset($_POST['notification-link'])){ $notification_link = $_POST['notification-link']; } else { $notification_link = ""; }	 
		$notification_from    = $comment_from;
		$notification_to      = $comment_to;
		$notification_type    = "comment";
		
		$Current_Notification = new Notifications($logged_in_user);

		//New Group Post	
		if ($group_id != 0) {
			echo $Current_Notification->createGroupNotification($master_site, $notification_from, $notification_message, $notification_link, $notification_type, $group_id);	

		//New List Post		
		} else if ($list_id != 0) {	
			echo $Current_Notification->createListNotification($master_site, $notification_from, $notification_message, $notification_link, $notification_type, $list_id);
			
		//New Regular Post
		} else {
			echo $Current_Notification->createNotification($master_site, $notification_from, $notification_to, $notification_message, $notification_link, $notification_type);		
		}
				

		//STEP 3: Reload Page
		//Redirect to Basic Page
		if($group_id != 0 && $list_id !=0) {
			header('Location: '.$_SERVER['PHP_SELF']);
			die;
			
		//Group Redirect
		} else if($group_id != 0) {
			header('Location: '. $_SERVER['PHP_SELF'] . "?group_id=" . base64_encode($group_id));
			die;
		
		//List Redirect
		} else if ($list_id !=0) {
			header('Location: '.$_SERVER['PHP_SELF'] . "?list_id=" . $list_id);
			die;
		
		//Redirect to Friends Page 
		} else {
			header('Location: '.$_SERVER['PHP_SELF']);
			die;		
		}		
		

	} catch (Exception $e) {
		echo $e->getMessage();
	}

}


*/







?>