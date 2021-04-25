
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
			<p class = "center profile-name-text"><b><?php echo $profile_full_name; ?></b><p>
			<div class = "user-profile-biography">
				<p class = "user-profile-biography-text"> <?php echo $profile_biography; ?> </p>
			</div>	
		</div>		
	</div>
	
	<div class = "user-profile-area-right">
		<?php include('include_components/user/edit_profile.php'); ?>
	</div>

</div>


<!-- USER STATS -->
<div class = "user-profile-friends-area ">			
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



<?php 		
	/*
	Logged in User *This is you (1)
	Pending Request: Cancel (2) *sent by you 	
	Pending Request: Accept or Decline (3) *sent by them  	
	Already Friends (4)
	Not Friends (5)
	*/	
?>
	
	
	
	
	
	
	
