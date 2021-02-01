<?php
	//PART 1: Require Files
	require_once('../functions/includes/constants.inc.php');	
	require_once(CODE_ROOT . 'functions/includes/session_timeout_index.inc.php');
	require_once(CODE_ROOT . 'functions/includes/connection.inc.php');		

	//PART 2: Login Section 
	
	//Handle Errors
	$error = '';
	$login_error_display = "hide";
	$attempted_login_name = "";
	
	//Login Button 
	if (isset($_POST['login'])) {
		$username = trim($_POST['username']);
		$password = trim($_POST['password']);
		$_SESSION['varname'] = $username;
		$redirect = "site_files/index.php";
		require_once(CODE_ROOT . 'functions/includes/notifications.inc.php');
		require_once(CODE_ROOT . 'functions/includes/authenticate.inc.php');
		
		//Error Logging In so Display Error Area 
		if(!empty($error)) {
			$attempted_login_name = trim($_POST['username']);
			$login_error_display = "";		
		}
	} 
	
	//Redirect if User is Logged In 
	if(isset($_SESSION['authenticated'])){
		header("Location: site_files/shareshare.php");
		echo "logged in";
	} else {
		echo "NOT logged in";
	}

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
		
		<!-- CSS -->
		<link rel="stylesheet" href="css/external_css/normalize.css">
		<link id="data-uikit-theme" rel="stylesheet" href="css/uikit.gradient.css">	
		<link rel="stylesheet" href="css/style.css">	
	
		<script>
		//checkMobileDevice();
		</script>
		
		<!-- Javascript -->
		<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="../js/vendor/modernizr-2.8.3.min.js"></script>
		<script src="../js/vendor/uikit.min.js"></script>

    </head>
	
	<body>
		
		
		<!-- SECTION: Login -->
		<form id = "login-form" class="temp-login" method="post" action="">
				
			<!-- Login Inputs: Username and Password -->
			<input type="text" placeholder="Username" name="username" id="username" value = "<?php echo $attempted_login_name; ?>" class =""><br />
			<input type="password" placeholder="Password" name="password" id="password" class =""><br />	

			<!-- Error Message (hidden) -->
			<div class = "<?php echo $login_error_display; ?> login-error-message-holder uk-alert uk-alert-danger">
				<p class = "login-error-message-text"> It appears your username or password was entered incorrectly. Would you like to</p>
				<p class = "login-error-message-text"> <a href="site_files/request_password.php" class = "login-error-message-link-text">Reset your password</a></p>
				<p class = "login-error-message-text"> or </p>
				<p class = "login-error-message-text"><a href="site_files/request_username.php" class = "login-error-message-link-text">Request your username </a></p>
			</div>
								
			<!-- Submit Button -->	
			<button type="submit" name = "login" id="login-btn" class="">Log In</button>		
			
		</form>

		<!-- Include all JS Files -->
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>
        <script src="../js/mobile.js"></script>
	</body>
</html>














