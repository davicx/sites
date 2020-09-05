<?php
//STEP 2: Add New Text Notifications 
	$notification_message = $_POST["notification_message"];
	$notification_type    = $_POST["notification_type"];
	$notification_link    = $_POST["notification_link"];	
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