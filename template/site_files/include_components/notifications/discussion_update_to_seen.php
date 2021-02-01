<?php 

mysqli_query($conn,"UPDATE notifications SET status_unseen = 0 WHERE 
				notification_to = '$logged_in_user' 
				AND group_id = '$group_id' ");	


for($x = 0; $x < $active_group_users_count; $x++) {
	echo  $active_group_users_array[$x] .  " ";
}

?>