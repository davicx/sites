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
		$redirect = "site_files/groups.php";
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
		header("Location: site_files/groups.php");
		//echo "logged in";
	} else { 
		//echo "NOT logged in";
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
		<title> Login </title>
		
		<!-- CSS -->
		<link rel="stylesheet" href="css/vendor/normalize.css">
		<link id="data-uikit-theme" rel="stylesheet" href="css/vendor/uikit.gradient.css">	
		<link rel="stylesheet" href="css/style.css">	
 
		<!-- Javascript -->
		<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="../js/vendor/modernizr-2.8.3.min.js"></script>
		<script src="../js/vendor/uikit.min.js"></script>

    </head>
		
		<body id = "index-page">
			
			<!-- HEADER: Login Header -->
			<header>
			

			</header>	
			
			<!-- BODY: Login Page Body -->
			<div id = "index-body">		
			
				<!-- SECTION: Login -->
				<section id = "login-area">

					<!-- Logo -->
					<div id = "login-area-logo">
						<h1 class = "login-logo-heading logo"> ShareShare </h1>
						<p class = "login-logo-subheading hide"> Share what you love </p>
					</div>			
				
					<!-- Login -->
					<form id = "" class="" method="post" action="">

						<!-- Login Inputs: Username and Password -->
						<div id = "">
							
							<input type="text" placeholder="Username" name="username" id="username" class ="" value = "<?php echo $attempted_login_name; ?>"> 
							<input type="password" placeholder="Password" name="password" id="password" class ="">	
							<button type="submit" name = "login" id="login-btn" class="">Log In</button>							
						
						</div>	
											
						<!-- Error Message (hidden) -->
						<div class = "<?php echo $login_error_display; ?>  ">
							<p class = "login-error-message-text"> It appears your username or password was entered incorrectly. Would you like to</p>
							<p class = "login-error-message-text"> <a href="site_files/request_password.php">Reset your password</a></p>
							<p class = "login-error-message-text"> or </p>
							<p class = "login-error-message-text"><a href="site_files/request_username.php">Request your username </a></p>
						</div>

					</form>
			

				<section>
			</div>
	
		<!-- Include all JS Files -->
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>
        <script src="../js/mobile.js"></script>	

	</body>
</html>


<?php
/*
		<!-- Site Wrapper -->
		<div id = "index-site-wrapper" class = "">			
			
			<!-- SECTION: Login -->
			<section id = "" class = "login-area">
			
				<!-- Logo -->
				<div id = "login-area-logo" class = "">
					<h1 class = "login-logo-heading"> ShareShare </h1>
					<p class = "login-logo-subheading hide"> Share what you love </p>
				</div>			
			
				<!-- Login -->
				<form id = "" class="" method="post" action="">

					<!-- Login Inputs: Username and Password -->
					<div id = "login-area-input-form">
						
						<input type="text" placeholder="Username" name="username" id="username" class ="login-field-index-top login-text" value = "<?php echo $attempted_login_name; ?>"> 
						<input type="password" placeholder="Password" name="password" id="password" class ="login-field-index-bottom  login-text">	
			
					</div>	
										
					<!-- Submit Button -->	
					<button type="submit" name = "login" id="login-btn" class="login-button-large main-login-button-position main-login-button-size ">Log In</button>		
					
					<!-- Error Message (hidden) -->
					<div class = "<?php echo $login_error_display; ?> login-error-message-holder uk-alert uk-alert-danger">
						<p class = "login-error-message-text"> It appears your username or password was entered incorrectly. Would you like to</p>
						<p class = "login-error-message-text"> <a href="site_files/request_password.php" class = "login-error-message-link-text">Reset your password</a></p>
						<p class = "login-error-message-text"> or </p>
						<p class = "login-error-message-text"><a href="site_files/request_username.php" class = "login-error-message-link-text">Request your username </a></p>
					</div>

				</form>
				
			</section>	
 	
		</div>

*/

 ?>

<?php 
/*
				<div id = "login-area">
					
					<!-- Logo -->
					<h1 id = "logo-logo-text">  </h1>
			
					<!-- Login Form -->
					<form id = "" class="" method="post" action="">		
						
						<!-- Login Inputs -->
						<input type="text" placeholder="Username" name="username" id="username" class ="login-username-input  login-text" value = "<?php echo $attempted_login_name; ?>"> 
						<input type="password" placeholder="Password" name="password" id="password" class ="login-password-input login-text">	
															
						<!-- Submit Button -->	
						<button type="submit" name = "login" id="login-btn" class="login-button">Log In</button>		
						
						<!-- Error: Handle Login Errors -->
					
					</form>
			
				</div>	
				
				
				<form id = "" class="" method="post" action="">		

					<!-- Login Inputs -->
					<input type="text" placeholder="Username" name="username" id="username" class ="login-username-input  login-text" value = "<?php echo $attempted_login_name; ?>"> 
					<input type="password" placeholder="Password" name="password" id="password" class ="login-password-input login-text">	
														
					<!-- Submit Button -->	
					<button type="submit" name = "login" id="login-btn" class="login-button">Log In</button>		
					
					<!-- Error: Handle Login Errors -->
					<?php 
						if(isset($_SESSION['authenticated'])){
							echo "logged in";
						} else {
							echo "NOT logged in";
						}
					?>
				</form>
				
*/
?>



				<?php /*
				<div id = "js-desktop" class = "header">
					
					<!-- Logo -->
					<div id = "header-index-page-logo-holder">
						<img title = "Home Page" src="../images/icons/logo/cloud.png" id = "desktop-cloud-logo-image" class = "hide" alt="">
					</div>
					
					<!-- Icons -->
					<div id = "header-index-page-icon-holder">
						<a href="http://localhost/sites/template/site_files/register.php" id="" class="header-login-button header-index-button "><p class = "login-button-text">Register </p></a>
						<a href="http://localhost/sites/template/index.php" id="" class="header-login-button header-index-button "><p class = "login-button-text">Sign In </p></a>	
					</div>

				</div>	


				<!-- HEADER: Mobile Header -->
				<div id = "js-mobile" class = "header hide">
					
					<!-- Logo -->
					<div id = "header-index-page-logo-holder">
						<img title = "Home Page" src="../images/icons/logo/cloud.png" id = "desktop-cloud-logo-image" class = "" alt="">
					</div>
					
					<!-- Icons -->
					<div id = "header-index-page-icon-holder">
						<a href="site_files/register.php" id="" class="header-login-button header-index-button "><p class = "login-button-text">Register </p></a>
						<a href="index.php" id="" class="header-login-button header-index-button "><p class = "login-button-text">Sign In </p></a>	
					</div>
					
				</div>	
				*/ ?>

