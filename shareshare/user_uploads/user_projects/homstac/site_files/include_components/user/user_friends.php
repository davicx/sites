<!-- FRIENDS -->
<?php	

for($x = 0; $x < $current_user_friends_count; $x++) {
	$current_friend_name = $current_user_friends_array[$x];
	
	$current_friend_id= getUserID($current_friend_name);
?>
	
	<!-- Individual Friend -->
	<?php include('include_components/friends/friend_container.php'); ?>	


<?php } ?>	