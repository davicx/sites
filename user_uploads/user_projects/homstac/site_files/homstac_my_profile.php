<?php
	//Include Page Header 
	require_once('../../functions/page_header.php');
	$page_url = "user_profile.php";

	//USER PROFILE: You are looking at your own profile
	if ($currently_on_friend_page == 0){
		$user_profile_name = $logged_in_user;
		$user_profile_id   = $logged_in_user_id;
		$friend_status = 1;
		$friend_page_link = "friend_list.php";
		$display_logged_in_user = "";
	
	//FRIEND PROFILE: You are visiting a friend 	
	} else {
		$user_profile_name = $visiting_friend_name;
		$user_profile_id   = $visiting_friend_id;
		$friend_status 	   = getFriendStatus($logged_in_user, $user_profile_name);
		$friend_page_link = "friend_list.php?friend_id=" . $visiting_friend_id;
		$display_logged_in_user = "hide";	
	}
	
	//STEP 1: Get All Profile Information for User Profile Being Viewed	
	$Current_User_Profile = new User($user_profile_name);
	$Current_User_Profile->getUserInfo($user_profile_name);			
	$profile_user_image     = $Current_User_Profile->userImage;
	$profile_first_name     = $Current_User_Profile->firstName;
	$profile_last_name      = $Current_User_Profile->lastName;
	$profile_user_name 		= $profile_first_name . " " . $profile_last_name;
	$profile_full_name  	= $Current_User_Profile->fullUserName;
	$profile_total_friends  = $Current_User_Profile->totalFriends;
	$profile_total_lists    = $Current_User_Profile->totalLists;
	$profile_total_posts    = $Current_User_Profile->totalPosts;		
	$profile_total_groups   = $Current_User_Profile->totalGroups;
	$birthday				= $Current_User_Profile->birthday; 
	
	/* Address */
	$street_address_line_one = $Current_User_Profile->fullAddressLineOne; 
	$street_address_line_two = $Current_User_Profile->fullAddressLineTwo; 

	/* Clothing Info */	
	$user_shirt				= $Current_User_Profile->userShirt; 
	$user_sweater			= $Current_User_Profile->userSweater; 
	$user_coat				= $Current_User_Profile->userCoat; 
	$user_jeans				= $Current_User_Profile->userJeans;		
	$user_pants				= $Current_User_Profile->userPants; 
	$user_dress_size		= $Current_User_Profile->userDressSize; 
	$user_shoes				= $Current_User_Profile->userShoeSize; 
	$user_info				= $Current_User_Profile->userInfo; 

	//STEP 2: Get Friend Information of User Currently Being Viewed	
	$Current_User_Profile->getFriendList($user_profile_name);	
	$current_user_friends_array = $Current_User_Profile->friendListUserNames;
	$current_user_friends_count = count($current_user_friends_array);
	
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
		<header>
			<?php //include_once('include_components/headers/header_shareshare/header.php') ?>
		</header>

		<!-- MOBILE: Header -->
		<?php //include('include_components/headers/header_shareshare/mobile_header_profile.php') ?>

		
		<div id = "site-wrapper">
			
			<div id = "site-wrapper-spacer"> 
				<p> &nbsp </p>
			</div>
		
			
			<!-- SECTION: Friends --> 
			<div id = "wall-full" class = "">
				<?php //include('include_components/user/user_friends.php'); ?>
				<p><b>My Profile </b></p>
				<p> <?php echo $logged_in_user; ?> </p>
				
				<p><b> View someone elses Profile </b></p>

				<?php	
				$result_users = mysqli_query($conn,"SELECT * FROM user_login");

				while($row_users = mysqli_fetch_array($result_users)) {		
					$current_user_name	    = $row_users['user_name'];	
					$current_user_id      = getUserID($current_user_name);				

				?>
				<a href="homstac_user.php?user_name=<?php echo $current_user_name; ?>" class = ""> <?php echo $current_user_name; ?> </a><br/>
				<?php  } ?>	
				
				<?php 
				//$siteUrl = "https://www.youtube.com/";
				//echo getFavicon($siteUrl) 
				?>
 			</div>			

		</div>	


		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>		
	</body>
</html>


