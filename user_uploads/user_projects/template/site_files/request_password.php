<?php
//Include Files
require_once('../../functions/includes/constants.inc.php');		
require_once('../../functions/includes/connection.inc.php');
include('../../functions/functions.php');		

//<a href="http://shareshare.co/template/site_files/update_password.php?token=Rzz7tQnGHiWKwjiBZjx8RXFwn0HHmVKJ&useremail=vasquezd@onid.orst.edu"  target="_blank"> Reset Password Link </a>

$site_link_update_password = $site_link . "site_files/update_password.php";
$part_two_link = "http://localhost/sites/template/site_files/update_password.php?token=JU8RVhtwbPcRJ3TRatsqDBKByjwaMnGP&useremail=vasquezd@onid.orst.edu";
echo $site_link;
?>
<!DOCTYPE HTML>
<html>
	<head>
	
		<!-- Meta Tags -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title> Request PW</title>
		
		<!-- Include all JS and CSS Files -->
		<?php include_once('include_components/links_head.php') ?>
	</head>

	<body>

		<div id = "" class = "holder-temp">
		
			<!-- SECTION: Submit Email Request -->				
			<div id = "">
		
				<!-- Part 1: Submit Email Request -->		 
				<div id = "js-request-password">
			
					<!-- Enter Email -->
					<p> Email to send Password Update Too </p>
					<input type="text" name="password-reset-email" id="" class = ""  placeholder="Enter your Email" value = "<?php echo ""; ?>" ><br />

					<!-- Submit -->			
					<input name="" type="submit" id="js-reset-password-submit" class = "button-blue login-form-button" value="Request">		
																				
					<!-- Error 1: Invalid Email Warning -->
					<div id = "js-request-password-invalid-email-warning" class = "hide">
						<p> Please enter a valid email </p>
					</div>	
					
					<!-- Error 2: Empty Email Warning -->
					<div id = "js-request-password-empty-email-warning" class = "hide">
						<p> Please enter an email address  </p>
					</div>
					
					<!-- Hidden Values -->
					<input type="hidden" name=""  id = "js-password-reset-site-link" value = "<?php echo $site_link_update_password; ?>" > 			
				</div>	

				<!-- Part 2: Request Sent -->				
				<div id = "js-request-password-submitted" class = "hide">
					<div id = "js-password-request-submit-message"></div>				
					<p> Return to <a href="../index.php">Login </a></p>
				</div>					

			</div>			
		</div>
		

		<?php /*

			<!-- SECTION: Reset Password Area -->
			<section id = ""  class = "registration-area">

				<!-- Submit Email Request -->				
				<div id = "js-request-password">
			
					<!-- Enter Email -->
					<p> Email to send Password Update Too </p>
					<input type="text" name="password-reset-email" id="" class = "login-form-input"  placeholder="Enter your Email" value = "<?php echo ""; ?>" >
										
					<!-- Enter UserName -->
					<div class = "hide">
						<p> Enter Your Site Username </p>
						<input type="text" name="password-reset-username" id="" class = "login-form-input"  placeholder="Enter your Username" value = "<?php echo ""; ?>" >
					</div>			
					
					<!-- Invalid Email Warning -->
					<div id = "js-request-password-invalid-email-warning" class = "hide">
						<p> Please enter a valid email </p>
					</div>	
					
					<!-- Empty Email Warning -->
					<div id = "js-request-password-empty-email-warning" class = "hide">
						<p> Please enter an email address  </p>
					</div>

					<!-- Submit -->			
					<input name="" type="" id="js-reset-password" class = "button-blue login-form-button" value="Request">		
					
					<!-- Hidden Values -->
					<input type="hidden" name=""  id = "js-password-reset-site-link" value = "<?php echo $site_link; ?>" > 			
				</div>	



			</section>

		</div>
			*/ ?>
		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php') ?>	
		
	</body>
</html>



<?php
/*
//Include Files
require_once('../../functions/includes/constants.inc.php');
include('../../functions/login/logged_in_check.php');			
include('../../functions/functions.php');			
require_once('../../functions/includes/connection.inc.php');

//Get Information if this is responding to an invite 	
if(isset($_GET['token'])) {
	$update_password_key = $_GET['token'];
	//echo $update_password_key . "  ";
} else {
	$update_password_key = "";
	//echo "REDIRECT";
}

if(isset($_GET['useremail'])) {
	$update_password_email = $_GET['useremail'];
	echo $update_password_email . "  ";
} else {
	$update_password_email = "";	
}
//DAVID

//http://localhost/sites/template/site_files/update_password.php?token=jZjB1xSsMsSsW8dJ9dWNmbINb04iAfiw&useremail=Vasquezd@onid.orst.edu
//ERROR http://localhost/sites/template/site_files/update_password.php?token=jZjB1xSsMsSsW8dmbINb04iAfiw&useremail=Vasquezd@onid.orst.edu
?>
<!DOCTYPE HTML>
<html>
	<head>
	
		<!-- Meta Tags -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title> WishList</title>
		
		<!-- Include all JS and CSS Files -->
		<?php include_once('include_components/links_head.php') ?>
	</head>

	<body>
		<?php include_once("../../functions/wishlist_tracking.php") ?>
	
		<!-- SECTION: Header --> 
		<header>
			<?php include 'include_components/headers/header_register.php'; ?>	
		</header>
		
		<div id = "site-wrapper">
		
			<!-- Spacer so content is not hidden behind header -->
			<div id = "site-wrapper-spacer"> 
				<p> &nbsp </p>
			</div>
			
			<!-- SECTION: Reset Password Area -->
			<section id = "js-create-new-password"  class = "registration-area">

				<!-- Password One -->
				<p><b> Enter New Password </b></p>
				<input type="password" name="password-reset-one" id="js-update-password-one" class = "login-form-input"  placeholder="Enter your Password" value = "" >
			
				<!-- Password Two -->
				<p><b> ReEnter Password </b></p>
				<input type="password" name="password-reset-two" id="js-update-password-two" class = "login-form-input"  placeholder="Please Re-enter your Password" value = "" >
				
				<!-- Password Error --> 
				<div id = "js-update-password-error" class = "hide registration-error-holder">
					<p class = "registration-error-message-text"> Your passwords must match and be more then 5 letters. </p>
				</div>	
				
				<!-- Password Submit Error --> 
				<div id = "js-update-password-database-error" class = "hide registration-error-holder">
					<p id = "js-update-password-database-error-message" class = "registration-error-message-text"></p>
				</div>				
				
				<!-- Submit -->			
				<input name="" type="" id="js-update-password" class = "button-blue login-form-button" value="Update Password">		
				
				<!-- Password Reset Outcome -->
				<div id = "" class = "">
				</div>
		
				<!-- Hidden Values -->
				<input type="hidden" name=""  id = "js-update-password-email" value = "<?php echo $update_password_email; ?>" > 			
				<input type="hidden" name=""  id = "js-update-password-key" value = "<?php echo $update_password_key; ?>" > 					

			</section>
			
			<!-- SECTION: Reset Password Success -->
			<section id = "js-create-new-password-success"  class = "hide registration-area">
		
				<h4> Success </h4>				

			</section>			
			
		
		</div>

		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php') ?>	
		
	</body>
</html>
*/ ?>
	