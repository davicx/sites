<?php	
	//Get Group Information 
	$group_id =  $groups_array[$x];
	$Current_Group = new Group($group_id);
	$Current_Group->getGroupUsers($logged_in_user, $group_id);
	$Current_Group->groupCreated($logged_in_user, $group_id);
	$group_name = $Current_Group->groupName;	
	
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
	

 ?>