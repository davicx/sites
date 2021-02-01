<?php
	//Include Page Header 
	require_once('../../functions/page_header.php');
 	
	//Update Page Analytics 
	$page_url = "groups.php";
	updatePageVisit($page_url, $group_id, $logged_in_user);
	
	//STEP 1: Get the last time user has clicked this icon 		
	$sql = "SELECT last_click FROM user_analytics WHERE user_name = '$logged_in_user' 
		AND icon_id = 'js-notification-header-seen'";

	$result_header_notifications = $conn->query($sql) or die(mysqli_error());	
	$last_click = "";
	 
	while($row_header_notifications = mysqli_fetch_array($result_header_notifications)) {
		$last_click = $row_header_notifications['last_click'];
	} 		
		
	//STEP 2: Get New Header Notification Count 	
	$result_notifications_header = mysqli_query($conn,"SELECT * FROM notifications WHERE notification_to = '$logged_in_user' 
		AND from_logged_in_user = 0 
		AND notification_time >= '$last_click'");	
		
	$total_header_unclicked_notifications = $result_notifications_header->num_rows;

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
	
		<!-- SECTION: Header -->
		<header>
			<?php include_once('include_components/headers/header_shareshare/header.php') ?>
		</header>
			
		<div id = "site-wrapper-response">
			
			<div id = "site-wrapper-spacer-groups"> 
				<p> &nbsp </p>
			</div>

			
			<!-- SECTION: Wall --> 
			<div id = "wall-full" class = "">
			
				<div class = "group-grid">

					<!-- Create Group -->
					<?php include_once('include_components/groups/create_group.php') ?>		
					
					<!-- Group List -->
					<?php include_once('include_components/groups/group_list.php') ?>		
					
				</div>
				
 			</div>			

		</div>		
		
		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>			
	
	</body>
</html>







