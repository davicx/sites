<?php 
//STEP 1: Get All Groups 
$groups_array = getUsersGroups($logged_in_user);
$groups_array_count = count($groups_array);

//STEP 2: Loop Through and List All Groups 
for($x = 0; $x < $groups_array_count; $x++) {
	$group_id =  $groups_array[$x];
	$modal_id = "modal" . $group_id;
	$Current_Group = new Group($group_id);
	$Current_Group->getGroupUsers($logged_in_user, $group_id);
	$Current_Group->groupCreated($logged_in_user, $group_id);
	$active_group_users_array       = $Current_Group->activeGroupUsers;
	$active_group_users_count 		= count($active_group_users_array);
	$group_name = $Current_Group->groupName;	
	$Current_Group->getGroupLastVisit($logged_in_user, $group_id);	
	$group_last_visit = $Current_Group->groupLastVisit;
	
	//Get Group Activity 
	$Current_Activity = new Activity($logged_in_user, $group_id);
	$Current_Activity->getGroupPostActivity($logged_in_user, $group_id, $group_last_visit);
	$Current_Activity->getGroupDiscussionActivity($logged_in_user, $group_id, $group_last_visit);
	$Current_Activity->getGroupFileActivity($logged_in_user, $group_id, $group_last_visit);

	?>

	<!-- Individual Group -->
	<div id = "js-group_<?php echo $group_id; ?>" class = "group">
		
		<!-- HEADER: Group Name -->
		<div class = "group-header">
			<a href="groups_posts.php?group_id=<?php echo base64_encode($group_id); ?>">
				<p class = "group-name no-margin"> <?php echo $group_name; ?></p>			
			</a>		
		</div>

		
		<!-- BODY: Group Users -->
		<div class = "group-body">		
			
			<?php for($i = 0; $i < $active_group_users_count; $i++) {?>
				
				<div class = "group-user-holder">
					<img src="<?php echo USER_IMAGE . getUserImage($active_group_users_array[$i]); ?>" alt="User Image" class = "group-member-image-small">
					<p class = "group-user-name no-margin"> <?php echo $active_group_users_array[$i]; ?> </p>	
				</div>
				
			<?php }?><hr /> 
			
		</div>
			
		<!-- FOOTER: Group Activity -->
		<div class = "group-footer">
			
			<!-- Posts -->
			<div class = "group-footer-activity-holder">
				<a href="groups_posts.php?group_id=<?php echo base64_encode($group_id); ?>" >
					<img title = "" src="<?php echo ICON; ?>camera/camera.png" class = "group-footer-activity-icon" alt="">
					<p class = "group-footer-activity-text"> <?php echo $Current_Activity->totalsPosts; ?> | (<?php echo $Current_Activity->newPosts; ?>) </p>
				</a>	
			</div>	
			
			<!-- Discussions -->
			<div class = "group-footer-activity-holder">
				<a href="groups_discussion.php?group_id=<?php echo base64_encode($group_id); ?>">
					<img title = "" src="<?php echo ICON; ?>camera/camera.png" class = "group-footer-activity-icon" alt="">
					<p class = "group-footer-activity-text"> <?php echo $Current_Activity->totalsDiscussions; ?> | (<?php echo $Current_Activity->newDiscussions; ?>) </p>
				</a>
			</div>	

			<!-- Files -->
			<div class = "group-footer-activity-holder">
				<a href="groups_files.php?group_id=<?php echo base64_encode($group_id); ?>" >
					<img title = "" src="<?php echo ICON; ?>camera/camera.png" class = "group-footer-activity-icon" alt="">
					<p class = "group-footer-activity-text"> <?php echo $Current_Activity->totalFiles; ?> | (<?php echo $Current_Activity->newFiles; ?>) </p>
				</a>
			</div>	
			
		</div>	
		

		<!-- Hidden Fields -->
		<input type="hidden" name="logged-in-user"  id = "" value = "<?php echo $logged_in_user; ?>"> 	
	
	</div>	

<?php } ?>



 

		<?php /*
		
					<!-- Group New Discussions -->		
			<?php include('include_components/notifications/new_discussion_count.php'); ?><hr />

			<!-- Group New Posts -->		
			<?php include('include_components/notifications/new_post_count.php'); ?><hr />				

			<!-- Group New Files -->		
			<?php include('include_components/notifications/new_file_count.php'); ?><hr />

		<!-- Group Information -->
		<p class = "no-margin"> Last Visit: <?php echo $group_last_visit; ?> </p>			
		
		<!-- Group Information -->
		<p class = "no-margin"> Last Visit: <?php echo $group_last_visit; ?> </p>			
		

		<!-- Leave Group -->		
		<p id = "js-group-leave_<?php echo $group_id; ?>" class = "js-group-leave"> Leave </p>

		*/ ?>	

