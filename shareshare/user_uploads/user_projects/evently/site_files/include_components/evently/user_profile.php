
<!-- PROFILE: User Name and Photo -->
<div id = "user-profile-image-holder">
	<div class = "user-profile-image-holder">
		<img src="<?php echo USER_IMAGE; ?>17.jpg" class = "user-profile-image" alt="">		
		<p class = "hide"> David Vasquez </p>
		<p class = "hide"> @davey </p>
	</div>	
</div>


<!-- PROFILE: User Name and Photo -->
<div class = "user-profile-information ">
	
	<!-- Events -->
	<div class = "user-profile-information-groups ">
		<a href="profile.php?selected_profile_view=events">	
			<div class = "user-profile-information-groups-header ">
				<h4 class = "user-profile-information-total-text" > 25 </h4>
			</div>
			<div class = "user-profile-information-groups-body ">
				<p class = "user-profile-information-header-text" > My Events </p>
			</div>
		</a>	
	</div>
	
	<!-- Groups -->
	<div class = "user-profile-information-events ">
		<a href="profile.php?selected_profile_view=groups">	
			<div class = "user-profile-information-groups-header ">
				<h4 class = "user-profile-information-total-text" > 7 </h4>
			</div>
			<div class = "user-profile-information-groups-body ">
				<p class = "user-profile-information-header-text" > My Groups </p>
			</div>
		</a>			
	</div>
	
	<!-- Friends -->
	<div class = "user-profile-information-friends ">
		<a href="profile.php?selected_profile_view=friends">		
			<div class = "user-profile-information-groups-header ">
				<h4 class = "user-profile-information-total-text" > 47 </h4>
			</div>
			<div class = "user-profile-information-groups-body ">
				<p class = "user-profile-information-header-text" > Friends </p>
			</div>
		</a>			
	</div>	
</div>


<!-- PROFILE: Selected View -->
<div class = "user-profile-posts">
	<?php 
		if(strcasecmp($selected_page ,"events")==0) {
			include_once('include_components/profile/profile_events.php'); 						 
		} else if(strcasecmp($selected_page ,"groups")==0)  {
			include_once('include_components/profile/profile_groups.php');										
		} else if(strcasecmp($selected_page ,"friends")==0)  {
			include_once('include_components/profile/profile_friends.php'); 									
		} else {
			include_once('include_components/profile/profile_events.php');										
		}
	?>
</div>


