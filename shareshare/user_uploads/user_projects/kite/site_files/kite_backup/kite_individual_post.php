<?php
	//Include Page Header 
	require_once('../../functions/page_header.php');

 	if(isset($_GET["post_id"])) {
		$post_id = $_GET['post_id'];	
	} else {
		header("Location: kite.php");
		die();
	} 
 	
	//Update Page Analytics 
	$page_url = "kite_individual_post.php";
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
		<style>
			#wall-full {background-color: #F1F1F1;}
		</style>
    </head>
	
	<body> 
	
		<!-- SECTION: Header -->
		<header>
			<?php include_once('include_components/headers/header_shareshare/header.php') ?>
		</header>
			
		<div id = "site-wrapper-responsive">
			<p> Individual Post <?php $post_id; ?></p>

		</div>		
	
		
		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>			
	
	</body>
</html>




