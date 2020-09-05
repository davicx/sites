<?php 
$Current_Group->getGroupActivity($logged_in_user, $group_id);
$new_posts = $Current_Group->groupWallPostsUnseen;
$total_posts = $Current_Group->groupWallPosts;
$new_files = $Current_Group->groupFilesUnseen;
$total_files = $Current_Group->groupFiles;
$new_discussion = $Current_Group->groupTotalUnseenDiscussion;
$total_discussion = $Current_Group->groupTotalDiscussions;
$new_list_posts = $Current_Group->groupListPostsUnseen;
$total_list_posts = $Current_Group->groupListPosts;

?>

<!-- GROUP: Header -->
<div class = "group-menu-header"> 
	<div class = "group-header-left"> 
		<p> &nbsp </p>
	</div> 
	<div class = "group-header-middle"> 
		<h4 class = "group-menu-header-text "> <?php echo $group_name; ?> </h4>
	</div> 
	<div class = "group-header-right"> 
		<!-- Open Group Settings -->
		<?php include('include_components/groups/group_settings.php') ?>
		
	</div> 
</div> 


<!-- GROUP: Body -->
<div class = "group-menu-body"> 	

	<!-- Group Page Links -->
	<?php include('include_components/groups/group_menu/group_links.php') ?>
	
	<!-- Group Page Specific -->

	
	<!-- Members -->	
	<?php include('include_components/groups/group_menu/group_members.php') ?>
	
	<!-- Notifications -->
	
			
</div>	
<!-- GROUP: Footer -->					
<div class = "group-menu-footer"> 
	<?php //echo $visiting_friend; ?>

</div>	



	<?php /*
	<!-- Group Header -->
	<div class = "menu-header"> 
		<p class = "group-menu-header-text "> <?php echo $group_name; ?> </p>
	</div>	
	
	<!-- Group Body -->

		

		<!-- Posts -->		
		<div class = "menu-body-group-page-item">
			<div class = "menu-body-group-page-icon-holder"> 					
				<img title = "Home Page" src="<?php echo ICON; ?>posts/posts.png" class = "menu-body-group-page-post-icon" alt="">	
			</div>								
			<div class = "menu-body-group-page-text-holder"> 			
				<p class = "menu-body-group-page-text"> Posts (<?php echo $group_total_unseen_wall_posts; ?>) </p>				
			</div>												
		</div>
		
		<!-- Discussion -->	
		<div class = "menu-body-group-page-item">
			<div class = "menu-body-group-page-icon-holder"> 					
				<img title = "Home Page" src="<?php echo ICON; ?>discussion/discussion_4997E1.png" class = "menu-body-group-page-discussion-icon" alt="">	
			</div>								
			<div class = "menu-body-group-page-text-holder"> 			
				<p class = "menu-body-group-page-text"> Discussion (3) </p>				
			</div>	
		</div>	
		
		<!-- Files -->	
		<div class = "menu-body-group-page-item">						
			<div class = "menu-body-group-page-icon-holder"> 					
				<img title = "Home Page" src="<?php echo ICON; ?>files/files_4997E1.png" class = "menu-body-group-page-file-icon" alt="">	
			</div>								
			<div class = "menu-body-group-page-text-holder"> 			
				<p class = "menu-body-group-page-text"> Files (3) </p>				
			</div>	
		</div>	
		
		<!-- Lists -->	
		<div class = "menu-body-group-page-item">						
			<div class = "menu-body-group-page-icon-holder"> 					
				<img title = "Home Page" src="<?php echo ICON; ?>files/files_4997E1.png" class = "menu-body-group-page-file-icon" alt="">	
			</div>								
			<div class = "menu-body-group-page-text-holder"> 			
				<p class = "menu-body-group-page-text"> Lists (3) </p>				
			</div>	
		</div>	
		
		<!-- Members -->	
		<div class = "menu-body-group-page-item">
			<div class = "menu-body-group-page-icon-holder"> 					
				<img title = "Home Page" src="<?php echo ICON; ?>user/user_4997E1.png" class = "menu-body-group-page-members-icon" alt="">	
			</div>								
			<div class = "menu-body-group-page-text-holder"> 		
				<p class = "menu-body-group-page-text"> Members (<?php echo $active_group_users_count; ?>) </p>				
			</div>	
		</div>	
									
		<!-- Settings -->	
		<div class = "menu-body-group-page-item">						
			<div class = "menu-body-group-page-icon-holder"> 					
				<img title = "Home Page" src="<?php echo ICON; ?>settings/settings_4997E1.png" class = "menu-body-group-page-settings-icon" alt="">	
			</div>								
			<div class = "menu-body-group-page-text-holder"> 			
				<p class = "menu-body-group-page-text"> Settings  </p>				
			</div>	
		</div>
		
	</div>	

	<!-- Group Footer -->					
	<div class = "menu-footer"> 
		<div class = "menu-header"> 
			<p class = "group-menu-header-text "> Notifications </p>
		</div>	
		
	</div>	
	

		*/ ?>