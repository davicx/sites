<?php
	//Include Page Header 
	require_once('../../functions/page_header.php');
		
	$logged_in_user = "vasquezd";
	$logged_in_user_id = getUserID($logged_in_user);
	$Current_User = new User($logged_in_user);
	$Current_User->getUserInfo($logged_in_user);		
	$Current_User->getFriendList($logged_in_user);		
	$logged_in_users_friends_array = $Current_User->friendListUserNames;
	$logged_in_users_friends_count = count($logged_in_users_friends_array);
 	
	echo $Current_User->fullUserName;
	echo "<br />";
	print_r($logged_in_users_friends_array);
	//echo registerUser($user_name, $first_name, $last_name, $email, $pword);
	
	
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
	
		
		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>			
	
	</body>
</html>







