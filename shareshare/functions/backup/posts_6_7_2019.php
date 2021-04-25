<?php
ob_start();
require_once('includes/constants.inc.php');
require_once('functions.php');
require_once('includes/connection.inc.php');
require_once('classes/Posts.php');
require_once('classes/Notifications.php');
require_once('classes/File.php');
 
/*
FUNCTIONS A: All Functions Related to Making a Post
	1) Function A1: Post Text  
	2) Function A2: Post a Photo
	3) Function A3: Post a Video
	4) Function A4: Post an Article
*/ 
 
 
//FUNCTIONS A: All Functions Related to Making a Post
 
//FUNCTIONS A: All Functions Related to Making a Post
//Function A1: Post Text
if (isset($_POST["post_text_from"]) && (!empty($_POST["post_comment"]))) {	
	$logged_in_user  	= $_POST["post_text_from"]; 
	$post_from     		= $_POST["post_text_from"]; 
	$post_to     		= $_POST["post_to"]; 
	$group_id 			= $_POST["group_id"];
	$list_id			= $_POST["list_id"];
	$post_comment		= $_POST["post_comment"];	
	$post_type	        = $_POST["post_type"];	
	$parent	        	= $_POST["parent_folder"];
	$post_url		    = "";		
	$article_title		= "";
	$article_text		= "";	
	$master_site	    = $_POST["master_site"];
	$post_id            = 0;
	$post_status 	    = 1;	

	//STEP 1: Insert into posts table 	
	$stmt = $conn->prepare("INSERT INTO posts(master_site, parent, group_id, list_id, post_from, post_to, post_caption, post_url, post_type, article_title, article_text, post_status, updated ) 
		VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, NOW())");
	$stmt->bind_param("siissssssssi", $master_site, $parent, $group_id, $list_id, $post_from, $post_to, $post_comment, $post_url, $post_type, $article_title, $article_text, $post_status);

	if ($stmt->execute()) {
		echo "New record created successfully";
	} else {
		echo "Error: <br>" . mysqli_error($conn);
	}
	$stmt->close();

	
	//STEP 2: Add New Text Notifications 
	$notification_message = $_POST["notification_message"];
	$notification_link    = $_POST["notification_link"];	
	$notification_type    = $_POST["notification_type"];	
	$notification_from    = $post_from;
	
	$Current_Notification = new Notifications($logged_in_user);
	$notification_to_array = getActiveGroupMembers($group_id);
	$notification_to_count = count($notification_to_array);

	//Loop Through all Group Member and Send them a Notification 
	for($x = 0; $x < $notification_to_count; $x++) {
		$notification_to = $notification_to_array[$x];				
		$Current_Notification->createGroupNotification($master_site, $notification_from, $notification_to, $notification_message, $notification_link, $notification_type, $group_id);
	}		
	
}

//Function A2: Post a Photo
$uploadResult = false;
$max = 10485760;

if (isset($_POST['post-photo-upload'])) {

	require_once(FUNCTIONS_FOLDER . 'classes/Upload.php');
	try {
	 
		if(isset($_POST['destination'])){ $destination = $_POST['destination']; } else { $destination =  "../../user_uploads/user_file_uploads/"; }		
		$upload = new Upload($destination);
		$upload->setMaxSize($max);
		$originalFileName = $upload->getName();
		$upload->move();
		$upload_result = $upload->getMessages();
		$uploadResult = $upload->getUploadOutcome(); 
		$serverImageName = $upload_result[0]; 
		$no_file_added_test = "No file selected.";

		//STEP 1: Get All Additional information to make the Photo Post from the Page 
		if(isset($_POST['master-site'])){ $master_site = $_POST['master-site']; }else { $master_site = "shareshare"; }	 		
		if(isset($_POST['logged-in-user'])){ $logged_in_user = $_POST['logged-in-user']; } else { $logged_in_user = "error"; }	
		if(isset($_POST['photo-caption'])){ $post_caption = $_POST['photo-caption']; } else { $post_caption = "A new photo"; } 
		if(isset($_POST['post-type'])){ $post_type = $_POST['post-type']; } else { $post_type = "photo"; }		
		if(isset($_POST['group-id'])){ $group_id = $_POST['group-id']; } else { $group_id = 0; }	
		if(isset($_POST['redirect'])){ $redirect = $_POST['redirect']; } else { $redirect = "#"; }
		if(isset($_POST['group-id'])){ $group_id = $_POST['group-id']; } else { $group_id = 0; }		
		if(isset($_POST['post-from'])){ $post_from = $_POST['post-from']; } else { $post_from = $group_id; }
		if(isset($_POST['post-to'])){ $post_to = $_POST['post-to']; } else { $post_to = $group_id; }		
		if(isset($_POST['notification-message'])){ $notification_message = $_POST['notification-message']; } else { $notification_message = ""; }
		if(isset($_POST['notification-type'])){ $notification_type = $_POST['notification-type']; } else { $notification_type = "new_file"; }
		if(isset($_POST['notification-link'])){ $notification_link = $_POST['notification-link']; } else { $notification_link = $page_redirect; }	
		
		//STEP 2: Create remaining variables 
		$file_name_full = $originalFileName; 
		$file_name = preg_replace('/\\.[^.\\s]{3,4}$/', '', $file_name_full); //Remove Extension and store Seperately 
		$file_extension = pathinfo($file_name_full, PATHINFO_EXTENSION);
		$file_name_server = $serverImageName; 
		$image_url = $serverImageName; 
		$file_image = getFileType($serverImageName, $logged_in_user); 				
		$user_name = $logged_in_user; 		
		$user_id = getUserID($logged_in_user); 		
		$file_status = 1;
		$post_status = 1;		
		
		//STEP 3: Insert Post into Database 
		$stmt = $conn->prepare("INSERT INTO posts( master_site, post_type, post_status, group_id, post_from, post_to, post_caption,
			image_url, file_name, file_name_server, updated, created) 
			VALUES (?,?,?,?,?,?,?,?,?,?, NOW(), NOW())");
			
		$stmt->bind_param("ssiissssss", $master_site, $post_type, $post_status, $group_id, $post_from, $post_to, $post_caption, $image_url, $file_name_full, $file_name_server);

		if ($stmt->execute()) {
			
			//STEP 4: Add New Post Notifications 
			$notification_from    = $post_from;
			
			$Current_Notification = new Notifications($logged_in_user);
			$notification_to_array = getActiveGroupMembers($group_id);
			$notification_to_count = count($notification_to_array);

			//Loop Through all Group Member and Send them a Notification 
			for($x = 0; $x < $notification_to_count; $x++) {
				$notification_to = $notification_to_array[$x];				
				$Current_Notification->createGroupNotification($master_site, $notification_from, $notification_to, $notification_message, $notification_link, $notification_type, $group_id);
			}		
					
			//STEP 5: Page Redirect 
			//$page_redirect = 'Location: ' . $redirect;
			//header($page_redirect); 
			//exit();

		} else {
			//echo "Error: <br>" . mysqli_error($conn);
		}	
	
	} catch (Exception $e) {
			echo $e->getMessage();
	}		
} 
	
  
/*
	post_type
	post_status
	parent
	group_id 
	list_id 
	post_from 
	post_to 
	post_caption
	post_url 
	post_url_caption
	video_code 
	image_url
	file_url 
	file_name 
	file_name_server 
	unique_id 
	comment_seen 
	updated created
*/
 
	


