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
		<?php /*
		<link rel="stylesheet" href="../css/pool/style.css">		
		<link rel="stylesheet" href="../css/pool/application.css">				
		*/ ?>
		<style>
			body {background-color: #EEECE8; }
			#site-wrapper {background-color: #EEECE8; }
			header {background-color: #EEECE8; }
			.temp {color: #d85a1a;  }
		</style>

		
    </head>
	
	<body> 

		<!-- SECTION: Header -->
		<header>
			<?php //include_once('include_components/headers/header.php') ?>
			<?php //include_once('include_components/headers/header_w.php') ?>
		</header>
		
		
		<div id = "site-wrapper">
			<div id = "site-wrapper-spacer"> 
				<p> &nbsp </p>
			</div>
				
			<!-- SECTION: Menu Area -->
			<div id = "wall-full">
				
				<?php include_once('include_components/posts/new_post.php') ?>			
				
				
			</div>
	
		</div>		
		
		
		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>		
	</body>
</html>























