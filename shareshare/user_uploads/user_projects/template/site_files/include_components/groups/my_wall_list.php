<?php 
$groups_array = getUsersGroups($logged_in_user);
$groups_array = array_values($groups_array);
$groups_array_count = count($groups_array);	 

?>

<!-- ALL GROUPS -->
<div id = "group-list">
	
	<?php 
		//PART 1: User Has a Group
		if($groups_array_count > 0) {
		
		//Loop Through Array containing all Group IDs (non default)
		for($x = 0; $x < $groups_array_count; $x++) {
			
			//Get Group Information 
			$group_id =  $groups_array[$x];
			$Current_Group = new Group($group_id);
			$Current_Group->getGroupUsers($logged_in_user, $group_id);
			$Current_Group->groupCreated($logged_in_user, $group_id);
			$group_name = $Current_Group->groupName;	
			$group_image = $Current_Group->groupImage;	
			
			//Friends of Group
			$group_invitable_friends_array  = $Current_Group->friendsNotInGroup;
			$group_invitable_friends_count  = count($group_invitable_friends_array);	
			$active_group_users_array       = $Current_Group->activeGroupUsers;
			$active_group_users_count 		= count($active_group_users_array);
			$pending_group_users_array	 	= $Current_Group->pendingGroupUsers;
			$pending_group_users_count 		= count($pending_group_users_array);	
			$total_group_users_array   		= $Current_Group->totalGroupUsers;	 
			$total_group_users_count   		= $Current_Group->totalUsersCount;	
			$total_user_friends_array		= $Current_Group->userTotalFriends;	
			
			//Group Activity 
			$Current_Group->getGroupActivity($logged_in_user, $group_id);	
			$group_total_unseen_activity = $Current_Group->totalUnseenActivity;	
			
			//Following Status 
			$Current_Group->getGroupFollowStatus($logged_in_user, $group_id);
			$currently_following_group = $Current_Group->loggedInUserCurrentyFollowing;		
			$group_total_followers_count = $Current_Group->groupFollowersCount;		
			$group_total_followers_array = $Current_Group->groupFollowersArray;		
			
			//Created by Information 
			$group_created_by = $Current_Group->groupCreatedBy;	
			$group_created_by_logged_in_user = $Current_Group->groupCreatedByLoggedinUser;	
			$right_click_class = "";
			if($group_created_by_logged_in_user == 1) { $right_click_class = "js-my-wall-group-right-click"; } 
			$group_settings_class = "";
			if($group_created_by_logged_in_user != 1) { $group_settings_class = "hide"; } 
			?>
			<div id = "js-group_<?php echo $group_id; ?>" class = "<?php echo $right_click_class; ?> my-wall-holder group-board">
				
				<!-- Group ID -->
				<p class = "group-board-text"><?php echo $group_id; ?></p>						

				<!-- Group Image -->
				<p id = "js-group-name_<?php echo $group_id; ?>" class = "group-board-text"><?php echo $group_image; ?></p>		
				
				<!-- Group Name -->
				<div id = "js-group-name_<?php echo $group_id; ?>" class = "js-group-name">
					<p class = "group-board-text" >
						<a href="my_wall.php?group_id=<?php echo base64_encode($group_id); ?> " id = "js-current-group-name_<?php echo $group_id; ?>" ><?php echo $group_name; ?></a>
					</p>	
				</div>
							
				<!-- Edit Group Name -->
				<div id = "js-group-edit-name_<?php echo $group_id; ?>" class = "hide js-group-edit-name">
					<input type="text" name="rename-group" id = "js-rename-group_<?php echo $group_id; ?>" value = "<?php echo $group_name; ?>"  >
					<p id = "js-group-rename-save_<?php echo $group_id; ?>" class = "js-group-rename-save button-simple"> Save </p>
					<p id = "js-group-rename-cancel_<?php echo $group_id; ?>"  class = "js-group-rename-cancel button-simple"> Cancel </p>
				</div>
				
				<!-- Group Rename Trigger (hide settings if the user did not create this -->
				<div class = "js-group-settings <?php echo $group_settings_class; ?>">
					<p id = "js-group-rename_<?php echo $group_id; ?>"class = "js-group-rename button-simple ">Rename </p>		
				</div>
								
				<!-- Created By -->
				<p class = "group-board-text"><?php echo $group_created_by; ?></p>		
				
				<!-- Following Status -->
				<?php include('group_followers.php') ?>	
								
		
	
				<!-- Hidden Variables -->
				<input type="hidden" name="logged-in-user"  id = "" value = "<?php echo $logged_in_user; ?>">	
				<input type="hidden" name="group-created-by"  id = "" value = "<?php echo $group_created_by; ?>">	
			</div><hr />

	<?php } 		
		
		//PART 2: User Has no Groups
		} else {
			include('include_components/groups/create_wall_group.php');
		} ?>
		
</div>


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 