//Function A3: Post a Video
if (isset($_POST["post_from_video"]) && (!empty($_POST["video_url"]))) {
	$logged_in_user     = $_POST["post_from_video"];  
	$post_from          = $_POST["post_from_video"];  
	$post_to     		= $_POST["post_to"]; 
	$master_site	    = $_POST["master_site"];
	$video_url 			= $_POST["video_url"];
	$video_caption	    = $_POST["video_caption"];
	$post_type	        = $_POST["post_type"];
	$current_date 		= date("Y-m-d H:i:s");
	$video_code 		= processVideo($video_url);
	$post_status 	    = 1;
	

	if (isset($_POST["group_id"])) { $group_id = $_POST["group_id"];} else { $group_id = 0; }	
	if (isset($_POST["list_id"])) { $list_id = $_POST["list_id"]; } else {	$list_id = 0; }
	
	//STEP 1: Insert into posts table 	
	$stmt = $conn->prepare("INSERT INTO posts(master_site, group_id, list_id, post_from, post_to, post_url, video_code, post_caption, post_type, post_status, updated, created) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, NOW(), NOW())");
	$stmt->bind_param("siissssssi",  $master_site, $group_id, $list_id, $post_from, $post_to, $video_url, $video_code, $video_caption, $post_type, $post_status);

	if ($stmt->execute()) {
		//echo "New record created successfully";
	
		//STEP 2: Notifications
		if(isset($_POST['notification_message'])){ $notification_message = $_POST['notification_message']; } else { $notification_message = "shared a video";} 
		if(isset($_POST['notification_type'])){ $notification_type = $_POST['notification_type']; } else { $notification_type = "new_post_video";} 
		if(isset($_POST['notification_link'])){ $notification_link = $_POST['notification_link']; } else { $notification_link =  "groups_posts.php?group_id=" . base64_encode($group_id);} //This default link may break it?
		$notification_from    = $post_from;
		
		$Current_Notification = new Notifications($logged_in_user);						
		$notification_to_array = getActiveGroupMembers($group_id);
		$notification_to_count = count($notification_to_array);		
			
		//Loop Through all Group Member and Send them a Notification 
		for($x = 0; $x < $notification_to_count; $x++) {
			$notification_to = $notification_to_array[$x];				
			$Current_Notification->createGroupNotification($master_site, $notification_from, $notification_to, $notification_message, $notification_link, $notification_type, $group_id);
			echo "Success: " . $notification_to;
		}				
		
	} else {
		echo "Error: " . $sql . "<br>" . mysqli_error($conn);
	}
	$stmt->close();
}


//Function A4: Post an Article


/*
OLD CODE TO ADD 
//Function A4: Post a News Article (or Item)
//Function A4.1: Get needed information and display in second modal 
if (isset($_POST["post_article_url_initial"]) && (!empty($_POST["post_article_url_initial"]))) {
	$article_url 		= $_POST["post_article_url_initial"];

	//Get Article Title 
	$input_URL = $article_url;	
	$link_title_raw   = getTitle($input_URL);
	$link_title_raw = strip_tags($link_title_raw);
	$link_title = str_replace("<BR>","", $link_title_raw);
		
	//Get Article Description 
	$article_description_raw = getArticleText($article_url);
	
	//Bundle this all into a function 
	$article_description_raw = strip_tags($article_description_raw);
	$article_description = str_replace("<BR>","", $article_description_raw);

	//Temporary Image Path 
	$path = TEMP_ARTICLE_UPLOAD;

	//Get Link Information
	$array_of_all_images = sortWebsiteImagesIntoArray($article_url);
	$topThreeImagesArray = saveImagesToServer($array_of_all_images, $path);
	
	//echo $link_title . " " . $article_description;
	
	if (isset($topThreeImagesArray[0])) { 
		$photo_one = $topThreeImagesArray[0];
	} else {
		$photo_one = "no_image.jpg";
	}

	if (isset($topThreeImagesArray[1])) { 
		$photo_two = $topThreeImagesArray[1];	
	} else {
		$photo_two = "no_image.jpg";
	}
	
	if (isset($topThreeImagesArray[2])) { 
		$photo_three = $topThreeImagesArray[2];
	} else {
		$photo_three = "no_image.jpg";
	}
	
	if (isset($article_description)) { 
		$article_output['description'] = $article_description;
		$article_output['link_title'] = $link_title;		
		$article_output['photo_one'] = $photo_one;
		$article_output['photo_two'] = $photo_two; 
		$article_output['photo_three'] = $photo_three;
	} else {
		echo "error";
	}
	
	echo json_encode($article_output);	
}

//Function A4.2: Finalize and Post News Article 
if (isset($_POST["article_submit_confirm"]) && (!empty($_POST["article_selected_image"]))) {
	//$post_master_type	= $_POST["master_site"];
	$master_site		= $_POST["master_site"];
	$logged_in_user     = $_POST["post_from"];
	$post_from    		= $_POST["post_from"];
	$post_to    		= $_POST["post_to"];
	$post_type    		= "article";
	$post_caption   	= $_POST["article_caption"];
	$post_url		   	= $_POST["article_url"];
	$group_id		   	= $_POST["group_id"];
	$list_id		   	= $_POST["list_id"];
	$post_status 		= 1;
	
	//Image Related 
	$image_url		   	= $_POST["article_selected_image"];
	$file_url		   	= $_POST["article_selected_image"];
	$file_name		   	= $_POST["article_selected_image"];
	
	//Article Related 
	$article_caption	= $_POST["article_caption"];
	$article_title		= $_POST["article_title"];	
	$article_description = $_POST["article_description"];	

	
	//STEP 1: Insert into Article Table
	$stmt = $conn->prepare("INSERT INTO posts(master_site, group_id, list_id, post_from, post_to, post_type, post_caption, post_url,
		image_url, file_url, file_name, article_title, article_text, post_status) 
		VALUES (?,?,?,?,?,? ,?,?,?,?,? ,?,?,?)");
	$stmt->bind_param("siissssssssssi", $master_site, $group_id, $list_id, $post_from, $post_to, $post_type, $post_caption, $post_url,
		$image_url, $file_url, $file_name, $article_title, $article_description, $post_status
	);

	if ($stmt->execute()) {
		echo "New record created successfully";
	} else {
		echo "Error: <br>" . mysqli_error($conn);
	}	
	$stmt->close();	
	
	//STEP 2: Copy Image to Permanent Table 
	if(file_exists(TEMP_ARTICLE_UPLOAD . $file_name)) {
		copy(TEMP_ARTICLE_UPLOAD . $file_name, POST_UPLOAD . $file_name);
	}

	//STEP 3: Add New Text Notifications 
	$notification_message = $_POST["notification_message"];
	$notification_link    = $_POST["notification_link"];	
	$notification_type    = $_POST["notification_type"];
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

}
*/















