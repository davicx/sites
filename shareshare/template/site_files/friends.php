<?php
	//Include Page Header 
	require_once('../../functions/page_header.php');
		
	//Redirect if You are visiting your own page but it is including you as a friend ID 
	if($friend_id == $logged_in_user_id){
		header("Location: friends.php");	
	} 
	//http://localhost/sites/template/site_files/friends.php?friend_id=3
?>
<!DOCTYPE html>
<html>
    <head>
		
		<!-- Meta Tags -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">		
	    <meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="" />
		<title> My Files </title>
		
		<!-- Include all JS and CSS Files -->
		<?php include_once('include_components/links_head.php') ?>

    </head>
	
	<body> 
	
		<!-- SECTION: Header -->
		<header>
			<?php include_once('include_components/headers/header.php') ?>
		</header>
		
		<!-- Spacer --> 
		<div id = "site-wrapper-spacer">
			<p> &nbsp </p>
		</div>		
		

		
		<?php		
		$profile_user_image     = $Visiting_User->userImage;
		$profile_first_name     = $Visiting_User->firstName;
		$profile_last_name      = $Visiting_User->lastName;		
		?>
		
				
		<!-- FRIENDS: Loop through my Friends -->
		<?php	
	
			$visiting_user_friends_array = $Visiting_User->friendListUserNames;
			$visiting_user_friends_count = count($visiting_user_friends_array);		
		
			for($x = 0; $x < $visiting_user_friends_count; $x++) {
				$current_friend_name = $visiting_user_friends_array[$x];
				$current_friend_id= getUserID($current_friend_name);
				echo $current_friend_name . " <br />";
			}  
			 
		?>
		<!-- FRIENDS: All Site Users -->
		<?php include_once('include_components/user/all_users.php') ?>



		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>			
	
	</body>
</html>







