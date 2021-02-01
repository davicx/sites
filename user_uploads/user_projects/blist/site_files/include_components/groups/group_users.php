<?php 
/*
//Friends of Group
$active_group_users_array       = $Current_Group->activeGroupUsers;
$active_group_users_count 		= count($active_group_users_array);
$pending_group_users_array	 	= $Current_Group->pendingGroupUsers;
$pending_group_users_count 		= count($pending_group_users_array);			
$group_invitable_friends_array  = $Current_Group->friendsNotInGroup;
$group_invitable_friends_count  = count($group_invitable_friends_array);	
$total_group_users_array   		= $Current_Group->totalGroupUsers;	
$total_group_users_count   		= $Current_Group->totalUsersCount;	
$total_user_friends_array		= $Current_Group->userTotalFriends;	
*/ 
?>


<!-- Members -->	
<p class = "menu-body-group-page-text"> Active Members (<?php echo $active_group_users_count; ?>) </p>				
<p class = "menu-body-group-page-text"> Active Members <?php print_r($active_group_users_array); ?> </p>				

<p class = "menu-body-group-page-text"> Pending Members (<?php echo $pending_group_users_count; ?>) </p>				
<p class = "menu-body-group-page-text"> Pending Members <?php print_r($pending_group_users_array); ?> </p>											
