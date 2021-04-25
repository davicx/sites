
<!-- USER INFO -->
<div class = "user-profile-area">
	
	<!-- USER: User Image and Edit -->
	<div class = "user-profile-area-left">
	</div>
	
	<div class = "user-profile-area-middle">
		<div class = "user-profile-photo-holder">
			<img src="<?php echo USER_IMAGE . $profile_user_image; ?>" alt="" class = "user-profile-photo">
		</div>			
		<div class = "user-profile-name-holder">
			<p class = "center"><b><?php echo $profile_full_name; ?></b><p>
		</div>		
	</div>
	
	<div class = "user-profile-area-right">
		<?php include('include_components/user/edit_profile.php'); ?>
	</div>	

</div>


<!-- USER STATS -->
<div class = "user-profile-friends-area">			
	<div class = "user-profile-friends-area-left">			
		<p class = "user-profile-friends-text"> Friends </p>
		<a href="friend_list.php" id = "" class = ""><p class = "user-profile-friends-number-text"><?php echo ($Current_User->totalFriends); ?> </p></a>
	</div>	
	<div class = "user-profile-friends-area-middle">			
		<p class = "user-profile-friends-text"> Posts </p>
		<a href="wall.php" id = "" class = ""><p class = "user-profile-friends-number-text"><?php echo ($Current_User->totalPosts); ?> </p></a>
	</div>	
	<div class = "user-profile-friends-area-right">			
		<p class = "user-profile-friends-text"> Groups </p>
		<a href="groups.php" id = "" class = ""><p class = "user-profile-friends-number-text"><?php echo ($Current_User->totalGroups); ?> </p></a>
	</div>	
</div>	

<!-- USER NOTIFICATIONS -->
<div class = "user-profile-notifications-area">		

	<?php include('include_components/notifications/pending_notifications_header.php'); ?>
</div>	





<?php /*

<div class = "">
	<img src="../images/background/background_30.jpg" alt="profile" class = "profile-photo-background">
</div>
<div class = "profile-photo-holder">
	
</div>
<p class = "user-profile-user-name-location user-profile-user-name-text"> <?php// echo ($Current_User->firstName) . " " .($Current_User->lastName); ?> </p>

<div class = "user-profile-edit-button">
	
</div>
*/ ?>






<?php 		
	/*
	Logged in User *This is you (1)
	Pending Request: Cancel (2) *sent by you 	
	Pending Request: Accept or Decline (3) *sent by them  	
	Already Friends (4)
	Not Friends (5)
	*/	

	?>
	
	
	
	<?php /*
	<!-- User Name -->
	<h4><b><?php echo $user_profile_name; ?></b></h4>
		
	<!-- User Image -->
	<img src="<?php echo USER_IMAGE . $profile_user_image; ?>" alt="" class = "hide user-profile-image"><hr />
	
	<!-- Current User Friends -->

	
	
	
	
	
	<!-- Display Logged in User Profile -->
	<div class = "<?php echo $display_logged_in_user; ?>">
		
		<!-- Notifications -->
		<div class = " temp-holder-80">
			<p><b> Notifications </b></p>
			<div id = "notification-holder">
				<?php include('include_components/notifications/pending_notifications.php') ?>
			</div>
		</div>
		
		<!-- Pending Requests -->
		<div class = " temp-holder-80">
			<p><b> Requests </b></p>	
			<?php include('include_components/requests/pending_requests.php') ?>
		</div>
		
		<!-- Edit Profile -->
		<?php include('include_components/user/edit_profile.php'); ?>	
		
	</div>
	*/ ?>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
