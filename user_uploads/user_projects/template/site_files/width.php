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
		<style>
		.one {
			float: left;
			width: 100px;
			border: 1px solid blue;
			min-height: 40px;
			clear: both;
		}
		.two {
			float: left;
			width: 200px;
			border: 1px solid green;
			min-height: 40px;
			clear: both;			
		}
		.three {
			float: left;
			width: 300px;
			border: 1px solid black;
			min-height: 40px;
			clear: both;
		}
		.four {
			float: left;
			width: 400px;
			border: 1px solid red;
			min-height: 40px;
			clear: both;
		}
		.five {
			float: left;
			width: 500px;
			border: 1px solid blue;
			min-height: 40px;
			clear: both;
		}

		</style>
    </head>
	
	<body> 
	
		<!-- SECTION: Header -->
		<header>
			<?php include_once('include_components/headers/header_shareshare/header.php') ?>
		</header>
			
		<div id = "site-wrapper-response">
			
			<div id = "site-wrapper-spacer-groups"> 
				<p> &nbsp </p>
			</div>

			<div class = "one">
				<p> 100 </p>
			</div>	
			<div class = "two">
				<p> 200 </p>
			</div>	
			<div class = "three">
				<p> 300 </p>
			</div>	
			<div class = "four">
				<p> 400 </p>
			</div>	
			<div class = "five">
				<p> 500 </p>
			</div>		
			
		</div>		
		
		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>			
	
	</body>
</html>







