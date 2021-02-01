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
		
		<!-- SECTION: Posts -->	
		<div id = "site-wrapper">
			<p> Group ID <?php echo $group_id; ?> </p>
			<p> Discussions </p>
			<?php include('include_components/notifications/new_discussion_count.php'); ?>

			<p> Posts </p>
			<?php include('include_components/notifications/new_file_count.php'); ?>

			<p> Files </p>
			<?php include('include_components/notifications/new_post_count.php'); ?>
			

		</div>

		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>	
		
	</body>
</html>





















