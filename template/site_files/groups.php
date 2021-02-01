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
	
		<!-- SECTION: Header -->
		<header class = "">
			<?php include_once('include_components/headers/header.php') ?>
		</header>
		
		<!-- Spacer --> 
		<div id = "site-wrapper-spacer">
			<p> &nbsp </p>
		</div>		
			
		
		<!-- SECTION: Groups -->	
		<div id = "site-wrapper">
			<?php include_once('include_components/groups/create_group.php') ?>
			
			<div id = "group-holder">		
				<?php include_once('include_components/groups/group_list.php') ?>
			</div>
			
		</div>

		<div id = "temp-notice-holder">
			<div id = "requests">			
				<?php include('include_components/logout/logout.php'); ?>
				<p> Requests </p>	
				<?php include('include_components/requests/pending_requests.php'); ?>
			</div>
			<div id = "notifications">			
				<p class = "temp-notifications"> Notifications </p>
				<?php include('include_components/notifications/clear_all_notifications.php'); ?><hr />
				<?php include('include_components/notifications/notifications.php'); ?>
				<?php include('include_components/notifications/notifications.php'); ?>
			</div>
		</div>

		
		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>			
	
	</body>
</html>



