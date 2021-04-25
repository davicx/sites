<?php
	//Include Page Header 
	require_once('../../functions/page_header_external.php');
 	

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
	


		<!-- MOBILE -->
		<div class = "kite">
			
			<!-- MOBILE: Header -->			
			<div class = "kite-header">
				<?php include('include_components/headers/header.php') ?>		
			</div>	
			
			<!-- MOBILE: Body -->			
			<div class = "kite-body">
				<p> &nbsp </p>
				<p> body </p>
				<p> body </p>
				<p> body </p>

			
			</div>		
			
			<!-- MOBILE: Footer -->			
			<div class = "kite-footer">	
				<?php //include('include_components/kite/footer.php') ?>
			</div>
		</div>	
		
		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>			
	
	</body>
</html>







