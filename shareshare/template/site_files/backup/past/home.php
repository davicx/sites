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
		<title> Ventacity | Always Healthy </title>
		
		<!-- Include all JS and CSS Files -->
		<?php include_once('include_components/links_head.php') ?>

<!-- TEMP -->
<link rel="stylesheet" href="../css/temp.css">		
<!-- TEMP -->
    </head>
	
	<body id = "temp"> 
	
		<!-- SECTION: Header -->
		<header class = "hide">
			<?php include_once('include_components/headers/header.php') ?>
		</header>
		
		<!-- SECTION: Output -->		
		<?php include_once('include_components/user/user_profile.php') ?>

		
		
		
		<!-- SECTION: Testing -->
		<?php include_once('include_components/temp/testing.php') ?>

	
		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>			
	
	</body>
</html>







