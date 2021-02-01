<?php 		
	/*
	Logged in User *This is you (1)
	Pending Request: Cancel (2) *sent by you 	
	Pending Request: Accept or Decline (3) *sent by them  	
	Already Friends (4)
	Not Friends (5)
	*/	
?>
<!-- ALL USERS -->
<?php	
	$result_users = mysqli_query($conn,"SELECT * FROM user_login WHERE account_deleted = '0'");
	while($row_users = mysqli_fetch_array($result_users)) {
		$current_friend_name    = $row_users['user_name'];	
		$current_friend_id      = getUserID($current_friend_name);	
?>
	
	<!-- Individual Friend -->
	<?php include('include_components/friends/friend_container.php'); ?>	

<?php } ?>	

