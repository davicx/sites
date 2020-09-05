<?php
	//Include Page Header 
	require_once('../../functions/page_header.php');
	//echo checkUserActive(1);
	//echo $post_to;
	//?friend_id=2
	//?group_id=MjIw
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
		
			body {background-color: #EEECE8;}
			#site-wrapper {background-color: #EEECE8;}
			body {background-color: #EEECE8;}
			table { width:50%; border: 1px solid black; }
			tr, td, th { border: 1px solid black; }
			#temp-320 {float: left; overflow: auto; width: 340px; border: 1px solid black; background-color: white; min-height: 400px;}
			
		</style>
    </head>
	
	<body> 

		<!-- SECTION: Header -->
		<header>
			<?php //include_once('include_components/headers/header_shareshare/header.php') ?>
		</header>
		
		
		<div id = "site-wrapper">
			<div id = "site-wrapper-spacer"> 
				<p> &nbsp </p>
			</div>
			
			
			<!-- SECTION: Menu Area -->
			<div id = "menu" class = "hide">
				<p> menu </p>
			</div>
			
			
			<!-- SECTION: Wall --> 
			<div id = "wall" class = "">
			
				<?php //include_once('include_components/posts/posts_shareshare/new_post.php') ?>
				<?php //include_once('include_components/posts/posts_shareshare/display_posts/display_posts.php') ?>
				<?php //include_once('include_components/requests/pending_requests.php') ?>

 			</div>			

		</div>		
		
		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>		
	</body>
</html>




