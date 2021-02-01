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
		<hr />
	
		<!-- Follow Details -->
		<p> Following: <b><?php echo $logged_in_user_following_text; ?> </b></p>
		<p class = "text-inline">Total Followers </p>
		<p id = "js-group-total-followers_<?php echo $group_id; ?>" class = "js-group-total-followers text-inline"><?php echo $group_followers_count; ?></p><hr />
		<p class = "clear"> <?php print_r($group_followers_array); ?> </p>
		
		<!-- Hidden Variables -->
		<input type="hidden" name="logged-in-user" id = "" value = "<?php echo $logged_in_user; ?>"> 	
		<input type="hidden" name="group-created-by" id = "" value = "<?php echo $group_created_by; ?>"> 	
		<input type="hidden" name="master-site" id = "" value = "<?php echo $master_site; ?>"> 	

</div>



