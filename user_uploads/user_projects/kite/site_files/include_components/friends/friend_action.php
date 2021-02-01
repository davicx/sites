<?php
//Decline button-user-friend-decline
//button-user-friend-accept
//Accept button-discussion
	$current_user = $logged_in_user;
	$current_friend_id = getUserID($current_friend_name);
	//cleanFriendTable($current_user, $current_friend_name); 
	$current_friend_status = getFriendStatus($current_user, $current_friend_name);
	//echo $current_friend_status;
	
	//Output All Friend Actions 	
	if($current_friend_status == 1) { ?> 
	
		<!-- STATUS 1: Logged in User (1) -->
		<div id = "" class = "button-user-friend-size button-user-friend-accept">
			<p class = ""> You </p>
		</div>

	<?php } else if ($current_friend_status == 2) { ?>
	
		<!-- STATUS 2: Pending Request: Cancel (2)  -->
		<div id = "js-cancel-friend-request_<?php echo $current_friend_id; ?>"  class = "js-cancel-friend-request button-user-friend-decline button-user-friend-size-tall">
			<p class = "button-cancel-text"> Cancel </p>
			<p class = "button-cancel-text-bottom ">  Request </p>
		</div>
		
		<!-- Hidden -->
		<div id = "js-add-friend_<?php echo $current_friend_id; ?>"  class = "js-add-friend hide button-user-friend-accept button-user-friend-size">
			<p class = "temp-user-text"> Add </p>
		</div>	
		
	<?php } else if ($current_friend_status == 3) { ?> 
	
		<!-- STATUS 3: Pending Request: Accept or Decline (3)-->
		<div id = "js-accept-friend-request_<?php echo $current_friend_id; ?>"  class = "js-accept-friend-request button-user-friend-accept button-user-friend-size-top">
			<p class = "temp-user-text"> Accept </p>
		</div>		
		<div id = "js-decline-friend-request_<?php echo $current_friend_id; ?>"  class = "js-decline-friend-request button-user-friend-decline button-user-friend-size-bottom">
			<p class = "button-decline-text">  Decline </p>
		</div>

		<!-- Outcome 1: Accepted Friend Request -->
		<div id = "js-remove-friend_<?php echo $current_friend_id; ?>"  class = "js-remove-friend hide button-user-friend-decline button-user-friend-size">
			<p class = "button-decline-text"> Remove  </p>
		</div>	

		<!-- Outcome 2: Declined Friend Request -->
		<div id = "js-add-friend_<?php echo $current_friend_id; ?>"  class = "js-add-friend hide button-user-friend-accept button-user-friend-size">
			<p class = "temp-user-text"> Add </p>
		</div>	

	
	<?php } else if ($current_friend_status == 4) { ?>

		<!-- STATUS 4: Already Friends (4) -->
		<div id = "js-remove-friend_<?php echo $current_friend_id; ?>"  class = "js-remove-friend button-user-friend-decline button-user-friend-size">
			<p class = "button-decline-text">  Remove </p>
		</div>	

		<!-- Outcome 1: Declined Friend Request -->
		<div id = "js-add-friend_<?php echo $current_friend_id; ?>"  class = "js-add-friend hide button-user-friend-accept button-user-friend-size">
			<p class = "temp-user-text"> Add </p>
		</div>	
		
		<!-- Outcome 2: Cancel Request  -->
		<div id = "js-cancel-friend-request_<?php echo $current_friend_id; ?>"  class = "js-cancel-friend-request hide button-user-friend-decline button-user-friend-size-tall">
			<p class = "button-cancel-text"> Cancel </p>
			<p class = "button-cancel-text-bottom ">  Request </p>
		</div>	

	<?php } else if ($current_friend_status == 5) { ?>
	
		<!-- STATUS 5: Not Friends (5)-->
		<div id = "js-add-friend_<?php echo $current_friend_id; ?>"  class = "js-add-friend button-user-friend-accept button-user-friend-size">
			<p class = "temp-user-text">  Add </p>
		</div>
		
		<!-- Outcome 2: Cancel Request  -->
		<div id = "js-cancel-friend-request_<?php echo $current_friend_id; ?>"  class = "js-cancel-friend-request hide button-user-friend-decline button-user-friend-size-tall">
			<p class = "button-cancel-text"> Cancel </p>
			<p class = "button-cancel-text-bottom ">  Request </p>
		</div>	
	
	<?php } else {
		//This is you or an error 
	}
	/*
	Logged in User *This is you (1)
	Pending Request: Cancel (2) *sent by you 	
	Pending Request: Accept or Decline (3) *sent by them  	
	Already Friends (4)
	Not Friends (5)
	*/	
?>
<!-- Hidden Values -->
<input type="hidden" name="logged-in-user"  id = "" value = "<?php echo $logged_in_user; ?>"> 		
<input type="hidden" name="master-site"  id = "" value = "<?php echo $master_site; ?>"> 		



