<?php
//SHOW VARIABLES LIKE 'sql_mode';
//set global sql_mode='';

	//Include Page Header 
	require_once('../../functions/page_header.php');
		
	if(isset($_GET["group_id"])) {
		$group_id = base64_decode($_GET['group_id']);	
	} else {
		header("Location: groups.php");
		die();
	} 
	
	//STEP 1: Group Information
	$Current_Group = new Group($group_id);
	$Current_Group->getGroupUsers($logged_in_user, $group_id);
	$Current_Group->groupCreated($logged_in_user, $group_id);
	$group_name = $Current_Group->groupName;	
	
	//STEP 2: Group Members 
	$active_group_users_array       = $Current_Group->activeGroupUsers;
	$active_group_users_count 		= count($active_group_users_array);
	$pending_group_users_array	 	= $Current_Group->pendingGroupUsers;
	$pending_group_users_count 		= count($pending_group_users_array);			
	$total_group_users_array   		= $Current_Group->totalGroupUsers;	
	$total_group_users_count   		= $Current_Group->totalUsersCount;	
	$total_group_users_status_array = $Current_Group->totalGroupUsersWithStatus;		
	
	//STEP 3: Friends you can Invite
	$Current_Group->getGroupInvitableUsers($logged_in_user, $logged_in_users_friends_array, $total_group_users_array);
	$group_invitable_friends_array       = $Current_Group->GroupInvitableFriendsArray;
	$group_invitable_friends_count       = count($group_invitable_friends_array); 	
	
	//STEP 4: Get Current Folder
	//Folder: Determine which folder is being viewed (I think I don't need this, only parent)
	if(isset($_GET["parent_folder"])) {
		$parent_folder = $_GET["parent_folder"];
	} else {
		$parent_folder = 0;
	}
	if(isset($_GET["current_folder"])) {
		$current_folder = $_GET["current_folder"];
	} else {
		$current_folder = 0;
	}

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
		<header class = "">
			<?php include_once('include_components/headers/header.php') ?>
		</header>
		
		<!-- Spacer --> 
		<div id = "site-wrapper-spacer">
			<p> &nbsp </p>
		</div>		
		
		<!-- SECTION -->	
		<div id = "site-wrapper">
			
			<div id = "group" class = "">
				<?php include_once('include_components/groups/group_info.php'); ?>
			</div>
		
			<div id = "posts">
				
				<!-- FILE SYSTEM: Breadcrumb -->			
				<div id = "breadcrumb">
					<?php include('include_components/files/file_breadcrumb.php'); ?>			
				</div>	
					
				<!-- <h4> PARENT: <?php echo $parent_folder; ?> </h4> -->
				<!-- FILE SYSTEM: Folder -->
				<div id = "folders" class = "">	
					<?php include('include_components/files/create_folder.php'); ?>	
					<p><b> Folders </b></p>
					<?php include('include_components/files/all_folders.php'); ?>								
				</div>						

				<!-- FILE SYSTEM: Files -->
				<div id = "files">											
					<?php include('include_components/files/all_files.php'); ?>		
				</div>	
				
	
			</div>

			<div id = "actions">
				<?php include_once('include_components/files/file_actions.php'); ?>
			</div>

		</div>

		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>	
		<script>		

		</script>		
	</body>
</html>



<?php 
	/*

	$Current_Group->getGroupActivity($logged_in_user, $group_id);	
	$group_total_unseen_activity = $Current_Group->totalUnseenActivity;	
	//Posts
	//Chat
	//Files

	<!-- Group Settings -->
	<?php //include_once('include_components/groups/group_settings.php') ?>	

	*/
?>


		
<?php /*
	<!-- FILE SYSTEM: Groups -->
	<div id = "group" class = "">

	</div>
	
	<!-- FILE SYSTEM: File System -->			
	<div id = "posts">

		<!-- FILE SYSTEM: Breadcrumb -->			
		<div id = "breadcrumb">
			<?php include('include_components/files/file_breadcrumb.php'); ?>			
		</div>	
						
		<!-- FILE SYSTEM: Folder -->
		<div id = "folders" class = "">	
			<?php include('include_components/files/create_folder.php'); ?>			
			<?php include('include_components/files/all_folders.php'); ?>								
		</div>						

		<!-- FILE SYSTEM: Files -->
		<div id = "files">						
			<?php include('include_components/files/file_upload.php'); ?>		
			<?php include('include_components/files/all_files.php'); ?>		
		</div>				
		
	</div>
	
	<!-- FILE SYSTEM: File Actions -->
	<div id = "actions ">
		<?php include_once('include_components/groups/group_links.php'); ?>
		<?php include_once('include_components/files/file_actions.php'); ?>
	</div>
	*/ ?>

