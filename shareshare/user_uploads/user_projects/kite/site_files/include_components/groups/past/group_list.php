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
		/*
		$group_total_files				= $Current_Group->groupWallPosts;	
		$group_new_files				= $Current_Group->groupWallPostsUnseen;	
		$group_total_lists				= $Current_Group->groupWallPosts;	
		$group_new_lists				= $Current_Group->groupWallPostsUnseen;	
		*/
		
		//Group Followers
		$Current_Group->getGroupFollowStatus($logged_in_user, $group_id);	
		$logged_in_user_following		= $Current_Group->loggedInUserCurrentlyFollowing;	
		$group_followers_array			= $Current_Group->groupFollowersArray;	
		$group_followers_count			= $Current_Group->groupFollowersCount;	
		
		?>	
		
		<!-- GROUP -->
		<div class = "group">	

			<!-- GROUP: Header -->
			<a href="groups_posts.php?group_id_int=<?php echo $group_id;?>&group_id=<?php echo base64_encode($group_id); ?>">			
				<div class = "group-header">
					<p class = "group-header-name-text"> <?php echo $group_id; ?> <?php echo $group_name; ?> </p>
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
				<a href="groups_posts.php?group_id=<?php echo base64_encode($group_id); ?>">
					<p>  </p>
				
				</a>					
			</div>			
		</div>
			
	<?php } ?>
			<?php /*

				<div class = "group-member-body">
					<?php 
					$user_display_count = 0;
				
					//Loop Through Array of Users 
					foreach($total_group_users_status_array as $i => $i_value) {
						$current_group_member = $i;
						$current_group_member_status = $i_value;
						$group_pending_style_class = "";
						$current_member_image = getUserImage($current_group_member);
						if($current_group_member_status == 0) {
							$group_pending_style_class = "group-member-pending";
						} 
						//echo "User=" . $i . ", Status=" . $i_value . "<br />";
						$user_display_count = $user_display_count + 1;
						if($user_display_count >7) { break; } 
					?> 
					<!-- Individual Member -->
					<div class = " group-body-member-holder <?php echo $group_pending_style_class; ?>">	
						<p class = "hide"> <?php echo $current_group_member; ?> </p>
						<img src="<?php echo USER_IMAGE . $current_member_image; ?>" alt="" class = "group-member-image-small">		
					</div>
					<?php } ?>
				</div>								
							

			<!-- GROUP: Body -->
			<div class = "group-body ">
				
				<?php 
				$user_display_count = 0;
			
				//Loop Through Array of Users 
				foreach($total_group_users_status_array as $i => $i_value) {
					$current_group_member = $i;
					$current_group_member_status = $i_value;
					$group_pending_style_class = "";
					$current_member_image = getUserImage($current_group_member);
					if($current_group_member_status == 0) {
						$group_pending_style_class = "group-member-pending";
					} 
					//echo "User=" . $i . ", Status=" . $i_value . "<br />";
					$user_display_count = $user_display_count + 1;
					if($user_display_count >7) { break; } 
				?> 
				<!-- Individual Member -->
				<div class = " group-body-member-holder <?php echo $group_pending_style_class; ?>">	
					<p class = "hide"> <?php echo $current_group_member; ?> </p>
					<img src="<?php echo USER_IMAGE . $current_member_image; ?>" alt="" class = "group-member-image-small">		
				</div>
				
				<?php } ?>	
			</div>	
						
			<!-- GROUP: Footer -->
			<div class = "group-footer ">	
				<p class = "group-footer-text"> Posts <span class = "group-footer-alert-text">(3)</span> | Discussion | Files <span class = "group-footer-alert-text">(5)</span>| Lists </p>
			</div>	
			*/ ?>
