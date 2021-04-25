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
		<script src="<?php echo CODE_ROOT; ?>../js/tuner.js"></script>
		
    </head>
	
	<body>
	
		<?php include('include_components/tuner/tuner.php') ?>

	
		
		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>			
	
	</body>
</html>





