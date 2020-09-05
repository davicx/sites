<?php

//Include Files
require_once('../../functions/includes/constants.inc.php');		
require_once('../../functions/includes/connection.inc.php');
include('../../functions/functions.php');		

?>
<!DOCTYPE HTML>
<html>
	<head>
	
		<!-- Meta Tags -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title> Request Username </title>
		
		<!-- Include all JS and CSS Files -->
		<?php include_once('include_components/links_head.php') ?>
		<style>
		.temp-holder { margin: 10%;}
		</style>
	</head>

	<body>

		<!-- Part 1: Submit Email Request -->				
		<div id = "js-request-username" class = "temp-holder">
			
			<!-- Enter Email -->
			<p> Please enter your email and we will send you your username if we find your email is in the system! </p>
			<input type="text" name="" id="js-request-username-input" class = ""  placeholder="Enter your Email" value = "<?php echo ""; ?>" >

			<!-- Submit -->			
			<input name="" type="submit" id="js-request-username-submit" class = "" value="Request">			
			
			<!-- Error 1: Invalid Email Warning -->
			<div id = "js-request-username-invalid-email" class = "hide">
				<p class = ""> Please enter a valid email </p>
			</div>			
			
			<!-- Error 1: User Name Not Found -->
			<div id = "js-request-username-not-found" class = "hide">
				<p class = ""> We didn't find your Username, are you sure you typed your email correctly? </p>
			</div>
			
			

		</div>	

		<!-- Part 2: Request Sent -->				
		<div id = "js-request-username-submitted-success" class = "hide">
			<p> Your Email has been sent, please allow a couple minutes for delivery. If you dont see it check your junk mail or let us know! </p>
			<p> Return to <a href="../index.php">Login </a></p>
		</div>	
					



		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php') ?>	
		
	</body>
</html>

	