>
			
			
			<?php /*
				<br />
			
			
			<!-- Group Members -->
			<div class = "group-body-members ">
			
				<?php 
				$user_display_count = 0;
			
				//Loop Through Array of Users 
				foreach($total_group_users_status_array as $i => $i_value) {
					$current_group_member = $i;
					$current_group_member_status = $i_value;
					$group_pending_style_class = "";
					if($current_group_member_status == 0) {
						$group_pending_style_class = "group-member-pending";
					} 
					//echo "User=" . $i . ", Status=" . $i_value . "<br />";
					$user_display_count = $user_display_count + 1;
					if($user_display_count >7) { break; } 
				?> 
				<!-- Individual Member -->
				<div class = "hide group-body-member-holder <?php echo $group_pending_style_class; ?>">
					<p> <?php echo $current_group_member; ?> </p>
				</div>
				
				<?php } ?>
			</div>
			*/ ?>
		
			

					
	
					
					<!-- Group Member Image Holder -->
					<?php 
					
			/*		
	
				
				
					for ($x = 0; $x <=2; $x++) {
						echo $x . "<br />";
					} 
				//$current_member_image = getUserImage($logged_in_user);
					<img src="<?php echo USER_IMAGE . "10.jpg"; ?>" alt="" class = "group-member-image-small">
					<div class = "group-body-member-holder">
						<img src="<?php echo USER_IMAGE . "10.jpg"; ?>" alt="" class = "group-member-image-small">
					</div>	
					<div class = "group-body-member-holder">
						<img src="<?php echo USER_IMAGE . "12.jpg"; ?>" alt="" class = "group-member-image-small">
					</div>	
					<div class = "group-body-member-holder">
						<img src="<?php echo USER_IMAGE . "luna.jpg"; ?>" alt="" class = "group-member-image-small">
					</div>	
					<div class = "group-body-member-holder">
						<img src="<?php echo USER_IMAGE . "default.jpg"; ?>" alt="" class = "group-member-image-small">
					</div>						
				
					//for($x = 0; $x < $active_group_users_count; $x++) {
					//	$current_member_image = getUserImage($active_group_users_array[$x]);
					//}	
			

						

				</div>				
				<div class = "group-body-members">
					<div class = "group-body-member-holder">
						<img src="<?php echo USER_IMAGE . "12.jpg"; ?>" alt="" class = "group-member-image-small">
					</div>	
					<div class = "group-body-member-holder">
						<img src="<?php echo USER_IMAGE . "luna.jpg"; ?>" alt="" class = "group-member-image-small">
					</div>						
				</div>			

			</div>
				
			<?php /*
			<!-- Group Header -->
			<div class = "group-header">
				<h4 class = "group-header-text"> <?php echo $group_name; ?> </h4>

			</div>

		

			<!-- Group Footer -->			
			<div class = "group-footer">
				<p> group </p>

			</div>
			

							<!-- Group Member Image Holder -->
					<?php 
					for($x = 0; $x < $active_group_users_count; $x++) {
						$current_member_image = getUserImage($active_group_users_array[$x]);
					?>
					<div class = "group-body-member-holder">
						<img src="<?php echo USER_IMAGE . $current_member_image; ?>" alt="" class = "group-member-image-small">
					</div>
					<?php } ?>
	<p class = "menu-body-group-page-text"> Active Members (<?php echo $active_group_users_count; ?>) </p>				
<p class = "menu-body-group-page-text"> Active Members <?php print_r($active_group_users_array); ?> </p>				

<p class = "menu-body-group-page-text"> Pending Members (<?php echo $pending_group_users_count; ?>) </p>				
<p class = "menu-body-group-page-text"> Pending Members <?php print_r($pending_group_users_array); ?> </p>		
	
		<div class = "hide group">
		
			<!-- Group Information -->
			<p><b><?php echo $group_id. " "; ?></b> <a href="groups_individual.php?group_id=<?php echo base64_encode($group_id); ?>"><?php echo $group_name; ?></a></p>
			<p><a href="groups_posts.php?group_id=<?php echo base64_encode($group_id); ?>">Posts</a></p>
			<p><a href="groups_discussion.php?group_id=<?php echo base64_encode($group_id); ?>">Discuss</a></p>
			<p><a href="groups_files.php?group_id=<?php echo base64_encode($group_id); ?>">Files</a></p>
			<p><a href="groups_lists.php?group_id=<?php echo base64_encode($group_id); ?>">Lists</a></p>
			
			<!-- USERS -->
			<?php include('include_components/groups/group_users.php') ?>
			<hr />
			<p> Total Discussion: <?php echo $group_total_discussion; ?></p>
			<p><b>New Discussion: <?php echo $group_new_discussion; ?></b></p>			
			
			<!-- POSTS -->
			<hr />
			<p> Total Posts: <?php echo $group_total_posts; ?></p>
			<p><b>New Posts: <?php echo $group_new_posts; ?></b></p>
 	
			<!-- FOLLOWING -->
			<?php //include('include_components/groups/group_followers.php') ?>	
		
		</div>
		
		*/ ?>

 

 
 
 
 