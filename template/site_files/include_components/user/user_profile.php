

<?php
	//echo "<p>You or Friend " . $currently_on_friend_page . "</p>";
	$currently_on_friend_page = 0;
	$currently_on_your_page = 1;
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
	$Current_User_Profile->getFriendList($user_profile_name);			
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


?>

<!-- USER PROFILE  -->
<div id = "profile"> 

	 
	<!-- Edit -->
	<?php if($currently_on_your_page == 1) { ?>
		<p class = "edit-profile-text"><a href="user_profile_edit.php" id="" class="">Edit Profile </a></p>
	<?php } ?>
	
	<!-- User Image -->
	<div id = "user-profile-image">
		<img src="<?php echo USER_IMAGE . $profile_user_image; ?>" alt="" class = "user-profile-photo">
	</div>

	<!-- User Name -->
	<div id = "user-profile-name">
		<p id = "user-full-name"> <?php echo $profile_full_name; ?> </p>
		<p id = "user-name"> @<?php echo $user_name; ?> </p>
		<p id = "user-name"> @<?php echo $group_id; ?> </p>
		<p id = "user-name"> Biography: <?php echo $profile_biography; ?> </p>
	</div>
	
	<!-- Groups | Friends | Activity -->
	<div id = "user-profile-info">
		<div id = "user-profile-info-left">
			<p class = "user-profile-number-text"> <?php echo $profile_total_groups; ?> </p>
			<p class = "user-profile-info-text"> Groups </p>
		</div>
		<div id = "user-profile-info-middle">
			<p class = "user-profile-number-text"> <?php echo $profile_total_friends; ?></p>
			<p class = "user-profile-info-text"> Friends </p>
		</div>	
		<div id = "user-profile-info-right">
			<p class = "user-profile-number-text"> <?php echo $profile_total_posts; ?> </p>
			<p class = "user-profile-info-text"> Posts </p>
		</div>	
	</div>	

	<!-- Biography -->

</div>	
	
