<!-- ALL USERS -->
<?php	

	//STEP 1: Group Information
	$Current_Group = new Group($group_id);
	$Current_Group->getGroupUsers($logged_in_user, $group_id);
	$Current_Group->getPendingGroupUsers($logged_in_user, $group_id);

	//STEP 2: Active Group Members 
	$active_group_users_array       = $Current_Group->activeGroupUsers;
	$active_group_users_count 		= count($active_group_users_array);
	
	for($current_user_count = 0; $current_user_count < $active_group_users_count; $current_user_count++) {
		$current_member = $active_group_users_array[$current_user_count];
		$current_friend_name    = $current_member;	
		$current_friend_id      = getUserID($current_friend_name);		
		
		//Individual Friend Container 
		include('include_components/friends/friend_container.php');

	}
	?>
	<p class = "temp-divider"> Pending Users </p>
	<hr /><br />
	
	<?php 
	//STEP 3: Pending Group Members 
	$pending_group_users_array	 	= $Current_Group->pendingGroupUsers;
	$pending_group_users_count 		= count($pending_group_users_array);		

	for($current_user_count = 0; $current_user_count < $pending_group_users_count; $current_user_count++) {
		$current_member = $pending_group_users_array[$current_user_count];
		
		$current_friend_name    = $current_member;	
		$current_friend_id      = getUserID($current_friend_name);		
		
		//Individual Friend Container 
		include('include_components/friends/friend_container.php');

	}	
	
	/*
	$result_users = mysqli_query($conn,"SELECT * FROM user_login WHERE account_deleted = '0' ORDER BY user_id DESC; ");
	
	while($row_users = mysqli_fetch_array($result_users)) {
		$current_friend_name    = $row_users['user_name'];	
		$current_friend_id      = getUserID($current_friend_name);		
		
		//Individual Friend Container 
		include('include_components/friends/friend_container.php');

	}
	*/
?>	

