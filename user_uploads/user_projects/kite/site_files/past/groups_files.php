<?php
	//Include Page Header 
	require_once('../../functions/page_header.php');
	require_once('../../functions/files.php');	
	
	if(isset($_GET["group_id"])) {
		$group_id = base64_decode($_GET['group_id']);	
	} else {
		header("Location: groups.php");
		die();
	} 
	
	$post_made_to = $group_id;
	
	//Update Page Analytics 
	$page_url = "group_files.php";
	updatePageVisit($page_url, $group_id, $logged_in_user);
	
	//PART 1: Variables 
	
	//Folder: Determine which folder is being viewed (I think I don't need this, only parent)
	if(isset($_GET["current_folder"])) {
		$current_folder = $_GET["current_folder"];
	} else {
		$current_folder = 0;
	}
	
	//Folder: Determine which folder is being viewed (I think I don't need this, only parent)
	if(isset($_GET["parent"])) {
		$parent_folder = $_GET["parent"];
	} else {
		$parent_folder = 0;
	}
	
	//Set Upload Variables 
	$master_site = MASTER_SITE;
	$upload_key = "user_file_uploads";
	$destination = FILE_UPLOAD;	
	$redirect = "groups_files.php?group_id=" . base64_encode($group_id);
	$caption = "yo";
	$post_id = 0;
	
	$notification_message = "shared a file with the group";
	$notification_type = "file_upload";
	$notification_link = "#";
	
	//Update Notifications Table that New Notifications Have Been Seen 
	mysqli_query($conn,"UPDATE notifications SET status_unseen = '0' WHERE 
		notification_to = '$logged_in_user' AND 
		notification_type = 'file_upload' AND 
		group_id = '$group_id'");

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
		<style>
		.drag { border: 1px solid blue; height: 60px; width: 80px; float: left; margin: 6px;}
		.drop { background-color: blue; height: 100px; width: 100px; float: left; margin: 6px;}
		</style>
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
				<?php include_once('include_components/groups/group_menu.php') ?>
				<?php //include('include_components/files/user_actions.php'); ?>	
			</div>
			
			
			<!-- SECTION: Wall --> 
			<div id = "wall" class = "">
				
				
				<!-- SECTION: Normal Upload -->
				<section id = "files" class = "">
						
					<!-- FILE SYSTEM: Breadcrumb and New File -->						
					<div id = "file-actions">
						<?php include('include_components/files/shareshare_user_actions.php'); ?>							
						<?php //include('include_components/files/user_actions.php'); ?>							
					</div>	

					<div id = "files-breadcrumb">
						<?php include('include_components/files/file_breadcrumb.php'); ?>			
					</div>	
										
					<!-- FILE SYSTEM: Header -->						
					<div id = "files-header">
						<div class = "file-header-name ">
							<h4 class = "file-header-text file-header-name-text"> Name </h4>
						</div>					

						<div class = "file-header-modified ">
							<h4 class = "file-header-text file-header-modified-text "> Modified </h4>						
						</div>					

						<div class = "file-header-settings">
							<h4 class = "file-header-text file-header-settings-text"> Settings </h4>						
						</div>		
					</div>
						
					<!-- FILE SYSTEM: Folder -->
					<div id = "folders-area">	
						<?php include('include_components/files/create_folder.php'); ?>			
						<?php include('include_components/files/all_folders.php'); ?>								
					</div>						
					
					<!-- FILE SYSTEM: Files -->
					<div id = "files-area">						
						<?php include('include_components/files/all_files.php'); ?>		
					</div>
					
				</section>	
	
 			</div>			

		</div>		

		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>	
	</body>
</html>


<?php /*
<!--
<p id = "drag_1" class = "js-draggable drag"> Drag 1</p>
<p id = "drag_2" class = "js-draggable drag"> Drag 2</p>
<p id = "drag_3" class = "js-draggable drag"> Drag 3</p>
<p id = "drop_1" class = "js-droppable drop"> Drop 1</p>
<p id = "drop_2" class = "js-droppable drop"> Drop 2</p>
-->
*/ ?>