/*
	
		//STEP 1: Get All Additional information from upload form 
		//Part 1: Site and User Specific


		if(isset($_POST['visiting-friend-id'])){ $visiting_friend_id = $_POST['visiting-friend-id']; } else {$visiting_friend_id = 0; }	
		
		//Part 2: File Specific


		if(isset($_POST['list-id'])){ $list_id = $_POST['list-id']; } else { $list_id = 0; }		
		if(isset($_POST['current-folder'])){ $current_folder = $_POST['current-folder']; } else { $current_folder = 0; }
		if(isset($_POST['parent-folder'])){ $parent_folder = $_POST['parent-folder']; } else { $parent_folder = 0; }
		if (isset($_POST['file-upload-caption'])){ $file_caption = $_POST['file-upload-caption']; } else { $file_caption = ""; }	

		//Part 3: Post Specific
		if(isset($_POST['post-id'])){ $post_id = $_POST['post-id']; } else { $post_id = 0; }


		
		//Part 4: Notification Specific

		
		//Part 5: Remaining Variables 


*/
/*

if (isset($_POST['file-upload-post-photo'])) {
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
		if(isset($_POST['master-site'])){ $master_site = $_POST['master-site']; } 
		if(isset($_POST['logged-in-user'])){ $logged_in_user = $_POST['logged-in-user']; } 		
		if(isset($_POST['visiting-friend-id'])){ $visiting_friend_id = $_POST['visiting-friend-id']; } else {$visiting_friend_id = 0; }	
		if(isset($_POST['group-id'])){ $group_id = $_POST['group-id']; } else { $group_id = 0; }
		if(isset($_POST['list-id'])){ $list_id = $_POST['list-id']; } else { $list_id = 0; }		
		if(isset($_POST['parent'])){ $parent = $_POST['parent']; } 
		
		if(isset($_POST['post-from'])){ $post_from = $_POST['post-from']; } 
		if(isset($_POST['post-to'])){ $post_to = $_POST['post-to']; } 
		if(isset($_POST['post-type'])){ $post_type = $_POST['post-type']; } 
		if(isset($_POST['redirect'])){ $redirect = $_POST['redirect']; } else { $page_redirect = $_SERVER['PHP_SELF']; } 
	
		$file_name = $originalFileName; 
		$file_type = pathinfo($file_name, PATHINFO_EXTENSION);
		$file_name_server = $serverImageName; 
		$file_image = getFileType($serverImageName, $logged_in_user); 			
		if (isset($_POST['file-caption'])){ $file_caption = $_POST['file-caption']; } else { $file_caption = ""; }		
		$no_file_added_test = "No file selected.";
		$post_status = 1;

		//STEP 3: Make Sure a File was Selected 
		if(strcasecmp($file_name_server,$no_file_added_test) != 0 ) {
			
			//STEP 4: Insert into Posts 
			$stmt = $conn->prepare("INSERT INTO posts( master_site, group_id, list_id, post_from, post_to, post_type, post_caption, image_url, 
				file_url, file_name, post_status) 
				VALUES (?,?,?,?,?,?,?,?,?,?,?)");
				
			$stmt->bind_param("siisssssssi", $master_site, $group_id, $list_id, $post_from, $post_to, $post_type, $post_caption, $file_name_server, 
				$file_name_server, $file_name, $post_status);
	
			if ($stmt->execute()) {
				
				//STEP 5: Notifications
				if(isset($_POST['notification-message'])){ $notification_message = $_POST['notification-message']; } else { $notification_message = "shared a photo ";} 
				if(isset($_POST['notification-type'])){ $notification_type = $_POST['notification-type']; } else { $notification_type = "new_post";} 
				if(isset($_POST['notification-link'])){ $notification_link = $_POST['notification-link']; } 
				$notification_from    = $post_from;

				$Current_Notification = new Notifications($logged_in_user);						
				$notification_to_array = getActiveGroupMembers($group_id);
				$notification_to_count = count($notification_to_array);
					
				//Loop Through all Group Member and Send them a Notification 
				for($x = 0; $x < $notification_to_count; $x++) {
					$notification_to = $notification_to_array[$x];				
					$Current_Notification->createGroupNotification($master_site, $notification_from, $notification_to, $notification_message, $notification_link, $notification_type, $group_id);
				}						
				
				//STEP 6: Page Redirect 
				//$page_redirect = 'Location: ' . $redirect;
				//header($page_redirect); 
				//exit();

			} else {
				//echo "Error: <br>" . mysqli_error($conn);
			}		
		} 
		
	} catch (Exception $e) {
		echo $e->getMessage();
	}
}
*/





////////////////////
///////////////SORT//////////////////////////
/////////////////////////////////////////////
 
