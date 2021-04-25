<?php
	//Include Page Header 
	require_once('../../functions/page_header.php');
	
	
	/*
		
		$selected_friends 	= $_POST["group_add_users_selected"];	
		$logged_in_user 	= $_POST["logged_in_user"];	
		
		//Step 1: Create New Group Invite
		$Current_Group = new Group($group_id);
	    $Current_Group->addUserExisting($group_id, $selected_friends, $logged_in_user);	
		
		//Step 2: Create Notifications

		$notification_type 		= "group_invite";
		$notification_message 	= "invited you to join a group";
		$notification_link	 	= "#";

		$Current_Notification = new Notifications($logged_in_user);	
		$Current_Notification->createGroupNotification($master_site, $notification_from, $notification_to_array, $notification_message, $notification_link, $notification_type, $group_id);
		
	*/
	$notification_from 		= $logged_in_user;
	$notification_to  = "matt";
	$group_id = 204;
	
	//Group Check
	$result_notification = mysqli_query($conn, "SELECT * FROM notifications WHERE notification_from = '$notification_from' 
		AND notification_to = '$notification_to' 
		AND notification_type = 'group_invite' 
		AND group_id = '$group_id' 
		AND notification_deleted = '0'");	
	$notification_found_count = mysqli_num_rows($result_notification);
	echo $notification_found_count;
	
	
	
	
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
		<?php //include_once('include_components/links_head.php') ?>
		<!-- CSS -->
		<!--<link id="data-uikit-theme" rel="stylesheet" href="../css/external_css/uikit.gradient.css">-->
		<link rel="stylesheet" href="../css/external_css/normalize.css">
		<link rel="stylesheet" href="../css/style.css">		

		<!-- Javascript: Vendor -->
		<script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
		<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
		<script src="<?php echo CODE_ROOT; ?>../js/vendor/modernizr-2.8.3.min.js"></script>
		<script src="<?php echo CODE_ROOT; ?>../js/vendor/uikit.min.js"></script>	
		<script src="<?php echo CODE_ROOT; ?>../js/vendor/dropzone.js"></script>	

		<!-- Javascript: Site Specific -->
		<script src="<?php echo CODE_ROOT; ?>../js/register.js"></script>
		<script src="<?php echo CODE_ROOT; ?>../js/main.js"></script>
		<script src="<?php echo CODE_ROOT; ?>../js/groups.js"></script>
		<script src="<?php echo CODE_ROOT; ?>../js/user.js"></script>		
		<script src="<?php echo CODE_ROOT; ?>../js/dates.js"></script>	
		
		<!-- CSS -->
		<link type="text/css" rel="stylesheet" media="all" href="../css/pool/reset-min.css" />
		<link type="text/css" rel="stylesheet" media="all" href="../css/pool/fonts-context-min.css" />
		<link type="text/css" rel="stylesheet" media="all" href="../css/pool/grids-min.css" />
		<link type="text/css" rel="stylesheet" media="all" href="../css/pool/application.css" />
		<link type="text/css" rel="stylesheet" media="all" href="../css/pool/style.css" />	
		
		<!-- Date Picker -->
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<link rel="stylesheet" href="/resources/demos/style.css">
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		
		
		<style>
		#temp-holder {width: 800px; border: 0px solid blue; float: right; margin-right: 200px;}
		</style>
    </head>
	
	<body> 

		<?php //include_once('include_components/header/header_w.php'); ?>
		<?php //include_once('include_components/menu/menu_w.php'); ?>
		
		<div id = "temp-holder">
			
			<?php //include('include_components/groups/create_group.php'); ?>
			<?php //include('include_components/requests/pending_requests.php'); ?>
	
			
		
			<!-- SECTION 1: Dates -->		

			

			
			
			
			
		
			
			
			<!-- SECTION 2: Logout -->	
			<form id="logoutForm" method="post" class = "" action="">
				<input name="logout" type="submit" id="logout" class = "" value="Log out">
				<input type="hidden" name="logout-user"  id = "" value = "<?php echo $logged_in_user; ?>" value="user"> 
			</form>
			

			<!-- SECTION 3: Friends -->	
			<!-- Logged in User Friends -->
			<div class = "">
				<p> friends  </p>
				<?php	

				for($x = 0; $x < $logged_in_users_friends_count; $x++) {
					$current_friend_name = $logged_in_users_friends_array[$x];
				?>
				<!-- Individual Friend -->
				<div class = "user-container-holder user-container-style">		
					<p class = "user-container"> <?php echo $current_friend_name; ?> </p>
					
					<!-- Friend Status and Action -->
					<?php include('include_components/friends/friend_action.php') ?>
				</div>
				
				<?php } ?>			
			</div>
			<br /><br /><br /><br /><br /><br /><br />
			<hr />
			<!-- All Site Users -->			
			<div id = "tester" class = " holder-temp">
				<p> All Users </p>

				<?php	
				$result_users = mysqli_query($conn,"SELECT * FROM user_login");

				while($row_users = mysqli_fetch_array($result_users)) {		
					$current_friend_name = $row_users['user_name'];	
					echo $current_friend_name;

				?>
				<!-- Individual Friend -->
				<div class = "user-container-holder user-container-style">		
					<p class = "user-container"> <?php echo $current_friend_name; ?> </p>
					
					<!-- Friend Status and Action -->
					<?php include('include_components/friends/friend_action.php') ?>
				</div>
				<?php } ?>			
			</div>

		</div>
		
		
		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>		
	</body>
</html>



















