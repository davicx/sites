<?php
	
	//Include Page Header 
	require_once('../../functions/page_header.php');
	
?>


<!DOCTYPE html>
<html>
    <head>
		
		<!-- Meta Tags -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">		
	    <meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="" />
		<title> My Files </title>
		
		<!-- Include all JS and CSS Files -->
		<?php include_once('include_components/links_head.php') ?>

    </head>
	
	<body> 
		<p> groups </p>
		<?php include_once('include_components/logout/logout.php'); ?>	
		<?php 
			//Redirect if User is Logged In 
			if(isset($_SESSION['authenticated'])){
				echo "logged in";
			} else {
				echo "NOT logged in";
			}

		?>
		
		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>			
	
	</body>
</html>


		<!-- SECTION: Header -->
		<header class = "">
			<?php include_once('include_components/headers/header.php') ?>
		</header>
		
		<!-- Spacer --> 
		<div id = "site-wrapper-spacer">
			<p> &nbsp </p>
		</div>		
			
			<?php /*		
		<!-- SECTION: Groups -->	
		<div id = "site-wrapper">
	 
			<div class = "grid-container" >
				<?php //include_once('include_components/groups/group_list.php') ?>
				
				<!-- Individual Group -->
				<div id = "js-group_<?php echo $group_id; ?>" class = "group">
					<p> temp </p>
				</div>
				<div id = "js-group_<?php echo $group_id; ?>" class = "group">
					<p> temp </p>
				</div>
				<div id = "js-group_<?php echo $group_id; ?>" class = "group">
					<p> temp </p>
				</div>				
			<?php /*
				<div id = "temp">
					<p> temp </p>
				</div>
				?>
				
			</div>
 
			<div id = "groups" class ="hide">
				<?php include_once('include_components/groups/create_group.php') ?>
				<?php include_once('include_components/groups/group_list.php') ?>
			</div>

		</div>
			*/ ?>
<?php 
/*
			
			<!-- Requests and Notifications -->
			<div id = "notices" class ="hide">
			
				<!-- Header -->
				<div id = "" class = "notification-header">
					<p id = "js-show-notifications" class = "notice-header-selected-text">Notifications</p>
					<p id = "js-show-requests" class = "notice-header-text">Requests</p>
					<?php include_once('include_components/logout/logout.php') ?>
				</div>		

				<!-- Body -->
				<div id = ""  class = "notification-body">
					<div id = "js-notification-area" class = "">
						<?php //include('include_components/notifications/clear_all_notifications.php'); ?><hr />
						<?php //include('include_components/notifications/notification_list.php'); ?>
					</div>
					
					<div id = "js-request-area" class  = "hide">
						<?php //include('include_components/requests/requests.php'); ?>
					</div>
				</div>

			</div>

*/
?>