/*
FUNCTIONS A: All Functions Related to Making a Post
	1) Function A1: Post Text (or Discussion) 
	2) Function A2: Post a Photo
	3) Function A3: Post a Video
	4) Function A4: Post an Article
	5) Function A5: Post an Article by Uploading your Own Image
	6) Function A6: Post a File
	7) Function A7: Post a Link (URL)

FUNCTIONS B: All Functions Related to an Existing Post 
	1) Function B1: Edit a Post (5 Parts) 
	2) Function B2: Like or Unlike a Post 
	3) Function B3: Vote Right a Post  
	4) Function B4: Vote Left a Post 
	5) Function B5: Upvote a Post 
	6) Function B6: Downvote a Post 	
	7) Function B7: Cancel Vote (and potential vote up or down)	
	8) Function B8: Bias Vote (Left or Right or Cancel)

FUNCTIONS C: Post Comments 
	1) Function C1: Make a Comment on a Post 
	2) Function C2: Show Make New Comment Area 
	3) Function C3: Cancel Making a New Comment 
	4) Function C4: Edit a Comment (5 Parts) 

FUNCTIONS D: All Functions Related to Unique Posts 
	1) Function D1: Purchase Item 
	2) Function D2: Cancel Purchase Item 
	3) Function D3: Post a Celeb (*probably outdated)
	4) Function D4: Post Password

FUNCTIONS E: Global Upload File Listeners 
	1) Function E1: Listen for File Upload Button Click and Display File Name
	
FUNCTIONS UI: All Functions Related to UI 
	1) Function UI.1: Show Make Photo
	2) Function UI.2: Show Make Video
	3) Function UI.3: Show Make Article
	4) Function UI.4: Show Make Text
	5) Function UI.5: Show Make File
	6) Function UI.6: Show Edit Post on Hover over Post 
	7) Function UI.7: Show Make Comment Area
	8) Function UI.8: Hide Make Comment Area
	9) Function UI.9: Set Post Display View Large
	10) Function UI.10: Set Post Display View Small
	
//FUNCTIONS: Appendix
*/ 

/*

$uploadResult = false;
$max = 10485760;
if (isset($_POST['upload-post-photo'])) {
	
	require_once(FUNCTIONS_FOLDER . 'classes/Upload.php');
	try {
		
		
				
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
		
*/



///////////////////////////////////////////////

		
		
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

//Function A3: Post a Video

//Function A4: Post an Article

//Function A5: Post an Article by Uploading your Own Image

//Function A6: Post a File

//Function A7: Post a Link (URL)
 
 
 
 
 
 
 //////////
 //OLD////
 /////////
 

//Function A2: Post a Photo
/* Handled in files.php (All uploads are handled in files.php) */

//Function A3: Post a Video

 
//Function A5: Post an Article by Uploading your Own Image
/* Happens in files.php */
 
//Function A6: Post a File
/* Happens in files.php */

/*
//Function A7: Post a Link (URL)
 if (isset($_POST["link_url"]) && (!empty($_POST["link_url"]))) {
	$master_site	    = $_POST["master_site"]; 
	$logged_in_user     = $_POST["post_from"]; 
	$post_from  		= $_POST["post_from"]; 
	$post_to   			= $_POST["post_to"];
	$link_url	    	= $_POST["link_url"];		
	$link_description	= $_POST["link_description"];		
	$link_caption 		= $_POST["link_caption"];
	
	if (isset($_POST["group_id"])) { 
		$group_id = $_POST["group_id"];
	} else {
		$group_id = 0;
	}
	
	if (isset($_POST["list_id"])) { 
		$list_id = $_POST["list_id"];
	} else {
		$list_id = 0;
	}
	
	$post_type 			= $_POST["post_type"];
	$current_date 		= date("Y-m-d H:i:s");
	$post_status 	    = 1;
	
	//STEP 1: Get Link Information
	$link_image = "link_default.png";
	
	/*
	$input_URL = $link_url;
	if (null !== (getFavicon($input_URL))) { 
		$link_image  = getFavicon($input_URL);
	} else {
		$link_image = "link_default.png";
	}
	*/
	/*
	//STEP 2: Insert into Database 
	$stmt = $conn->prepare("INSERT INTO posts(master_site, post_type, post_status, group_id, list_id, post_from, post_to, 
		post_caption, post_url, post_url_caption, image_url, file_name_server, updated, created)
		VALUES (?,?,?,?,?,?,?,?,?,?,?,?, NOW(), NOW())");
	$stmt->bind_param("ssiiisssssss",  $master_site, $post_type, $post_status, $group_id, $list_id, $post_from, $post_to,
		$link_caption, $link_url, $link_description, $link_image, $link_image);

	if ($stmt->execute()) {
		echo "New record created successfully";
	} else {
		echo "Error: <br>" . mysqli_error($conn);
	}
	$stmt->close();

	//STEP 2: Add New Link Notifications 
	$notification_message = $_POST["notification_message"];
	$notification_link    = $_POST["notification_link"];	
	$notification_type    = $_POST["notification_type"];	
	$notification_from    = $post_from;
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
		

}

*/
//FUNCTIONS B: All Functions Related to an Existing Post 
//Function B1: Edit a Post (5 Parts) 

/* Part 3: Save Edited Post */
if (isset($_POST["post_id"]) && (!empty($_POST["post_caption_edited"]))) {
	$post_id 				 = $_POST["post_id"];
	$post_caption_edited 	 = $_POST["post_caption_edited"];
	$post_title_edited 		 = $_POST["post_title_edited"];
	$post_description_edited = $_POST["post_description_edited"];

	$sql = "UPDATE posts SET post_caption = ?, article_title = ?, article_text = ? WHERE post_id = '$post_id'";
	$stmt = $conn->prepare($sql);
	$stmt->bind_param('sss', $post_caption_edited, $post_title_edited, $post_description_edited);
	
	if ($stmt->execute()) {
		//echo $post_caption_edited;
	}
}



//Function B2: Like or Unlike a Post 
//Function B3: Vote Right a Post  
//Function B4: Vote Left a Post 
//Function B5: Upvote a Post 
//Function B6: Downvote a Post 	
//Function B7: Cancel Vote (and potential vote up or down)	
//Function B8: Bias Vote (Left or Right or Cancel)
 
 
 
 /////////////////////////////////////
 
 

/*

//New Group Post	
if ($group_id != 0) {

	$Current_Notification = new Notifications($logged_in_user);	
	$notification_to_array = getActiveGroupMembers($group_id);
	$notification_to_count = count($notification_to_array);
	
	//Loop Through all Group Member and Send them a Notification 
	for($x = 0; $x < $notification_to_count; $x++) {
		$notification_to = $notification_to_array[$x];				
		echo $Current_Notification->createGroupNotification($master_site, $notification_from, $notification_to, $notification_message, $notification_link, $notification_type, $group_id);
	}						


//New List Post		
} else if ($list_id != 0) {	
	$Current_Notification = new Notifications($logged_in_user);	
	echo $Current_Notification->createListNotification($master_site, $notification_from, $notification_message, $notification_link, $notification_type, $list_id);
	
//New Regular Post
} else {
	$Current_Notification = new Notifications($logged_in_user);	
	echo $Current_Notification->createNotification($master_site, $notification_from, $notification_to, $notification_message, $notification_link, $notification_type);		

}	
*/

//Function A4: Function A4: Post a News Article (or Item)

//Function A5: Listen for Change to the radio select button to control how the image is handled 
//*Handled only in posts.js


