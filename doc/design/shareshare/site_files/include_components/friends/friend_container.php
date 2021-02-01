<?php 

	//STEP 1: Get all the information for the user you are currently viewing 
	$current_friend_count = getUserFriendCount($current_friend_name);

	$Current_Friend = new User($current_friend_name);	
	$Current_Friend->getUserInfo($current_friend_name);	
	$current_friend_image     = $Current_Friend->userImage;
	$current_friend_id    	  = $Current_Friend->userID;
	$current_friend_full_name = $Current_Friend->fullUserName;	
?>	

<!-- FRIEND: Container -->
<div class = "user-friend-container">	
	
	<!-- Profile Image -->
	<div class = "user-friend-image">
		<img src="<?php //echo USER_IMAGE . $current_friend_image; ?>" alt="Img" class = " user-friend-image">
	</div>	
	
	<!-- Name -->
	<div class = "user-friend-name">
		<a href="user_profile.php?friend_id=<?php echo $current_friend_id; ?>" class = "user-friend-name-text">  <?php echo $current_friend_full_name; ?>  </a>	
		<p class = "user-friend-count-text "> Friends: <?php echo $current_friend_count; ?> </p>	
	</div>	

	<!-- Action -->
	<div class = "user-friend-action">
		<?php include('include_components/friends/friend_action.php') ?>
	</div>		

</div>		 


<?php
/*
	//Rewrite a quicker get user info method
	$result = mysqli_query($conn,"SELECT * FROM user_profile WHERE user_name = '$current_friend_name' ");

	while($row = mysqli_fetch_array($result)) {		
		$user_name          = $row['user_name']; 
		$first_name 		= $row['first_name'];	
		$last_name 			= $row['last_name'];	
		$full_name 			= $user_name;
		
		//Check if they have a first or last name that is set 
		if((isset($first_name)) && !empty($first_name) || (isset($last_name)) && !empty($last_name) ) {
			$full_name = ucfirst(strtolower($first_name)) . " " .  ucfirst(strtolower($last_name)); 	 	
		} else {
			$full_name = $user_name;
		}
	}
	*/
?>