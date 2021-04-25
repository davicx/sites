<?php
//Include Files
require_once('../../functions/includes/constants.inc.php');		
require_once('../../functions/includes/connection.inc.php');
include('../../functions/functions.php');		

//PART 1: Set Variables
/*
password_reset_error_key
0 is default
1 means no link was found
2 means the link expired
3 link already used 
4 is success

*/
//API: Get Reset Key 
$password_reset_error_key = 0;
$site_link_error = $site_link . "site_files/request_password.php";

//PART 2: Get all Variables and redirect if there is no token set 
if(isset($_GET['token'])) {
	$update_password_key = $_GET['token'];
} else {
	echo "REDIRECT";
}

if(isset($_GET['useremail'])) {
	$update_password_email = $_GET['useremail'];
} else {
	$update_password_email = "";	
}

//PART 3: Get information from the database for this reset 
$result = mysqli_query($conn,"SELECT * FROM user_login WHERE password_reset_key = '$update_password_key' ");

while($row = mysqli_fetch_array($result)) {	
	$update_password_request_made = $row['password_reset_sent'];
	$update_password_request_used = $row['password_reset_used'];
}

//Error 1: A Link was not found that fits this reset ($reset_link_found_count = 0)
$reset_link_found_count = mysqli_num_rows($result);
if ($reset_link_found_count == 0) {
	$password_reset_error_key = 1;	
}

//Error 2: The link has expired
if($password_reset_error_key != 1) {
	$hours_since_password_update_request = hoursElapsedTimestampNow($time_zone, $update_password_request_made);

	if($hours_since_password_update_request > 24) {
		$password_reset_error_key = 2;
	} 

	//Error 3: The link was already Used 
	if ($update_password_request_used != 0) {
		$password_reset_error_key = 3;	
	}

	//Succes: Link is Valid 
	if ($update_password_request_used == 0 && $hours_since_password_update_request < 24) {
		$password_reset_error_key = 4;	
	}
}


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
	
		<?php 
			//Outcome 1: Link was not found
			if($password_reset_error_key == 1) { ?>
				<p> link not found, click <a href="<?php echo $site_link_error;?>"> here </a> to resend an invite </p>
			<?php
			
			//Outcome 2: Link Expired
			} else if ($password_reset_error_key == 2) { ?>
				<p> link expired, click <a href="<?php echo $site_link_error;?>"> here </a> to resend an invite  </p>
			<?php
		
			//Outcome 3: Link Already Used			
			} else if ($password_reset_error_key == 3) { ?>
				<p> link used, click <a href="<?php echo $site_link_error;?>"> here </a> to resend an invite  </p>
			<?php
			
			//Outcome 4: Success You Can Update Password			
			} else if ($password_reset_error_key == 4) { ?>
				
				<!-- UPDATE PASSWORD: Form -->
				<div id = "js-create-new-password"  class = "registration-area">

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
					
					<!-- Submit -->			
					<input name="" type="submit" id="js-update-password" class = "button-blue login-form-button" value="Update Password">		
				
					<!-- Hidden Values -->
					<input type="hidden" name=""  id = "js-update-password-email" value = "<?php echo $update_password_email; ?>" > 			
					<input type="hidden" name=""  id = "js-update-password-key" value = "<?php echo $update_password_key; ?>" > 					

				</div>		
				
				<!-- UPDATE PASSWORD: Outcome -->
				
				<!-- Success -->		
				<div id = "js-create-new-password-success"  class = "hide registration-area">
					<h4> Your Password has been Reset Click <a href="../index.php">here </a></p> to login </h4>				
				</div>				
			
				<!-- SECTION: Reset Password Success -->

				<!-- Error--> 
				<div id = "js-create-new-password-failure"  class = "hide registration-area">
					<h4> There was an error, click <a href="<?php echo $site_link_error;?>"> here </a> to resend an invite? </h4>			
				</div>	
					
			
			<?php
			
			//Outcome 5: 404 Other Error 				
			} else { ?>
				<p> 404 </p>			
		<?php } ?>


		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php') ?>	
		
	</body>
</html>

	