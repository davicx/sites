<?php
	//Get User Page 
	if (isset($_GET["friend_id"])) {
		$user_id = $_GET["friend_id"];
		$user_name = getUserName($user_id);
	} else {
		$user_id = $logged_in_user_id;
		$user_name = $logged_in_user;	
	}
	
	//Find out if this is your Profile 
	if($friend_id != $logged_in_user_id ) {
		$currently_on_your_page = 1;
	} else {
		$currently_on_your_page = 0;	
	}

	$Current_User_Profile = new User($user_name);
	$Current_User_Profile->getUserInfo($user_name);					
	$profile_user_image     = $Current_User_Profile->userImage;
	$profile_first_name     = $Current_User_Profile->firstName;
	$profile_last_name      = $Current_User_Profile->lastName;
	$profile_biography      = $Current_User_Profile->biography;
	$profile_user_name 		= $profile_first_name . " " . $profile_last_name;
	$profile_full_name  	= $Current_User_Profile->fullUserName;
	$profile_total_lists    = $Current_User_Profile->totalLists;
	$profile_total_posts    = $Current_User_Profile->totalPosts;		
	$profile_total_groups   = $Current_User_Profile->totalGroups;

	//STEP 2: Get User Friends 
	$Current_User_Profile->getFriendList($user_name);		
	$profile_friends_array = $Current_User_Profile->friendListUserNames;
	$profile_total_friends = count($profile_friends_array);	
	
	//STEP 3: Get Sport Information 
?>	
	

<!-- USER PROFILE  -->
<div id = "profile"> 
	<a href="http://localhost/sites/template/site_files/user_profile.php" id="" class="">Done Editing</a>
	
	<!-- User Image -->
	<div id = "user-profile-image">
		<img src="<?php echo USER_IMAGE . $profile_user_image; ?>" alt="" class = "user-profile-photo">
		<?php include_once('include_components/user/change_user_image.php'); ?>
	</div>

	<!-- User Name -->
	<div id = "user-profile-name">
		<input name="first-name" type="text" id="js-update-first-name" class="" value="<?php echo htmlentities($profile_first_name, ENT_COMPAT, 'utf-8'); ?>">	
		<input name="last-name" type="text" id="js-update-last-name"class=""   value="<?php echo htmlentities($profile_last_name, ENT_COMPAT, 'utf-8'); ?>">
		<textarea name="biography" id="js-update-user-biography" class=""><?php echo htmlentities($profile_biography, ENT_COMPAT, 'utf-8'); ?></textarea>	
		<p id = "user-name"> @<?php echo $user_name; ?> </p>
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

	<!-- Save -->
	<p id = "js-update-user-save" class = "edit-profile-text">Save</p>
	
	<!-- Hidden Values -->
	<input type="hidden" id = "" name="logged-in-user" value="<?php echo $logged_in_user; ?>">
	
</div>	
	



