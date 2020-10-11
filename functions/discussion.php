<?php
require_once('classes/Posts.php');
require_once('classes/Notifications.php');
require_once('functions.php');
require_once('includes/connection.inc.php');
require_once('includes/constants.inc.php');

/*
*this uses the Posts.php class

FUNCTIONS A: All Functions Related to Discussion
	1) Function A1: Submit Discussion Post  
	2) Function A2: Edit Discussion Post
	3) Function A3: Delete Discussion Post
	
*/


//FUNCTIONS A: All Functions Related to Discussion
//Function A1: Submit Discussion Post  
if (isset($_POST["post_discussion"]) && (!empty($_POST["logged_in_user"]))) {
	$post_caption			= $_POST["post_discussion"];
	$master_site			= $_POST["master_site"];
	$logged_in_user   	 	= $_POST["post_from"];
	$post_from    			= $_POST["post_from"];
	$post_to    			= $_POST["post_to"];
	$parent	    			= $_POST["parent_discussion"];
	$group_id		   		= $_POST["group_id"];
	$board_id		   		= $_POST["board_id"];
	$post_type   			= $_POST["post_type"];	
	$post_status 			= 1;
	$notification_message 	= $_POST["notification_message"];
	$notification_type	 	= $_POST["notification_type"];
	$notification_link		= $_POST["notification_link"];	
	
	
	//STEP 1: Insert into posts table 	
	$stmt = $conn->prepare("INSERT INTO posts(master_site, parent, group_id, board_id, post_from, post_to, post_caption, 
	post_type, post_status, updated, created ) VALUES (?,?,?,?,?,?,?,?,?, NOW(), NOW())");
	$stmt->bind_param("siiissssi", $master_site, $parent, $group_id, $board_id, $post_from, $post_to, $post_caption, 
	$post_type, $post_status);

	if ($stmt->execute()) {
		echo "New record created successfully ";
	} else {
		echo "Error: <br>" . mysqli_error($conn);
	}
	$stmt->close();
	
	
	//STEP 2: Add New Discussion Notifications if one already has not been made 	
	$notification_message = $_POST["notification_message"];
	$notification_type    = $_POST["notification_type"];
	$notification_link    = $_POST["notification_link"];	
	$notification_from    = $post_from;
	$notification_to      = $post_to;
	
	$Current_Notification = new Notifications($logged_in_user);

	
	if ($group_id != 0) {
		$notification_to_array = getActiveGroupMembers($group_id);
		$notification_to_count = count($notification_to_array);
		
		//STEP 3: Loop Through all Group Member and Send them a Notification 
		for($x = 0; $x < $notification_to_count; $x++) {
			$notification_to = $notification_to_array[$x];	
			
			//STEP 4: Check if there is a notification for a discussion in this group already 
			$result_notifications = mysqli_query($conn,"SELECT * FROM notifications WHERE notification_to = '$notification_to' 
				AND group_id = '$group_id' 
				AND status_unseen = '1'
				AND notification_from = '$notification_from'
				AND notification_type = 'group_discussion'
				AND notification_deleted = '0'");	
				
			$total_notifications = $result_notifications->num_rows;
			
			//There already is a current notification to this user in this group so update the count
			if($total_notifications > 0) {
				mysqli_query($conn,"UPDATE notifications SET notification_count = notification_count + 1 WHERE 
					notification_to = '$notification_to' 
					AND group_id = '$group_id' 
					AND status_unseen = '1'
					AND notification_from = '$notification_from'
					AND notification_type = 'group_discussion'
					AND notification_deleted = '0'");	
	
			//There is not a current notification to this group user in this so create one 	
			} else {	
				echo $Current_Notification->createGroupNotification($master_site, $notification_from, $notification_to, $notification_message, $notification_link, $notification_type, $group_id);
			}
		}		
	}



}	


//Function A2: Edit Discussion Post


//Function A3: Delete Discussion Post








//FUNCTIONS: Appendix (Old Code)
///SORT///////
//Function A2: Cancel Making Discussion Post
//*No Server Code 


//Function A3: Submit Discussion Post  

	
	/*
	//INSIDE CLASS//
	
	//STEP 2: Loop Through all Group Member and Send them a Notification 
	for($x = 0; $x < $notification_to_count; $x++) {
		
		//STEP 3: Current User 	
		$Current_Notification = new Notifications($logged_in_user);
		$notification_from    = $logged_in_user;
		$notification_to 	  = $notification_to_array[$x];					

		//STEP 4: Find last time current user visited this groups page
		$sql = "SELECT last_visit FROM user_analytics WHERE user_name = '$notification_to' 
		AND group_id = '$group_id'
		AND page_url = 'group_discussion.php'";

		$result_last_visit = $conn->query($sql) or die(mysqli_error());	
		$result_last_visit_count = $result_last_visit->num_rows;	
		

					
		//TYPE 1: Current User Has Visited this Groups Discussion Page
		if ($result_last_visit_count > 0) { 
			while($row_last_visit = mysqli_fetch_array($result_last_visit)) {
				$last_visit = $row_last_visit['last_visit'];

				//Part 1: See if a Notification exists 
				$result_notification = mysqli_query($conn, "SELECT * FROM notifications WHERE notification_to = '$notification_to'
					AND notification_from = '$logged_in_user'
					AND notification_type = 'group_discussion' 
					AND notification_time >= '$last_visit'
					AND group_id = '$group_id' ");	
				
				$notification_found_count = mysqli_num_rows($result_notification);
				
				//Part 2: Notification Not Found (Create One)
				if($notification_found_count < 1) {
					echo "Notification NOT Found " . $group_id . " " . $notification_to;
					
					$Current_Notification->createGroupNotification($master_site, $notification_from, $notification_to, $notification_message, $notification_link, $notification_type, $group_id);	
					
				//Part 3: Notification Found Already (Update Notification Count)
				} else {
					
					//Part 4: Select Notification ID
					$result_notification_id = mysqli_query($conn, "SELECT * FROM notifications WHERE notification_to = '$notification_to'
						AND notification_from = '$logged_in_user'
						AND notification_type = 'group_discussion' 
						AND group_id = '$group_id' ORDER BY notification_time DESC LIMIT 1");		

					while($row_notification_id  = mysqli_fetch_array($result_notification_id)) {	
						$notification_id = $row_notification_id['notification_id'];

					}			
					
					//Part 5: Update Notifications to show another Discussion was Added  
					if (!($stmt = $conn->prepare("UPDATE notifications SET notification_count = notification_count + 1
							WHERE notification_id = ? 
							AND notification_to = ?"))) {
						echo "Prepare failed: (" . $conn->errno . ") " . $conn->error;
					}
							
					if (!$stmt->bind_param('si', $notification_id, $notification_to)) {
						echo "Binding parameters failed: (" . $stmt->errno . ") " . $stmt->error;
					}
					if (!$stmt->execute()) {
						echo "Execute failed: (" . $stmt->errno . ") " . $stmt->error;
					}	

					echo "Notification FOUND " . $group_id . " ID " . $notification_id;					
				}

			}
			
			
		//TYPE 2: Current User has Not Visited this Groups Discussion Page yet 
		} else {	
		
		
		
		
		
			//Part 1: See if a Notification exists 
			$result_notification = mysqli_query($conn, "SELECT * FROM notifications WHERE notification_to = '$notification_to' 
				AND notification_from = '$logged_in_user'
				AND notification_type = 'group_discussion' 
				AND group_id = '$group_id' ");	
			
			$notification_found_count = mysqli_num_rows($result_notification);
			
			//Part 2: Notification Not Found (Create One)
			if($notification_found_count < 1) {
				//echo "Notification NOT Found " . $group_id . " " . $notification_to;
				echo $Current_Notification->createGroupNotification($master_site, $notification_from, $notification_to, $notification_message, $notification_link, $notification_type, $group_id);
			
			//Part 2: Notification Found Already (Update Notification Count)
			} else {
				//echo "Notification FOUND " . $group_id . " " . $notification_to;						
			}
		}
		*/


/*
//Function A4: Submit Discussion Post with File 
$uploadResult = false;
$max = 10485760;
if (isset($_POST['upload-discussion'])) {
	
	require_once(FUNCTIONS_FOLDER . 'classes/Upload.php');
	try {
		//STEP 1: Get all Upload File Information 
		if(isset($_POST['destination'])){ $destination = $_POST['destination']; }	
		$upload = new Upload($destination);
		$upload->setMaxSize($max);
		$originalFileName = $upload->getName();
		$upload->move();
		$upload_result = $upload->getMessages();
		$uploadResult = $upload->getUploadOutcome(); 
		$serverImageName = $upload_result[0]; 
		$no_file_added_test = "No file selected.";
		
		//STEP 2: Get Discussion Info 
		if(isset($_POST['master-site'])){ $master_site = $_POST['master-site']; } else { $master_site = ""; }
		if(isset($_POST['logged-in-user'])){ $logged_in_user = $_POST['logged-in-user']; } else { $logged_in_user = ""; }
		if(isset($_POST['group-id'])){ $group_id = $_POST['group-id']; } else {$group_id = 0; }
		if(isset($_POST['parent'])){ $parent = $_POST['parent']; } else {$parent = 0; }	
		if(isset($_POST['post-from'])){ $post_from = $_POST['post-from']; } else {$post_from = 0; }
		if(isset($_POST['post-to'])){ $post_to = $_POST['post-to']; } else {$post_to = 0; }
		if(isset($_POST['post-type'])){ $post_type = $_POST['post-type']; } else {$post_type = "discussion"; }
		if(isset($_POST['new-discussion'])){ $post_caption = $_POST['new-discussion']; } else {$post_caption = "discussion"; }
		if(isset($_POST['redirect'])){ $redirect = $_POST['redirect']; } else {$redirect = "../"; }
		
		//STEP 3: Get Discussion Info From Upload
		$image_url   		= getFileImage($serverImageName);
		$file_url    		= $serverImageName;
		$file_name   		= $originalFileName;
		$file_name_server 	= $serverImageName;
		$post_status 		= 1;
		$contains_file   	= 1;
		
		//Make Sure a File was Selected 
		if(strcasecmp($file_name_server,$no_file_added_test) != 0 ) {
		
			$stmt = $conn->prepare("INSERT INTO posts(master_site, parent, group_id, post_from, post_to, post_caption, post_type, 
				image_url, file_url, file_name, file_name_server, contains_file, post_status, created ) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?, NOW())");
			$stmt->bind_param("siissssssssii", $master_site, $parent, $group_id, $post_from, $post_to, $post_caption, $post_type, 
				$image_url, $file_url, $file_name, $file_name_server, $contains_file, $post_status);

			if ($stmt->execute()) {
				//echo "New record created successfully";
				header('Location: ' . $redirect);
			} else {
				//echo "Error: <br>" . mysqli_error($conn);
			}
			$stmt->close();
			
			//STEP 4: Create Notification 
			
			/*
			$test = "file discussion";
			$status_unseen = 1;
			$stmt = $conn->prepare("INSERT INTO notifications (master_site, notification_from, notification_to, notification_time, 
				notification_message, notification_type, link_url, full_link, group_id, from_logged_in_user, status_unseen) 
				VALUES (?, ?, ?, NOW(), ?, ?, ?, ?, ?, ?, ?)");
			
			$stmt->bind_param("sssssssiii", $test, $test, $test, 
				$test, $test, $test, $test, $group_id, $logged_in_user, $status_unseen);

			if ($stmt->execute()) {
				//echo "success";
				echo "normal";	
			} else {
				echo "Error: <br>" . mysqli_error($conn);
			}
			$stmt->close();				
			*/
		/*	
		}		
		
	} catch (Exception $e) {
		echo $e->getMessage();
	}

}
*/
?>