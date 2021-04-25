<!-- Get Group Information -->
<?php 
$Current_Group = new Group($group_id);
	$Current_Group->getGroupUsers($logged_in_user, $group_id);
	$Current_Group->groupCreated($logged_in_user, $group_id);
	$group_name = $Current_Group->groupName;		
	$group_created_by = $Current_Group->groupCreatedBy;
	$group_created_by_image = getUserImage($group_created_by);
	$group_created_by_logged_in_user = $Current_Group->groupCreatedByLoggedinUser; //1 created by logged in user 0 any other user
	
	if($group_created_by_logged_in_user) {
		$right_click = "js-board-right-click";
		$temp = "white";
	} else {
		$right_click = "js-board-right-click-follow";
		$temp = "";
	}
	
	//Board Followers
	$Current_Group->getGroupFollowStatus($logged_in_user, $group_id);	
	$logged_in_user_following		= $Current_Group->loggedInUserCurrentlyFollowing;	
	$logged_in_user_following_text	= $Current_Group->loggedInUserFollowingText;	
	$group_followers_array			= $Current_Group->groupFollowersArray;	
	$group_followers_count			= $Current_Group->groupFollowersCount;	
?> 
<!-- Followers: -->
<div class = "">
	
	<?php 
	//Show Follow or Unfollow if this is not your group
	if($group_created_by_logged_in_user == 0) { ?>
	
		<!-- Follow -->
		<?php if($logged_in_user_following == 0) { ?>
			<p id = "js-follow-group_<?php echo $group_id; ?>" class = "js-follow-group"><b> + Follow </b></p>	
			<p id = "js-unfollow-group_<?php echo $group_id; ?>" class = "hide js-unfollow-group"><b> + UnFollow </b></p>
		
		<!-- Unfollow -->
		<?php } else { ?>
			<p id = "js-unfollow-group_<?php echo $group_id; ?>" class = "js-unfollow-group"><b> + UnFollow </b></p>
			<p id = "js-follow-group_<?php echo $group_id; ?>" class = "hide js-follow-group"><b> + Follow </b></p>	
		<?php } ?>
	<?php } ?>
	
	
		<!-- Follow Details -->
		<p> Following: <b><?php echo $logged_in_user_following_text; ?> </b></p>
		<p class = "text-inline">Total Followers </p>
		<p id = "js-group-total-followers_<?php echo $group_id; ?>" class = "js-group-total-followers text-inline"><?php echo $group_followers_count; ?></p>
		<p class = "clear"> <?php print_r($group_followers_array); ?> </p>
		
		<!-- Hidden Variables -->
		<input type="hidden" name="logged-in-user" id = "" value = "<?php echo $logged_in_user; ?>"> 	
		<input type="hidden" name="group-created-by" id = "" value = "<?php echo $group_created_by; ?>"> 	
		<input type="hidden" name="master-site" id = "" value = "<?php echo $master_site; ?>"> 	

</div>

