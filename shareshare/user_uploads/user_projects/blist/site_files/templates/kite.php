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
		
		
		<div id = "site-wrapper">
			<div id = "site-wrapper-spacer"> 
				<p> &nbsp </p>
			</div>
				
			<!-- SECTION: Menu Area -->
			<div id = "wall-full" class = "hide">
				<?php if($currently_on_friend_page ==0) { include_once('include_components/groups/create_board.php'); } ?>
				<?php include_once('include_components/groups/board_list.php'); ?>	
			</div>
	
	

		</div>		
		


			
		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>		
	</body>
</html>























