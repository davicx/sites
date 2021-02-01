<?php
	//Include Page Header 
	require_once('../../functions/page_header.php');
		
	if(isset($_GET["group_id"])) {
		$group_id_encoded = ($_GET['group_id']);	
		$group_id = base64_decode($_GET['group_id']);	
	} else {
		header("Location: groups.php");
		die();
	} 	
	
	if(isset($_GET["list_id"])) {
		$list_id = $_GET['list_id'];	
	} else {
		$list_id = 0;
	} 	
	
	$post_made_to = $list_id;		
	
	//Update Page Analytics 
	$page_url = "group_lists.php";
	updatePageVisit($page_url, $group_id, $logged_in_user);

	//Update Notifications Table that New Notifications Have Been Seen 
	mysqli_query($conn,"UPDATE notifications SET status_unseen = '0' WHERE 
		notification_to = '$logged_in_user' AND 
		(notification_type = 'new_post_photo' OR 
		notification_type = 'new_post_video' OR 
		notification_type = 'new_post_article' OR 
		notification_type = 'new_post_text' OR 
		notification_type = 'new_post_file') AND 
		group_id = '$group_id'");	

	
	$Current_Group = new Group($group_id);
	$Current_Group->getGroupUsers($logged_in_user, $group_id);
	$Current_Group->groupCreated($logged_in_user, $group_id);
	$group_name = $Current_Group->groupName;	
	$active_group_users_array       = $Current_Group->activeGroupUsers;
	$active_group_users_count 		= count($active_group_users_array);
	$pending_group_users_array	 	= $Current_Group->pendingGroupUsers;
	$pending_group_users_count 		= count($pending_group_users_array);			
	$list_type = "normal"; 

?>

<!DOCTYPE html>
<html>
    <head>
		
		<!-- Meta Tags -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">		
	    <meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="" />
		<title> Template </title>
		
		<!-- Include all JS and CSS Files -->
		<?php include_once('include_components/links_head.php') ?>
    </head>
	
	<body> 
	
		<!-- SECTION: Header -->
		<header>
			<?php include_once('include_components/headers/header_shareshare/header.php') ?>
		</header>
		
		<!-- MOBILE: Header -->
		<?php include('include_components/headers/header_shareshare/mobile_header.php') ?>	
		
		<div id = "site-wrapper">
			<div id = "site-wrapper-spacer"> 
				<p> &nbsp </p>
			</div>
			
			
			<!-- SECTION: Menu Area -->
			<div id = "menu" class = "">
				<?php include('include_components/groups/group_menu.php') ?>
			</div>			
			
			<!-- SECTION: Wall --> 
			<div id = "wall" class = "">
				
				<!-- LIST HEADER: List Information Area -->
				<div id = "list-header">
					<?php include('include_components/lists/list_action.php') ?>
				</div>
				

				<!-- LISTS: All Lists -->
				<?php if($list_id == 0) { 
					include('include_components/lists/all_lists.php');
				} 	
				?>
					
				<!-- LISTS: All List Items (A list is selected) -->
				<?php 
				if($list_id != 0) {		
					include('include_components/lists/list_post/display_posts/display_lists.php');				
				}
				?>

	
 			</div>			
		</div>		

		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>		
	</body>
</html>







<?php /*
<!-- List Info -->
<h4> Current List Name </h4> 
<?php include('include_components/lists/display_current_list.php') ?>	<hr />


<!-- New Post to a List -->
<h4> New List Post </h4>
<?php include('include_components/lists/list_post/new_list_post.php') ?><hr />	

<!-- Show Current List Items -->
<h4> Current List Items </h4> 
*/ ?>
<?php //include('include_components/lists/list_post/display_posts/display_posts.php') ?>	


<?php /*
<!-- Allow Ability to Make a Post to a List if List is Selected 
<?php if($list_id != 0) { ?>

<!-- New Post to a List -->
<h4> New List Post </h4>
<?php include('include_components/lists/list_post/new_list_post.php') ?><hr />	

<!-- Show Current List Info -->
<h4> Current List Name </h4> 
<?php include('include_components/lists/display_current_list.php') ?>	<hr />

<!-- Show Current List Items -->
<h4> Current List Items </h4> 
<?php include('include_components/lists/list_post/display_posts/display_posts.php') ?>	<hr />


<?php }  */ ?>				

<?php /*
				<!-- LISTS: All Lists -->
				<?php if($list_id == 0) { ?>
					
					<!-- New List -->
					<a href="#new-list" class = "" data-uk-modal> 
						<p class = "blue-one"> New List </p>
						<?php include('include_components/lists/new_list.php') ?>
					</a>	

					<!-- All Lists --> 
					<div id = "lists" class = "">
						<?php include('include_components/lists/all_lists.php') ?>
					</div>					
				<?php } ?>		
					
				<!-- LISTS: All List Items -->
				<?php if($list_id != 0) { ?>

					<!-- View Lists -->
					<a href="groups_lists.php?group_id=<?php echo $group_id_encoded; ?>"> View Lists </a>
				
					<!-- List Info -->
					<?php include('include_components/lists/display_current_list.php') ?>	<hr />
					
					<!-- New Post to a List -->
					<h4> New List Post </h4>
					<?php include('include_components/lists/list_post/new_list_post.php') ?><hr />	
				
					<!-- Show Current List Items -->
					<h4> Current List Items </h4> 
					<?php include('include_components/lists/list_post/display_posts/display_posts.php') ?>			

				<?php } ?>	

				*/ ?>