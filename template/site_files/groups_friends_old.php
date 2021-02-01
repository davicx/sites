<?php
	//Include Page Header 
	require_once('../../functions/page_header.php');
		
	if(isset($_GET["group_id"])) {
		$group_id = base64_decode($_GET['group_id']);	
	} else {
		header("Location: groups.php");
		die();
	} 
	
	//STEP 1: Group Information
	$Current_Group = new Group($group_id);
	$Current_Group->getGroupUsers($logged_in_user, $group_id);
	$Current_Group->getPendingGroupUsers($logged_in_user, $group_id);
	$Current_Group->groupCreated($logged_in_user, $group_id);
	$group_name = $Current_Group->groupName;	
	
	//STEP 2: Group Members 
	$active_group_users_array       = $Current_Group->activeGroupUsers;
	$active_group_users_count 		= count($active_group_users_array);
	$pending_group_users_array	 	= $Current_Group->pendingGroupUsers;
	$pending_group_users_count 		= count($pending_group_users_array);			
	$total_group_users_array   		= $Current_Group->totalGroupUsers;	
	$total_group_users_count   		= $Current_Group->totalUsersCount;	
	$total_group_users_status_array = $Current_Group->totalGroupUsersWithStatus;		
	
	//STEP 3: Friends you can Invite
	$Current_Group->getGroupInvitableUsers($logged_in_user, $logged_in_users_friends_array, $total_group_users_array);
	$group_invitable_friends_array       = $Current_Group->GroupInvitableFriendsArray;
	$group_invitable_friends_count       = count($group_invitable_friends_array); 	
	
	//STEP 4: Group Activity 

	//STEP 5: Update All Group Posts to Seen 	
	
	//STEP 6: Update Notifications to Seen
	mysqli_query($conn,"UPDATE notifications SET status_unseen = 0 WHERE 
		(notification_type = 'new_post_video' OR notification_type = 'new_post_photo' OR notification_type = 'new_post_article' OR notification_type = 'new_post_text' OR notification_type = 'new_post_article')
		AND notification_to = '$logged_in_user' 
		AND group_id = '$group_id' ");	
	
	//STEP 7: Update Timestamp for Group Visit 
	include('include_components/groups/group_visit.php'); 

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
	
		<!-- SECTION: Header -->
		<header class = "">
			<?php include_once('include_components/headers/header.php') ?>
		</header>
		
		<!-- Spacer --> 
		<div id = "site-wrapper-spacer">
			<p> &nbsp </p>
		</div>		
		
		<!-- SECTION: Posts -->	
		<div id = "site-wrapper">
			
			<div id = "group" class = "">
				<p> Group </p>	
			</div>
		
			<div id = "posts">
				<?php include_once('include_components/user/all_users.php') ?>
			</div>

			<div id = "actions">
				<p> Actions </p>
			</div>

		</div>

		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>	
		<script>		

		</script>		
	</body>
</html>



<?php 

	
	/*

	$Current_Group->getGroupActivity($logged_in_user, $group_id);	
	$group_total_unseen_activity = $Current_Group->totalUnseenActivity;	
	//Posts
	//Chat
	//Files

	<!-- Group Settings -->
	<?php //include_once('include_components/groups/group_settings.php') ?>	

	*/
?>


