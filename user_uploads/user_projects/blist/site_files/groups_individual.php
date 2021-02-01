<?php
	//Include Page Header 
	require_once('../../functions/page_header.php');
		
	if(isset($_GET["group_id"])) {
		$group_id = base64_decode($_GET['group_id']);	
	} else {
		header("Location: groups.php");
		die();
	} 
	//$Current_User->setGroupPostsLastSeen($logged_in_user, $group_id);
	//$Current_User->setGroupDiscussionLastSeen($logged_in_user, $group_id);
	//$Current_User->setGroupFilesLastSeen($logged_in_user, $group_id);
	//$Current_User->getNewGroupPosts($logged_in_user, $group_id);	
	echo " <p><b>" . $group_id . " <b /><p/>";
	echo " <br />";
	
	//Get Group Information 
	$Current_Group = new Group($group_id);
	$Current_Group->getGroupUsers($logged_in_user, $group_id);
	$Current_Group->groupCreated($logged_in_user, $group_id);
	$group_name = $Current_Group->groupName;		

	//Friends of Group
	$active_group_users_array       = $Current_Group->activeGroupUsers;
	$active_group_users_count 		= count($active_group_users_array);
	$pending_group_users_array	 	= $Current_Group->pendingGroupUsers;
	$pending_group_users_count 		= count($pending_group_users_array);	
	$total_group_users_array   		= $Current_Group->totalGroupUsers;	
	$total_group_users_count 		= count($total_group_users_array);		
	
	//Get Invitable Users who are Not in Group and Friends with Logged in User
	$Current_Group->getGroupInvitableUsers($logged_in_user, $group_id, $logged_in_users_friends_array, $active_group_users_array, $pending_group_users_array);
	$group_invitable_friends_array       = $Current_Group->GroupInvitableFriendsArray;
	$group_invitable_friends_count       = count($group_invitable_friends_array); 	
	
	//FIX
	//$group_invitable_friends_array  = $Current_Group->friendsNotInGroup;
	//$group_invitable_friends_count  = count($group_invitable_friends_array);	
	//$total_group_users_count   		= $Current_Group->totalUsersCount;	

	
	
	//Group Activity 
	$Current_Group->getGroupActivity($logged_in_user, $group_id);	
	$group_total_unseen_activity = $Current_Group->totalUnseenActivity;	
	

	echo " <p><b> My Friends </b><p/>";
	print_r($logged_in_users_friends_array);
	
	echo " <p><b> Total  </b><p/>";
	print_r($total_group_users_array);

	echo " <p><b> Active  </b><p/>";
	print_r($active_group_users_array);
	
	echo " <p><b> Pending  </b><p/>";
	print_r($pending_group_users_array);
	
	//Invitable 
	echo " <p><b> Invitable  </b><p/>";	
	print_r($group_invitable_friends_array);

?>
<!DOCTYPE html>
<html>
    <head>
		
		<!-- Meta Tags -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">		
	    <meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="" />
		<title> Template </title>
		
		<!-- Include all JS and CSS Files -->
		<?php include_once('include_components/links_head.php') ?>
    </head>
	
	<body> 
		
		<!-- Group Settings -->
		<?php //include_once('include_components/groups/group_settings.php') ?>	

		<!-- Add User: Add Site User to Group -->
		<?php include('include_components/groups/add_user.php') ?>		
	
		<!-- Add User: Add User through Email -->		


		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>		
	</body>
</html>