//Function A7: Trigger Browse for File 
//*Handled only in posts.js

//Function A8: Listen for Current File Name and Display on Page
//*Handled only in posts.js

//*Handled only in posts.js

//Function A9: Post a News Article (or Item) by uploading a photo
//*Handled only in files.php (Function U5)

//Function A10: Post a Link (URL)

//Function A11: Share a File 
//Happens in files.php

//Function A12: Post a Celeb
//Happens in upload.php

//Function A13: Purchase Item 
if (isset($_POST["post_id"]) && (!empty($_POST["purchase_user"]))) {
	$post_id 		= $_POST["post_id"];
	$purchase_user  = $_POST["purchase_user"];
	$purchased = 1; 
	
	$sql = "UPDATE posts SET purchased = ? WHERE post_id = '$post_id' ";
	$stmt = $conn->prepare($sql);
	$stmt->bind_param('i', $purchased);
	
	if ($stmt->execute()) {
		echo "success";
	} else {
		echo "could not execute query";
	}
	
	$sql = "UPDATE posts SET purchased_by = ? WHERE post_id = '$post_id' ";
	$stmt = $conn->prepare($sql);
	$stmt->bind_param('s', $purchase_user);
	
	if ($stmt->execute()) {
		echo "success";
	} else {
		echo "could not execute query";
	}
	
}

//Function A14: Cancel Purchase Item 
if (isset($_POST["post_id"]) && (!empty($_POST["cancel_purchase_user"]))) {
	$post_id 		= $_POST["post_id"];
	$purchase_user  = "";
	$purchased = 0; 
	
	$sql = "UPDATE posts SET purchased = ? WHERE post_id = '$post_id' ";
	$stmt = $conn->prepare($sql);
	$stmt->bind_param('i', $purchased);
	
	if ($stmt->execute()) {
		echo "success";
	} else {
		echo "could not execute query";
	}
	
	$sql = "UPDATE posts SET purchased_by = ? WHERE post_id = '$post_id' ";
	$stmt = $conn->prepare($sql);
	$stmt->bind_param('s', $purchase_user);
	
	if ($stmt->execute()) {
		echo "success";
	} else {
		echo "could not execute query";
	}
}


//Function A15: Post a password 
if (isset($_POST["post_password_from"]) && (!empty($_POST["master_key"]))) {	
	$logged_in_user  		= $_POST["post_password_from"]; //from
	$post_from     			= $_POST["post_password_from"]; //from
	$post_to	   			= $_POST["post_to"]; //to (can be same as logged in user when they make a post)	
	$post_type	        	= $_POST["post_type"];	
	$parent	        		= $_POST["parent_folder"];
	$post_master_type		= $_POST["post_master_type"];
	$notification_message   = $_POST["notification_message"];
	$notification_link      = $_POST["notification_link"];
	
	//Password Information 
	$site_name				= $_POST["site_name"]; //Site Name		
	$post_url		   	 	= $_POST["site_url"];	 //Web Site URL	
	$password_username		= $_POST["login_name"];	//Username
	$post_password			= $_POST["site_password"]; //Password	
	$master_key   			= $_POST["master_key"];
	$password_email   		= $_POST["password_email"];
	$password_notes   		= $_POST["password_notes"];
	$encryption_key			= E_KEY;
	$iv						= IV;
	
	//Pre-Encrypt Data with Key
	$post_password 		= encryptItem($master_key, $post_password, $encryption_key, $iv);
	$password_username 	= encryptItem($master_key, $password_username, $encryption_key, $iv);
	$site_name 			= encryptItem($master_key, $site_name, $encryption_key, $iv);
	$password_email 	= encryptItem($master_key, $password_email, $encryption_key, $iv);
	$password_notes 	= encryptItem($master_key, $password_notes, $encryption_key, $iv);

	
	//Encypt Data 
	//Get Group and list ID if they exist
	if ($_POST["group_id"] != 0) { 
		$group_id = $_POST["group_id"];
	} else {
		$group_id = 0;
	}
	
	if ($_POST["list_id"] != 0) { 
		$list_id = $_POST["list_id"];
	} else {
		$list_id = 0;
	}
	
	//Notification Info 
	$post_status 	    = 1;
	$notification_from  = $post_from;
	$notification_to    = $post_to;

	//STEP 1: Insert into posts table 	
	$stmt = $conn->prepare("INSERT INTO posts(post_master_type, parent, list_id, post_from, post_to, post_caption, 
	post_url, post_type, article_title, article_text, post_status, password_email, password_notes, updated ) 
	VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, NOW())");
	$stmt->bind_param("sissssssssiss", $post_master_type, $parent, $list_id, $post_from, $post_to, 
	$post_password, $post_url, $post_type, $site_name, $password_username, $post_status, $password_email, $password_notes);

	if ($stmt->execute()) {
		echo "New record created successfully";
	} else {
		echo "Error: <br>" . mysqli_error($conn);
	}
	$stmt->close();
	
	//STEP 2: Add List Notifications 

}


//FUNCTIONS B: All Functions Related to an Existing Post 
//Function B1: Edit a Post (5 Parts) 

//Part 3.B Edit Password 
if (isset($_POST["post_password_update"]) && (!empty($_POST["master_key"]))) {
	$post_id 				= $_POST["post_id"];
	$post_site_name 	  	= $_POST["post_site_name"];
	$post_password_update 	= $_POST["post_password_update"];
	$post_user_name 		= $_POST["post_user_name"];
	$post_email 			= $_POST["post_email"];
	$post_notes  			= $_POST["post_notes"];
	$master_key 			= $_POST["master_key"];
	$encryption_key			= E_KEY;
	$iv						= IV;
	//echo $post_id .  " " . $post_site_name . " " . $post_password_update  . " " .  $post_user_name  . " " .   $post_email   . " " . $post_notes   . " " . $master_key;
	
	//Encrypt Data with Key
	$post_password 		= encryptItem($master_key, $post_password_update, $encryption_key, $iv);	
	$post_site_name		= encryptItem($master_key, $post_site_name, $encryption_key, $iv);
	$post_user_name 	= encryptItem($master_key, $post_user_name, $encryption_key, $iv);
	$site_name 			= encryptItem($master_key, $post_site_name, $encryption_key, $iv);
	$password_email 	= encryptItem($master_key, $post_email, $encryption_key, $iv);
	$password_notes 	= encryptItem($master_key, $post_notes, $encryption_key, $iv);

	$sql = "UPDATE posts SET post_caption = ?, article_title = ?, article_text = ?, password_email = ?, password_notes = ? WHERE post_id = '$post_id'";
	$stmt = $conn->prepare($sql);
	$stmt->bind_param('sssss', $post_password, $post_site_name, $post_user_name, $password_email, $password_notes);
	
	if ($stmt->execute()) {
		//echo $post_caption_edited;
	}

	
}

