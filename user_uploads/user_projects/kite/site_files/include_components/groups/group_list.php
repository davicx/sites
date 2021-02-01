<?php 
	//Part 1: Get All Groups
	$groups_array = getUsersGroups($logged_in_user);
	$groups_array_count = count($groups_array);
	$user_display_max = 8;
		
	//Part 2: Loop Through All Groups 
	for($x = 0; $x < $groups_array_count; $x++) {

		//Get Group Information 
		$group_id =  $groups_array[$x];
		$Current_Group = new Group($group_id);
		$Current_Group->getGroupUsers($logged_in_user, $group_id);
		$Current_Group->groupCreated($logged_in_user, $group_id);
		$group_name = $Current_Group->groupName;		

		//Group Members 
		$active_group_users_array       = $Current_Group->activeGroupUsers;
		$active_group_users_count 		= count($active_group_users_array);
		$pending_group_users_array	 	= $Current_Group->pendingGroupUsers;
		$pending_group_users_count 		= count($pending_group_users_array);			
		$total_group_users_array   		= $Current_Group->totalGroupUsers;	
		$total_group_users_count   		= $Current_Group->totalUsersCount;	
		$total_group_users_status_array = $Current_Group->totalGroupUsersWithStatus;	

		//Group Activity 
		$Current_Group->getGroupActivity($logged_in_user, $group_id);	
		$group_total_unseen_activity    = $Current_Group->totalUnseenActivity;	
		$group_total_discussion			= $Current_Group->groupTotalDiscussions;	
		$group_new_discussion			= $Current_Group->groupTotalUnseenDiscussion;	
		$group_total_posts				= $Current_Group->groupWallPosts;	
		$group_new_posts				= $Current_Group->groupWallPostsUnseen;	
		$new_files 						= $Current_Group->groupFilesUnseen;
		$total_files 					= $Current_Group->groupFiles;
		$new_list_posts 				= $Current_Group->groupListPostsUnseen;
		$total_list_posts 				= $Current_Group->groupListPosts;
		
		//Group Followers
		$Current_Group->getGroupFollowStatus($logged_in_user, $group_id);	
		$logged_in_user_following		= $Current_Group->loggedInUserCurrentlyFollowing;	
		$group_followers_array			= $Current_Group->groupFollowersArray;	
		$group_followers_count			= $Current_Group->groupFollowersCount;	
		
		?>	
		
		<!-- GROUP -->
		<div class = "group">	

			<!-- GROUP: Header -->
			<a href="groups_posts.php?group_id=<?php echo base64_encode($group_id); ?>">			
				<div class = "group-header">
					<p class = "group-header-name-text"> <?php echo $group_name; ?> </p>
				</div>
			</a>	
			
			<!-- GROUP: Body -->
			<div class = "group-body ">
				
				<!-- Group Members: Active Group Users -->
				<div id = "js-group-list-active-members_<?php echo $group_id; ?>" class = "js-group-list-active-members group-member-body">
					<a href="groups_posts.php?group_id=<?php echo base64_encode($group_id); ?>">
						<?php 
						for($i = 0; $i < $active_group_users_count; $i++) {
							$current_group_member = $active_group_users_array[$i];
							$current_member_image = getUserImage($active_group_users_array[$i]);	
						?>	
							<!-- Individual Member -->
							<div class = " group-body-member-holder">	
								<p class = "hide"> <?php echo $current_group_member; ?> </p>
								<img src="<?php echo USER_IMAGE . $current_member_image; ?>" alt="" class = "group-member-image-small">		
							</div>
						<?php }	?>
					</a>	
				</div>
				
				<!-- Group Members: Pending Group Users -->
				<div id = "js-group-list-pending-members_<?php echo $group_id; ?>" class = "js-group-list-pending-members group-member-body hide">
					<a href="groups_posts.php?group_id=<?php echo base64_encode($group_id); ?>">
						<?php 
						for($j = 0; $j < $pending_group_users_count; $j++) {
							$current_group_member = $pending_group_users_array[$j];
							$current_member_image = getUserImage($pending_group_users_array[$j]);
						?>	
							<!-- Individual Member -->
							<div class = " group-body-member-holder">	
								<p class = "hide"> <?php echo $current_group_member; ?> </p>
								<img src="<?php echo USER_IMAGE . $current_member_image; ?>" alt="" class = "group-member-image-small">		
							</div>
						<?php }	?>	
					</a>	
				</div>
							
				<!-- Group Members: Info -->
				<div class = "group-member-footer">
					<div class = "group-member-header-active-holder">
						<p id = "js-group-list-show-active-members_<?php echo $group_id; ?>" class = "js-group-list-show-active-members group-active-pending-members-text  bold"> Active Members (<?php echo $active_group_users_count; ?>) </p>				
					</div>		
					<div class = "group-member-header-pending-holder">							
						<p id = "js-group-list-show-pending-members_<?php echo $group_id; ?>" class = "js-group-list-show-pending-members group-active-pending-members-text "> Pending (<?php echo $pending_group_users_count; ?>) </p>
					</div>					
				</div>		
			
			</div>	
			
			<!-- GROUP: Footer -->
			<div class = "group-footer ">

				<!-- Discussion -->				
				<div class = "group-footer-activity-holder">
					<a href="groups_discussion.php?group_id=<?php echo base64_encode($group_id); ?>">
						<div class = "group-footer-image-holder">
							<?php if($group_new_discussion > 0) { ?>
								<img src="<?php echo ICON; ?>discussion\discussion_red.png" alt="" class = "group-footer-activity-discussion-icon">
							<?php } else { ?>
								<img src="<?php echo ICON; ?>discussion\discussion_gray.png" alt="" class = "group-footer-activity-discussion-icon">							
							<?php } ?>
						</div>	
						<div class = "group-footer-text-holder">
							<p class = "group-footer-activity-count-text"> <?php echo $group_new_discussion; ?></p>
						</div>	
					</a>	
				</div>	

				<!-- Files -->				
				<div class = "group-footer-activity-holder">
					<a href="groups_files.php?group_id=<?php echo base64_encode($group_id); ?>">
						<div class = "group-footer-image-holder">
							<?php if($new_files > 0) { ?>
								<img src="<?php echo ICON; ?>files\file_red.png" alt="" class = "group-footer-activity-icon">
							<?php } else { ?>
								<img src="<?php echo ICON; ?>files\file_gray.png" alt="" class = "group-footer-activity-icon">							
							<?php } ?>
						</div>	
						<div class = "group-footer-text-holder">
							<p class = "group-footer-activity-count-text"><?php echo $new_files; ?></p>
						</div>	
					</a>
				</div>	
				
				<!-- Lists -->		
				<div class = "group-footer-activity-holder">
					<a href="groups_lists.php?group_id=<?php echo base64_encode($group_id); ?>">		
						<div class = "group-footer-image-holder">
						
							<?php if($group_new_posts > 0) { ?>
								<img src="<?php echo ICON; ?>lists\lists_red.png" alt="" class = "group-footer-activity-icon">
							<?php } else { ?>
								<img src="<?php echo ICON; ?>lists\lists_gray.png" alt="" class = "group-footer-activity-lists-icon">							
							<?php } ?>	 
							
						</div>	
						<div class = "group-footer-text-holder">
							<p class = "group-footer-activity-count-text"><?php echo $new_list_posts; ?></p>
						</div>	
					</a>
				</div>	
				
				<!-- Posts -->
				<div class = "group-footer-activity-holder">
					<a href="groups_posts.php?group_id=<?php echo base64_encode($group_id); ?>">
						<div class = "group-footer-image-holder">
							
							<?php if($group_new_posts > 0) { ?>
								<img src="<?php echo ICON; ?>posts\posts_red.png" alt="" class = "group-footer-activity-icon">
							<?php } else { ?>
								<img src="<?php echo ICON; ?>posts\posts_gray_dark.png" alt="" class = "group-footer-activity-posts-icon">							
							<?php } ?>
						
						</div>	
						<div class = "group-footer-text-holder">
							<p class = "group-footer-activity-count-text"> <?php echo $group_new_posts; ?></p>
						</div>	
					</a>					
				</div>		

			</div>			
		</div>
	<?php } ?>	

	
	