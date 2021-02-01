<?php
	//Include Page Header 
	require_once('../../functions/page_header.php');
 	
	//Update Page Analytics 
	$page_url = "kite.php";
	updatePageVisit($page_url, $group_id, $logged_in_user);

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
			<?php include_once('include_components/headers/header_shareshare/header.php') ?>
		</header>
			
		<div id = "site-wrapper-responsive">
			
			<div id = "site-wrapper-spacer-groups"> 
				<p> &nbsp </p>
			</div>
			
			
			<!-- SECTION: Wall --> 
			<div id = "wall-full" class = "">
				
				<!-- KITE: Header Area and Board Info -->
				<?php include_once('include_components/boards/create_board.php') ?>
				<?php include_once('include_components/boards/board_list.php') ?>

		 	</div>	
			
		</div>		
	
		
		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>			
	
	</body>
</html>





