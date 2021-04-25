<?php
	//Include Page Header 
	require_once('../../functions/page_header.php');
	
	if(isset($_GET["group_id"])) {
		$group_id = base64_decode($_GET['group_id']);	
	} else {
		header("Location: groups.php");
		die();
	} 
	
	$post_made_to = $group_id;
	
	//Update Page Analytics 
	$page_url = "group_posts.php";
	updatePageVisit($page_url, $group_id, $logged_in_user);

	//Update Notifications Table that New Notifications Have Been Seen 
	/*
	mysqli_query($conn,"UPDATE notifications SET status_unseen = '0' WHERE 
		notification_to = '$logged_in_user' AND 
		(notification_type = 'new_post_photo' OR 
		notification_type = 'new_post_video' OR 
		notification_type = 'new_post_article' OR 
		notification_type = 'new_post_text' OR 
		notification_type = 'new_post_file') AND 
		group_id = '$group_id'");	
	*/	
	$Current_Group = new Group($group_id);
	$Current_Group->getGroupUsers($logged_in_user, $group_id);
	$Current_Group->groupCreated($logged_in_user, $group_id);
	$group_name = $Current_Group->groupName;	
	$active_group_users_array       = $Current_Group->activeGroupUsers;
	$active_group_users_count 		= count($active_group_users_array);
	$pending_group_users_array	 	= $Current_Group->pendingGroupUsers;
	$pending_group_users_count 		= count($pending_group_users_array);			

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
			<div id = "wall-no-border" class = "">

				<?php include('include_components/posts/posts_shareshare/new_post.php') ?>
				<?php include('include_components/posts/posts_shareshare/display_posts/display_posts.php') ?>

				<?php //include_once('include_components/requests/pending_requests.php') ?>

 			</div>			

		</div>		

		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>		
	</body>
</html>