//Part 4: Delete Post   
if (isset($_POST["delete_post_id"]) && (!empty($_POST["delete_post_id"]))) {
	$post_id = $_POST["delete_post_id"];
	
	//STEP 1: Delete post from Posts  
	$sql = "UPDATE posts SET post_status= '0' WHERE post_id='$post_id'";

	if (mysqli_query($conn, $sql)) {
		echo "Record updated successfully";
	} else {
		echo "Error updating record: " . mysqli_error($conn);
	}
	
	//STEP 2: Delete post from Notifications 
	//When post is made create a unique ID
	//Get Unique ID to get its Post ID
	//Use this to store the post ID in the Notifications Table
	//Delete notifications with this ID
	
	
}


//Function B2: Like or Unlike a Post 
if (isset($_POST["like_action"]) && (!empty($_POST["logged_in_user"]))) {
	$logged_in_user = $_POST["logged_in_user"]; 
	$like_action   	= $_POST["like_action"]; 
	$post_id     	= $_POST["post_id"]; 
	
	$user_id = getUserID($logged_in_user);
	
	
	if(strcmp($like_action, "like") == 0) {
		//echo 'Like this post';
		//Insert into likes table 	
		$stmt = $conn->prepare("INSERT INTO post_likes(post_id, liked_by, liked_by_name) VALUES (?, ?, ?)");
		$stmt->bind_param("iis",  $post_id, $user_id, $logged_in_user);

		if ($stmt->execute()) {
			echo "New record created successfully";
		} else {
			echo "Error: " . $sql . "<br>" . mysqli_error($conn);
		}
		
	} else {
		//Remove from Likes table
		$sql = "DELETE FROM post_likes WHERE liked_by_name ='$logged_in_user' and post_id = '$post_id'";
		
		if (mysqli_query($conn, $sql)) {
			echo "Record deleted successfully";
		} else {
			echo "Error deleting record: " . mysqli_error($conn);
		}
	}
}	

//Function B3: Vote Right a Post  
if (isset($_POST["logged_in_user"]) && (!empty($_POST["vote_right_post_id"]))) {
	$logged_in_user 	= $_POST["logged_in_user"];
	$vote_right_post_id 	= $_POST["vote_right_post_id"];
	$vote_value 		= 1;

	$stmt = $conn->prepare("INSERT INTO post_bias(post_id, right_vote, right_vote_user) VALUES (?, ?, ?)");
	$stmt->bind_param("iis",  $vote_right_post_id, $vote_value, $logged_in_user);

	if ($stmt->execute()) {
		echo "New record created successfully";
	} else {
		echo "Error: " . $sql . "<br>" . mysqli_error($conn);
	}
	$stmt->close();
	
}

//Function B4: Vote Left a Post 	
if (isset($_POST["logged_in_user"]) && (!empty($_POST["vote_left_post_id"]))) {
	$logged_in_user 	= $_POST["logged_in_user"];
	$vote_left_post_id 	= $_POST["vote_left_post_id"];
	$vote_value 		= 1;
	
	$stmt = $conn->prepare("INSERT INTO post_bias(post_id, left_vote, left_vote_user) VALUES (?, ?, ?)");
	$stmt->bind_param("iis",  $vote_left_post_id, $vote_value, $logged_in_user);

	if ($stmt->execute()) {
		echo "New record created successfully";
	} else {
		echo "Error: " . $sql . "<br>" . mysqli_error($conn);
	}
	$stmt->close();
}

//Function B5: Upvote a Post 
if (isset($_POST["logged_in_user"]) && (!empty($_POST["up_vote_post_id"]))) {
	$logged_in_user 	= $_POST["logged_in_user"];
	$up_vote_post_id 	= $_POST["up_vote_post_id"];
	$vote_value 		= 1;

	$stmt = $conn->prepare("INSERT INTO post_votes(post_id, up_vote, up_vote_user) VALUES (?, ?, ?)");
	$stmt->bind_param("iis",  $up_vote_post_id, $vote_value, $logged_in_user);

	if ($stmt->execute()) {
		echo "New record created successfully";
	} else {
		echo "Error: " . $sql . "<br>" . mysqli_error($conn);
	}
	$stmt->close();
}

//Function B6: Downvote a Post 	
if (isset($_POST["logged_in_user"]) && (!empty($_POST["down_vote_post_id"]))) {
	$logged_in_user 	= $_POST["logged_in_user"];
	$down_vote_post_id 	= $_POST["down_vote_post_id"];
	$vote_value 		= 1;
	
	$stmt = $conn->prepare("INSERT INTO post_votes(post_id, down_vote, down_vote_user) VALUES (?, ?, ?)");
	$stmt->bind_param("iis",  $down_vote_post_id, $vote_value, $logged_in_user);

	if ($stmt->execute()) {
		echo "New record created successfully";
	} else {
		echo "Error: " . $sql . "<br>" . mysqli_error($conn);
	}
	$stmt->close();
}

//Function B7: Cancel Vote (and potentiall vote up or down)	
//Action 1: Cancel Up Vote 
if (isset($_POST["logged_in_user"]) && (!empty($_POST["cancel_up_vote"]))) {
	$logged_in_user 	= $_POST["logged_in_user"];
	$cancel_up_vote 	= $_POST["cancel_up_vote"];
	$post_id 			= $_POST["cancel_up_id"];

	$sql = "DELETE FROM post_votes WHERE up_vote_user ='$logged_in_user' and post_id = '$post_id'";

	if ($conn->query($sql) === TRUE) {
		echo "Record deleted successfully";
	} else {
		echo "Error deleting record: " . $conn->error;
	}
} 

//Action 2: Cancel Up Vote and Vote Down
if (isset($_POST["logged_in_user"]) && (!empty($_POST["cancel_up_vote_down"]))) {
	$logged_in_user 	= $_POST["logged_in_user"];
	$cancel_down_vote 	= $_POST["cancel_up_vote_down"];
	$post_id 			= $_POST["cancel_up_vote_down_id"];
	$vote_value 		= 1;
	
	//Delete the previus up vote 
	$sql = "DELETE FROM post_votes WHERE up_vote_user ='$logged_in_user' and post_id = '$post_id'";

	if ($conn->query($sql) === TRUE) {
		echo "Record deleted successfully";
	} else {
		echo "Error deleting record: " . $conn->error;
	}
	
	//Add a down vote 
	$stmt = $conn->prepare("INSERT INTO post_votes(post_id, down_vote, down_vote_user) VALUES (?, ?, ?)");
	$stmt->bind_param("iis",  $post_id, $vote_value, $logged_in_user);

	if ($stmt->execute()) {
		echo "New record created successfully";
	} else {
		echo "Error: " . $sql . "<br>" . mysqli_error($conn);
	}
	$stmt->close();
} 	

