<?php
	//Include Page Header 
	require_once('../../functions/page_header.php');
	
	//Get User Page 
	if (isset($_GET["friend_id"])) {
		$user_id = $_GET["friend_id"];
		$user_name = getUserName($user_id);
	} else {
		//header("Location: groups.php");
		//die();
	}
	
	//Find out if this is your Profile 
	if($friend_id == $logged_in_user_id ) {
		$currently_on_friend_page = 0;
	} else {
		$currently_on_friend_page = 1;	
	}
	
	/*	
	
			$visiting_page_id = $friend_id;
	
		//Type 3A: You are on your Profile
		if($friend_id == $logged_in_user_id ) {
			//echo "You are on your page";
			$currently_on_friend_page = 0;
			
			//Type 3B: You are visiting a Friend 
		} else {
			$currently_on_friend_page = 1;
			//echo "Friend page";		
		}
	
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
	*/
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
				<?php //include_once('include_components/groups/group_links.php'); ?>
				<p> Me </p>	
				<p> My Friend </p>	
				<p> I Am Visiting <?php echo $user_name; ?></p>	
				<p> Their ID <?php echo $user_id; ?></p>	
				<p> CURRENTLY ON FRIEND <?php echo $currently_on_friend_page; ?></p>	
			</div>
		
			<div id = "posts">
				<p> My Groups </p>
			</div>

			<div id = "actions">
				<p> Actions </p>
			</div>

		</div>

		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>	
		
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




<?php
	/*
	
	//Include Page Header 
	require_once('../../functions/page_header.php');
	include('include_components/user/individual_user_profile.php');
	$page_url = "user_profile.php";
	
	
	//USER PROFILE: You are looking at your own profile
	if ($currently_on_friend_page == 0){
		$user_profile_name = $logged_in_user;
		$user_profile_id   = $logged_in_user_id;
		$friend_status = 1;
		//$friend_page_link = "friend_list.php";
		//$display_logged_in_user = "";
	
	//FRIEND PROFILE: You are visiting a friend 	
	} else {
		$user_profile_name = $visiting_friend_name;
		$user_profile_id   = $visiting_friend_id;
		$friend_status 	   = getFriendStatus($logged_in_user, $user_profile_name);
		//$friend_page_link = "friend_list.php?friend_id=" . $visiting_friend_id;
		//$display_logged_in_user = "hide";	
	}	
	
	//STEP 1: Get All Profile Information for User Profile Being Viewed	
	$Current_User_Profile = new User($user_profile_name);
	$Current_User_Profile->getUserInfo($user_profile_name);			
	$profile_user_image     = $Current_User_Profile->userImage;
	$profile_first_name     = $Current_User_Profile->firstName;
	$profile_last_name      = $Current_User_Profile->lastName;
	$profile_biography      = $Current_User_Profile->biography;
	$profile_user_name 		= $profile_first_name . " " . $profile_last_name;
	$profile_full_name  	= $Current_User_Profile->fullUserName;
	$profile_total_friends  = $Current_User_Profile->totalFriends;
	$profile_total_lists    = $Current_User_Profile->totalLists;
	$profile_total_posts    = $Current_User_Profile->totalPosts;		
	$profile_total_groups   = $Current_User_Profile->totalGroups;
	$birthday				= $Current_User_Profile->birthday; 

	//STEP 2: Get Friend Information of User Currently Being Viewed	
	$Current_User_Profile->getFriendList($user_profile_name);	
	$current_user_friends_array = $Current_User_Profile->friendListUserNames;
	$current_user_friends_count = count($current_user_friends_array);
	


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
		<header>
			<?php //include_once('include_components/headers/header_shareshare/header.php') ?>
		</header>

		<!-- MOBILE: Header -->
		<?php //include('include_components/headers/header_shareshare/mobile_header_profile.php') ?>

		
		<div id = "site-wrapper">
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<p> Visiting Page ID: <?php echo $visiting_page_id; ?> </p>
			<p> On Friend Page: <?php echo $currently_on_friend_page; ?> </p>
			<p> My Friends </p>
				
			<?php 

			for($x = 0; $x < $current_user_friends_count; $x++) {
				$current_friend_name = $current_user_friends_array[$x];
				echo $current_friend_name . " | ";
				//$current_friend_name = $current_user_friends_array[$x];
				//$current_friend_id= getUserID($current_friend_name);

			}?>	
			
			
			
			
			
			
			
			
			
			
			
			
			<?php /*
			<div id = "site-wrapper-spacer"> 
				<p> &nbsp </p>
			</div>
			
			<!-- SECTION: Profile -->
			<div id = "user-profile-area" class = "">
				<?php include('include_components/user/user_profile.php'); ?>
			</div>
			
			<!-- SECTION: Friends --> 
			<div id = "user-friends-area" class = "">
				
				<!-- Friends Header -->
				<div class = "user-friends-area-header">
					<p class = "user-friends-header-text">
						<span id = "js-select-my-user-friends" class = "js-select-user-friends-view user-friends-header-text-selected"> My Friends </span>
						<span  id = "" class = "">  | </span>
						<span  id = "js-select-all-site-users" class = "js-select-user-friends-view"> All Site Users </span>
					</p>
				</div>

				<!-- My Friends -->				
				<div id = "js-user-profile-my-friends">
					<?php include('include_components/user/user_friends.php'); ?>
				</div>
				
				<!-- All Site Users -->				
				<div id = "js-user-profile-all-users" class = "hide">
					<?php include('include_components/user/all_users.php'); ?>				
				</div>

 			</div>			
	
			
		</div>	


		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>		
	</body>
</html>



*/ ?>



















