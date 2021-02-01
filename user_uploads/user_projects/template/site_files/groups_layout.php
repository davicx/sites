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
		<div id = "group-holder">
			
			<!-- Groups -->
			<?php for ($x = 0; $x <= 7; $x++) { ?>
			
			<div class = "group-holder">
				<div class = "group">
					<p> group </p>
				</div>
			</div>
			
			<?php } ?>
			
		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>			
	
	</body>
</html>