//Action 3: Cancel Down Vote
if (isset($_POST["logged_in_user"]) && (!empty($_POST["cancel_down_vote"]))) {
	$logged_in_user 	= $_POST["logged_in_user"];
	$cancel_down_vote 	= $_POST["cancel_down_vote"];
	$post_id 			= $_POST["cancel_down_id"];

	//Cancel a down vote 
	$sql = "DELETE FROM post_votes WHERE down_vote_user ='$logged_in_user' and post_id = '$post_id'";

	if ($conn->query($sql) === TRUE) {
		echo "Record deleted successfully";
	} else {
		echo "Error deleting record: " . $conn->error;
	}
} 

//Action 4: Cancel Down Vote and Vote Up 
if (isset($_POST["logged_in_user"]) && (!empty($_POST["cancel_down_vote_up"]))) {
	$logged_in_user 		= $_POST["logged_in_user"];
	$cancel_down_vote_up 	= $_POST["cancel_down_vote_up"];
	$post_id 				= $_POST["cancel_down_vote_up_id"];
	$vote_value 		= 1;

	//Cancel a down vote 
	$sql = "DELETE FROM post_votes WHERE down_vote_user ='$logged_in_user' and post_id = '$post_id'";

	if ($conn->query($sql) === TRUE) {
		echo "Record deleted successfully";
	} else {
		echo "Error deleting record: " . $conn->error;
	}
	
	//Vote the post up 
	$stmt = $conn->prepare("INSERT INTO post_votes(post_id, up_vote, up_vote_user) VALUES (?, ?, ?)");
	$stmt->bind_param("iis",  $post_id, $vote_value, $logged_in_user);

	if ($stmt->execute()) {
		echo "New record created successfully";
	} else {
		echo "Error: " . $sql . "<br>" . mysqli_error($conn);
	}
	$stmt->close();
} 

//Function B8: Bias Vote (Left or Right or Cancel)	
//Action 1: Cancel Right Vote
if (isset($_POST["logged_in_user"]) && (!empty($_POST["cancel_right_vote"]))) {
	$logged_in_user 	= $_POST["logged_in_user"];
	$cancel_right_vote 	= $_POST["cancel_right_vote"];
	$post_id 			= $_POST["cancel_right_id"];

	$sql = "DELETE FROM post_bias WHERE right_vote_user ='$logged_in_user' and post_id = '$post_id'";

	if ($conn->query($sql) === TRUE) {
		echo "Record deleted successfully";
	} else {
		echo "Error deleting record: " . $conn->error;
	}
} 

//Action 2: Cancel Right Vote and Vote Left
if (isset($_POST["logged_in_user"]) && (!empty($_POST["cancel_right_vote_left"]))) {
	$logged_in_user 	= $_POST["logged_in_user"];
	$cancel_right_vote 	= $_POST["cancel_right_vote_left"];
	$post_id 			= $_POST["cancel_right_vote_left_id"];
	$vote_value 		= 1;
	
	//Delete the previus up vote 
	$sql = "DELETE FROM post_bias WHERE right_vote_user ='$logged_in_user' and post_id = '$post_id'";

	if ($conn->query($sql) === TRUE) {
		echo "Record deleted successfully";
	} else {
		echo "Error deleting record: " . $conn->error;
	}
	
	//Add a down vote 
	$stmt = $conn->prepare("INSERT INTO post_bias(post_id, left_vote, left_vote_user) VALUES (?, ?, ?)");
	$stmt->bind_param("iis",  $post_id, $vote_value, $logged_in_user);

	if ($stmt->execute()) {
		echo "New record created successfully";
	} else {
		echo "Error: " . $sql . "<br>" . mysqli_error($conn);
	}
	$stmt->close();
} 	

//Action 3: Cancel Left Vote
if (isset($_POST["logged_in_user"]) && (!empty($_POST["cancel_left_vote"]))) {
	$logged_in_user 	= $_POST["logged_in_user"];
	$cancel_left_vote 	= $_POST["cancel_left_vote"];
	$post_id 			= $_POST["cancel_left_id"];

	//Cancel a down vote 
	$sql = "DELETE FROM post_bias WHERE left_vote_user ='$logged_in_user' and post_id = '$post_id'";

	if ($conn->query($sql) === TRUE) {
		echo "Record deleted successfully";
	} else {
		echo "Error deleting record: " . $conn->error;
	}
} 

//Action 4: Cancel Left Vote and Vote Right 
if (isset($_POST["logged_in_user"]) && (!empty($_POST["cancel_left_vote_right"]))) {
	$logged_in_user 			= $_POST["logged_in_user"];
	$cancel_left_vote_right 	= $_POST["cancel_left_vote_right"];
	$post_id 					= $_POST["cancel_left_vote_right_id"];
	$vote_value 				= 1;

	//Cancel a down vote 
	$sql = "DELETE FROM post_bias WHERE left_vote_user ='$logged_in_user' and post_id = '$post_id'";

	if ($conn->query($sql) === TRUE) {
		echo "Record deleted successfully";
	} else {
		echo "Error deleting record: " . $conn->error;
	}
	
	//Vote the post up 
	$stmt = $conn->prepare("INSERT INTO post_bias(post_id, right_vote, right_vote_user) VALUES (?, ?, ?)");
	$stmt->bind_param("iis",  $post_id, $vote_value, $logged_in_user);

	if ($stmt->execute()) {
		echo "New record created successfully";
	} else {
		echo "Error: " . $sql . "<br>" . mysqli_error($conn);
	}
	$stmt->close();
} 

//Function B9: See Post Comments and Update Notifications 
//Happens in notifications.php

//Function B10: Trigger Comment Post When User Hits Enter 	
//Does not use a php script 

//Function B11: Post Right Click
/* Place Code */

//Function B12: Close Post Modal 	
//Does not use a php script 





