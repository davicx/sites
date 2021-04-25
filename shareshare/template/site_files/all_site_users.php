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
		
    </head>
	
	<body> 
		

		<!-- All Site Users -->			
		<div id = "tester" class = " holder-temp">
			<p> All Users </p>

			<?php	
			$result_users = mysqli_query($conn,"SELECT * FROM user_login");

			while($row_users = mysqli_fetch_array($result_users)) {		
				$current_friend_name    = $row_users['user_name'];	
				$current_friend_id      = getUserID($current_friend_name);				
				$friend_status_integer  = getFriendStatus($logged_in_user, $current_friend_name);
				$friend_status          = getFriendStatusDescription($friend_status_integer);
			?>
			
			<!-- Individual Friend -->
			<?php include('include_components/friends/friend_container.php'); ?>	
			
			<?php  } ?>			
		</div>


		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>		
	</body>
</html>



















