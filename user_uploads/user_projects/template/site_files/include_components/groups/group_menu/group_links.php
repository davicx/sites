<?php 

if($page_url == "group_posts.php") {
	$posts_selected = "bold"; 
} else {
	$posts_selected = ""; 
}

if($page_url == "group_discussion.php") {
	$discussion_selected = "bold"; 
} else {
	$discussion_selected = ""; 
}

if($page_url == "group_files.php") {
	$files_selected = "bold"; 
} else {
	$files_selected = ""; 
}

if($page_url == "group_lists.php") {
	$lists_selected = "bold"; 
} else {
	$lists_selected = ""; 	
}

/*

$new_posts = $Current_Group->groupWallPostsUnseen;
$total_posts = $Current_Group->groupWallPosts;
$new_files = $Current_Group->groupFilesUnseen;
$total_files = $Current_Group->groupFiles;
$new_discussion = $Current_Group->groupTotalUnseenDiscussion;
$total_discussion = $Current_Group->groupTotalDiscussions;
$new_list_posts = $Current_Group->groupListPostsUnseen;
$total_list_posts = $Current_Group->groupListPosts;
*/

?>

<div class = "group-menu-links">

	<!-- Posts -->	
	<div class = "group-menu-links-row-top">
		<a href="groups_posts.php?group_id=<?php echo base64_encode($group_id); ?>" class = "">
		
			<!-- Image -->
			<div class = "group-menu-links-row-image">
				<img title = "Home Page" src="<?php echo ICON; ?>posts/posts.png" class = "group-menu-posts-icon" alt="">				
			</div>

			<!-- Link -->
			<div class = "group-menu-links-row-link">
				<h4 class= "group-menu-links-page-text <?php echo $posts_selected; ?>"> Posts <?php echo $total_posts; ?> </h4> 
				
				<?php if($new_posts > 0) { ?>
					<h4 class = "group-menu-links-new-activity-text"> (<?php echo $new_posts; ?>)</h4>
				<?php } ?>

			</div>	
		</a>	
	</div>
	
	<!-- Discussion -->	
	<div class = "group-menu-links-row">
		<a href="groups_discussion.php?group_id=<?php echo base64_encode($group_id); ?>" class = "group-menu-links-text">
			
			<!-- Image -->
			<div class = "group-menu-links-row-image">
				<img title = "Home Page" src="<?php echo ICON; ?>discussion/discussion_gray.png" class = "group-menu-posts-icon" alt="">	
			</div>

			<!-- Link -->
			<div class = "group-menu-links-row-link">
				<h4 class= "group-menu-links-page-text <?php echo $discussion_selected; ?>">Discussion <?php echo $total_discussion; ?> </h4> 
				
				<?php if($new_discussion > 0) { ?>
					<h4 class = "group-menu-links-new-activity-text">(<?php echo $new_discussion; ?>)</h4>
				<?php } ?>

			</div>	
		</a>
	</div>
	
	<!-- Files -->	
	<div class = "group-menu-links-row">
		<a href="groups_files.php?group_id=<?php echo base64_encode($group_id); ?>">
		
		<!-- Image -->
		<div class = "group-menu-links-row-image">
			<img title = "Home Page" src="<?php echo ICON; ?>files/file_gray.png" class = "group-menu-posts-icon" alt="">	
		</div>

		<!-- Link -->
		<div class = "group-menu-links-row-link">
			<h4 class= "group-menu-links-page-text <?php echo $files_selected; ?>">Files <?php echo $total_files; ?> </h4> 
			
			<?php if($new_files > 0) { ?>
				<h4 class = "group-menu-links-new-activity-text">(<?php echo $new_files; ?>)</h4>
			<?php } ?>

		</div>
		</a>		
	</div>
	
	<!-- Lists -->	
	<div class = "group-menu-links-row">
		<a href="groups_lists.php?group_id=<?php echo base64_encode($group_id); ?>" class = "group-menu-links-text">
			
			<!-- Image -->
			<div class = "group-menu-links-row-image">
				<img title = "Home Page" src="<?php echo ICON; ?>lists/lists.png" class = "group-menu-posts-icon-list" alt="">	
			</div>

			<!-- Link -->
			<div class = "group-menu-links-row-link">
				<h4 class= "group-menu-links-page-text <?php echo $lists_selected; ?>">Lists <?php echo $total_list_posts; ?>   </h4> 
				
				<?php if($new_list_posts > 0) { ?>
					<h4 class = "group-menu-links-new-activity-text">(<?php echo $new_list_posts; ?>)</h4>
				<?php } ?>

			</div>	
		</a>
	</div>

</div>	
