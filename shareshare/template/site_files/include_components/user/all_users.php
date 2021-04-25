<!-- ALL USERS -->
<?php	
	$result_users = mysqli_query($conn,"SELECT * FROM user_login WHERE account_deleted = '0' ORDER BY user_id DESC; ");
	
	while($row_users = mysqli_fetch_array($result_users)) {
		$current_friend_name    = $row_users['user_name'];	
		$current_friend_id      = getUserID($current_friend_name);		
		
		//Individual Friend Container 
		include('include_components/friends/friend_container.php');

} ?>	

