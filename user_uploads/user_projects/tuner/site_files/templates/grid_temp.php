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
		<header>
			<?php include_once('include_components/headers/header.php') ?>
		</header>
		<br /><br /><br /><br /><br />
		
		<?php include_once('include_components/posts/display_posts/posts.php') ?>
		
		
		
		<!-- SECTION: Posts -->
		<div class="uk-grid hide">
			
			<!-- Post -->
			<div class="uk-width-medium-1-2 uk-width-large-1-3 border-blue ">
				<div class = "post">
					<p> post </p>
				</div>
			</div>

			<!-- Post -->			
			<div class="uk-width-medium-1-2 uk-width-large-1-3 border-blue ">
				<div class = "post">
					<p> post </p>
				</div>			
			</div>
			
			<!-- Post -->			
			<div class="uk-width-medium-1-2 uk-width-large-1-3 border-blue ">
				<div class = "post">
					<p> post </p>
				</div>		
			</div>		
			
			<!-- Post -->
			<div class="uk-width-medium-1-2 uk-width-large-1-3 border-blue ">
				<div class = "post">
					<p> post </p>
				</div>
			</div>

			<!-- Post -->			
			<div class="uk-width-medium-1-2 uk-width-large-1-3 border-blue ">
				<div class = "post">
					<p> post </p>
				</div>			
			</div>

			
		</div>
	

			
		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>		
	</body>
</html>























