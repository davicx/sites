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
				<?php include_once('include_components/groups/group_links.php'); ?><hr />
				<p class = "text-zero"><b> Group ID: <?php echo $group_id; ?> </b></p>
				<p class = "text-zero"><b> Group Name: <?php echo $group_name; ?> </b></p>
				<?php include_once('include_components/groups/group_users.php'); ?>
			</div>
		
			<div id = "posts">
				<p> Discussion </p>
				<?php include_once('include_components/discussion/make_discussion.php'); ?>	
				<?php include_once('include_components/discussion/all_discussions.php'); ?>		
				<?php include_once('include_components/posts/make_post/make_post.php'); ?>						
				<?php include_once('include_components/posts/display_posts/all_posts.php'); ?>						
			</div>

			<div id = "discussion">
				<p> Add User </p>
				<?php include_once('include_components/groups/add_user.php'); ?><hr />
				<a href="groups_files.php?group_id=<?php echo base64_encode($group_id); ?>"><p> Files</p></a>
				<?php //include_once('include_components/notifications/discussion_update_to_seen.php');	?>
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


