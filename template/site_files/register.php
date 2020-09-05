<?php
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
		<title> Register </title>
		
		<!-- Include all JS and CSS Files -->
		<?php include_once('include_components/links_head.php') ?>

    </head>
		
		<body id = "index-page">
			
			<!-- HEADER: Login Header -->
			<!-- HEADER: Login Header -->
			<header>
				<?php include_once('include_components/headers/header_index_page.php') ?>	
			</header>	
			
			<!-- BODY: Login Page Body -->
			<div id = "index-body" class = "">		
				<div id = "login-area">
					
					<!-- Logo -->
					<h1 id = "logo-logo-text"> ShareShare </h1>
			
					<!-- Register Form --> 			
					<form id="" class = "register-form" method="post" action="">
						
						<!-- User Name -->
						<input type="text" name="register-user-name" id="js-registration-user-name" class = "js-registration-field registration-field-top login-text" value = "<?php echo $username_post; ?>" placeholder="Username">
						
						<!-- Full Name -->
						<input type="text" name="register-full-name" id="js-registration-full-name" class = "js-registration-field registration-field-middle login-text" placeholder="Full Name"   value = "<?php echo $full_name_post; ?>" >				

						<!-- Email -->					
						<input type="text" name="register-email" id="js-registration-email" class = "js-registration-field registration-field-middle login-text" placeholder="Email" value = "" >	
							
						<!-- Password -->					
						<input type="password" name="register-password" id="js-registration-password" class = "js-registration-field registration-field-bottom login-text" placeholder="Password"   value = "" >	

						<!-- Submit Registration -->
						<button type="button" id="js-register-user" name="register" class = "login-button-large register-button" value="Register">Register</button> 
								
						<!--<input name="register" type="" id="js-register-user" class = "login-button-large register-button " value="Register">	-->				
						
						<div id = "js-registration-error-holder" class = "hide">
							<div id = "js-registration-errors"></div>
						</div>

					</form>

				</div>
			</div>
	
		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php') ?>	
	</body>
</html>










