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

