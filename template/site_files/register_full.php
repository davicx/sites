<?php

//Include Files
require_once('../../functions/includes/constants.inc.php');		
require_once('../../functions/includes/connection.inc.php');
require_once('../../functions/functions.php');

//Preset Values: To fill in form so if user makes a mistake it will save current items
$username_post  = "";
$full_name_post = "";
$email_post     = "";
$password_post  = "";
$user_name_error_message = "";
$invite_message = "";
$list_type = "wishlist";

//Email 1 is required 0 is not
$is_email_required = 0;

if ($is_email_required == 1) {
	$error_message_empty_fields = "Please fill in all 4 fields."; 
} else {
	$error_message_empty_fields = "Please fill in a username, password and your name."; 
}
 
//Get Information if this is responding to an invite 	
if(isset($_GET['hash'])) {
	$hash = $_GET['hash'];
	$responding_to_request_message = "";

} else {
	$hash = 0;
	$responding_to_request_message = "hide";	
}	

if(isset($_GET['useremail'])) {
	$new_user_email = $_GET['useremail'];			
} else {
	$new_user_email = 0;
}	

if(isset($_GET['groupid'])) {
	$group_id = $_GET['groupid'];		
	
	} else {
	$group_id = 0;
}

if(isset($_GET['listid'])) {
	$list_id = $_GET['listid'];		
} else {
	$list_id = 0;
}

if(isset($_GET['friendname'])) {
	$invite_from = $_GET['friendname'];	
} else {
	$invite_from = 0;
}

if(isset($_GET['friendinvitename'])) {
	$new_friend_invite_from = $_GET['friendinvitename'];	
} else {
	$new_friend_invite_from = 0;
}

//Get Message to Display 
if($group_id != 0) {
	$invite_message = "This will allow your to join the group your friend invited you to! Are you already a member? Click here to respond to their invite.";	
} else if ($list_id != 0) {
	$invite_message = "This will allow your to join the List your friend invited you to! Are you already a member? Click here to respond to their invite.";	
} else if ($new_friend_invite_from != 0) {
	$invite_message = "This will allow your to join the site from your new friend invite! Are you already a member? Click here to respond to their invite.";	
} else {
	$invite_message = "This will allow your to join the site from your new invite! Are you already a member? Click here.";	
}

?>
<!DOCTYPE HTML>
<html>
	<head>
	
		<!-- Meta Tags -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title> ShareShare Register </title>
		
		<!-- Include all JS and CSS Files -->
		<?php include_once('include_components/links_head.php') ?>
	</head>

	<body class = "index">
	
		<!-- SECTION: Header --> 
		<header>
			<?php include_once('include_components/headers/header_index_shareshare/header_register.php') ?>	
		</header>		

		<!-- Site Wrapper -->
		<div id = "index-site-wrapper">
		
			<!-- SECTION: Registration Area -->
			<section id = "js-registration-area"  class = "registration-area">		
				
				<!-- Logo -->
				<div id = "register-area-logo " class = "">
					<h1 class = "login-logo-heading"> ShareShare </h1>
					<p class = "login-logo-subheading hide"> Share what you love </p>
				</div>
				
				<!-- Message if User is Responding to Request -->
				<div id = "registration-invite-message-area" class = "<?php echo $responding_to_request_message; ?>  ">
					<p><?php echo $invite_message; ?> </p>
				</div>		
				
				<!-- Register Form --> 			
				<form id="" class = "register-form" method="post" action="">
					
					<!-- User Name -->
					<input type="text" name="register-user-name" id="js-registration-user-name" class = "login-field-top login-text" value = "<?php echo $username_post; ?>" placeholder="Username">
					
					<!-- Full Name -->
					<input type="text" name="register-full-name" id="js-registration-full-name" class = "login-field-middle login-text" placeholder="Full Name"   value = "<?php echo $full_name_post; ?>" >				

					<!-- Email -->					
					<input type="text" name="register-email" id="js-registration-email" class = "login-field-middle login-text" placeholder="Email" value = "<?php echo $email_post; ?>" >	
						
					<!-- Password -->					
					<input type="password" name="register-password" id="js-registration-password" class = "login-field-bottom login-text" placeholder="Password"   value = "" >	

					<!-- Submit Registration -->
					<input name="register" type="" id="js-register-user" class = "login-button-large register-button " value="Register">					

					<!-- ERROR: -->
					<div id = "js-registration-error-holder" class = "hide registration-error-holder uk-alert uk-alert-danger">
					
						<!-- Type 1 Error: User Name -->
						<p id = "js-registration-user-name-error-output" class = "registration-error-message-text"></p>
						
						<!-- Type 2 Error: Full Name -->					
						<p id = "js-registration-full-name-message-output" class = "registration-error-message-text"></p>

						<!-- Type 3 Error: Email Invalid -->
						<p id = "js-registration-email-message-output" class = "registration-error-message-text"></p>
						
						<!-- Type 4 Error: Email Taken -->
						<p id = "js-registration-email-taken-message-output" class = "registration-error-message-text"></p>				
							
						<!-- Type 5 Error: Password Error  -->					
						<p id = "js-registration-password-message-output" class = "registration-error-message-text"></p>								
						
						<!-- Type 6 Error: Password Error  -->					
						<p id = "js-registration-missing-required-field-message" class = "registration-error-message-text"></p>					
						
						<!-- Type 7 Error: Registration Error Messages (after attempt to register in database) --> 
						<div id = "js-registration-error-message" class = "">
							<!--<p id = "js-registration-error-message-empty-field-text" class = "hide registration-error-message-text"> <?php echo $error_message_empty_fields; ?></p>-->
							<p id = "js-registration-error-message-output" class = "hide registration-error-message-text"> <!-- Set this value with javascript--> </p>
						</div>					
												
					</div>
	 
					<!-- Hidden Values -->
					<input type="hidden" name="registration-hash"  id = "" value = "<?php echo $hash; ?>" > 
					<input type="hidden" name="registration-new-user-email"  id = "" value = "<?php echo $new_user_email; ?>" > 
					<input type="hidden" name="registration-group-id"  id = "" value = "<?php echo $group_id; ?>" > 
					<input type="hidden" name="registration-list-id"  id = "" value = "<?php echo $list_id; ?>" > 
					<input type="hidden" name="registration-invite-from"  id = "" value = "<?php echo $invite_from; ?>" > 
					<input type="hidden" name="new-friend-invite-from"  id = "" value = "<?php echo $new_friend_invite_from; ?>" > 
					<input type="hidden" name="list-type"  id = "" value = "<?php echo $list_type; ?>" > 
					<input type="hidden" name=""  id = "js-email-is-required" value = "<?php echo $is_email_required; ?>" > 
				</form>
				
		
			</section>
		
		<!-- Registration Success -->
		<section id = "js-registration-success" class = "hide registration-success-background-image registration-area-success uk-alert uk-alert-success">
			<h4 class = "register-success-text"> You have been registered! </h4>
			<h4 class = "register-success-text">Please click <a href="../index.php">here </a> to log in! </h4>
		</section>


		</div>
		

		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php') ?>	
		
	</body>
</html>