//FUNCTIONS C: All Functions Related to Comments
//Function C1: Make a Comment on a Post 
if (isset($_POST["logged_in_user"]) && (!empty($_POST["new_comment"]))) {
	$logged_in_user	  	 = $_POST["logged_in_user"]; 
	$post_id	  		 = $_POST["post_id"]; 
	$comment_parent	  	 = $_POST["comment_parent"]; 
	$comment_level	  	 = $_POST["comment_level"]; 
	$comment_is_child  	 = $_POST["comment_level"]; 
	$comment		  	 = $_POST["new_comment"]; 
	$comment_from	  	 = $_POST["logged_in_user"]; 
	$comment_to	  		 = $_POST["comment_to"]; 

 
 	//Step 1: Insert into comments table 	
	$stmt = $conn->prepare("INSERT INTO comments(post_id, comment_parent, comment_is_child, comment_level, comment, comment_from, comment_to, updated, created) 
		VALUES (?,?,?,?,?,?,?, NOW(), NOW())");
	$stmt->bind_param("iiiisss", $post_id, $comment_parent, $comment_is_child, $comment_level, $comment, $comment_from, $comment_to);

	if ($stmt->execute()) {
		echo "New record created successfully";
	} else {
		echo "Error: " . $sql . "<br>" . mysqli_error($conn);
	}
	$stmt->close();
 
 
/*
		

	//Step 2: Get information about post to use in creating notification 
	$result = mysqli_query($conn,"SELECT * FROM posts WHERE post_id = '$comment_post_id' ");

	while($row = mysqli_fetch_array($result)) {			
		$notification_to = $row['post_to'];
	}	
	
	$notification_from = $logged_in_user;
	$notification_header = "posts";
	$notification_category = "post_comment";
	$notification_subcategory = "post";
	$post_id = $comment_post_id;

	//Step 3: Update Notifications Table 
	$Current_Notification = new Notifications($logged_in_user);
	$Current_Notification->createNotification($notification_from, $notification_to, $notification_header, $notification_category, $notification_subcategory, $group_id, $post_id);
	*/

}	


//Function C2: Make a Comment on a Post with a File 
//* This happens in Function U7: Upload File to a Comment *All Uploads occur in files.php	

	

//Function C3: Show Make New Comment Area 
//*No PHP code 

//Function C4: Cancel Making a New Comment 
//*No PHP code 

//Function C5: Edit a Comment (5 Parts)  
//Part 1: Hide caption and show edit area *No php code 

//Part 2: Cancel Editing a Comment *No php code

//Part 3: Save Edited Comment  
if (isset($_POST["comment_id"]) && (!empty($_POST["comment_caption_edited"]))) {
	$comment_id 			 = $_POST["comment_id"];
	$comment_caption_edited = $_POST["comment_caption_edited"];

	$sql = "UPDATE comments SET comment = ? WHERE comment_id = '$comment_id'";
	$stmt = $conn->prepare($sql);
	$stmt->bind_param('s', $comment_caption_edited);
	
	if ($stmt->execute()) {
		echo $comment_caption_edited;
	}
}

//Part 4: Delete Comment   
if (isset($_POST["delete_comment_id"]) && (!empty($_POST["delete_comment_id"]))) {
	$delete_comment_id = $_POST["delete_comment_id"];

	$sql = "UPDATE comments SET comment_deleted = '1' WHERE comment_id ='$delete_comment_id'";

	if (mysqli_query($conn, $sql)) {
		echo "Record updated successfully";
	} else {
		echo "Error updating record: " . mysqli_error($conn);
	}
}
	 
//Part 5: Cancel Edit by Clicking Edit button 
//*No PHP code






//FUNCTIONS D: All Functions Related to Commenting on Discussions 
//Function : View Comments *No php code
//Function : Trigger View Comments *No php code
//Function : Hide Comments *No php code

//Function D1: Make a Discussion Post 
// *This is a Post so excecutes in Function A1 (above)

//Function D2: Cancel Post Comment *No php code
//Function D3: Show add Comment to an Existing Comment *No php code
//Function D4: Show comments responding to a discussion *No php code
//Function D5: Hide comments responding to a discussion *No php code

//Function D6: Like or Unlike a Comment on a Discussion
if (isset($_POST["comment_like_action"]) && (!empty($_POST["logged_in_user"]))) {
	$logged_in_user = $_POST["logged_in_user"]; 
	$like_action   	= $_POST["comment_like_action"]; 
	$comment_id     = $_POST["comment_id"]; 
	
	$user_id = getUserID($logged_in_user);
	
	
	if(strcmp($like_action, "like") == 0) {
		//echo 'Like this post';
		//Insert into likes table 	
		$stmt = $conn->prepare("INSERT INTO comment_likes(comment_id, liked_by, liked_by_name) VALUES (?, ?, ?)");
		$stmt->bind_param("iis",  $comment_id, $user_id, $logged_in_user);

		if ($stmt->execute()) {
			echo "New record created successfully";
		} else {
			echo "Error: " . $sql . "<br>" . mysqli_error($conn);
		}
		
	} else {
		//Remove from Likes table
		$sql = "DELETE FROM comment_likes WHERE liked_by_name ='$logged_in_user' and comment_id = '$comment_id'";
		
		if (mysqli_query($conn, $sql)) {
			echo "Record deleted successfully";
		} else {
			echo "Error deleting record: " . mysqli_error($conn);
		}
	}
}	

//Function D7: Show add Comment to an Existing Post *No php code
//Function D8: Show Edit button when user hovers over comment *No php code


//FUNCTIONS UI: All Functions Related to UI 
//Function UI.1: Show Make Photo
//Function UI.2: Show Make Video
//Function UI.3: Show Make Article
//Function UI.4: Show Make Text
//Function UI.5: Show Make File
//Function UI.6: Show Edit Post on Hover over Post 
//Function UI.7: Show Make Comment Area
//Function UI.8: Hide Make Comment Area


//Function UI.9: Set Post Display View Large
if (isset($_POST["logged_in_user"]) && (!empty($_POST["post_view_type_large"]))) {
	$post_type_large = $_POST["post_view_type_large"];
	$logged_in_user = $_POST["logged_in_user"];

	$sql = "UPDATE user_profile SET post_view = 'large' WHERE user_name ='$logged_in_user'";

	if (mysqli_query($conn, $sql)) {
		echo "Record updated successfully";
	} else {
		echo "Error updating record: " . mysqli_error($conn);
	}

}
	 

//Function UI.10: Set Post Display View Small
if (isset($_POST["logged_in_user"]) && (!empty($_POST["post_view_type_small"]))) {
	$post_type_small = $_POST["post_view_type_small"];
	$logged_in_user = $_POST["logged_in_user"];
	
	$sql = "UPDATE user_profile SET post_view = 'small' WHERE user_name ='$logged_in_user'";

	if (mysqli_query($conn, $sql)) {
		echo "Record updated successfully";
	} else {
		echo "Error updating record: " . mysqli_error($conn);
	}
}
	 




	
////////////////////////	
// APPENDIX: Old Code //
////////////////////////


?>