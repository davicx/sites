<?php 

	//STEP 2: Get Total New Discussions 
	$total_new_disccusion_count = 0;
	$discussion_from_array = array();
	$discussion_message = "";
	$discussion_from_count = 0; 
	
	/*
	
	//LIVE 
	$result_discussion_count = mysqli_query($conn,"SELECT * FROM posts WHERE 
		post_type = 'discussion' 
		AND post_status = 1
		AND post_to = '$group_id'
		AND group_id = '$group_id'
		AND created >= '$group_last_visit' LIMIT 100 ");	
	*/
		
	//ONID
	$result_discussion_count = mysqli_query($conn,"SELECT * FROM posts WHERE 
		post_type = 'discussion' 
		AND post_status = 1
		AND group_id = '$group_id'
		AND post_to = '$group_id'
		AND post_from != '$logged_in_user' 
		AND updated >= '$group_last_visit' ");		
	
	while($row_discussion_count = mysqli_fetch_array($result_discussion_count)) {
		$discussion_from = $row_discussion_count['post_from'];
		$updated = $row_discussion_count['updated'];
		$created = $row_discussion_count['created'];
		array_push($discussion_from_array, $discussion_from);		
		$discussion_from_array = array_unique($discussion_from_array);

		$total_new_disccusion_count = $total_new_disccusion_count + 1;	
	}		
	
	//STEP 3: Create the message about who is chatting 
	if($total_new_disccusion_count > 0) {
		
		//Remove Logged in User and Reset Array Index 
		//$position = array_search($logged_in_user, $discussion_from_array);
		//unset($discussion_from_array[$position]);
		$discussion_from_array = array_values($discussion_from_array);			
		$discussion_from_count = count($discussion_from_array);
	
		//One Person Chatting
		if($discussion_from_count == 1) {
			$discussion_message = $discussion_from_array[0] . " added a discussion";
		
		//Two People Chatting 	
		} else if ($discussion_from_count == 2) {
			$discussion_message = "There are new discussions from " . getUserFirstName($discussion_from_array[0]) . " and " . getUserFirstName($discussion_from_array[1]);

		//Three People Chatting	
		} else if ($discussion_from_count == 3) {
			$discussion_message = "There are new discussions from " . getUserFirstName($discussion_from_array[0]) . ", " . getUserFirstName($discussion_from_array[1]) . " and " . getUserFirstName($discussion_from_array[2]);

		//More then Three People Chatting 	
		} else if ($discussion_from_count > 3) {
			$discussion_message = "There are new discussions from " . getUserFirstName($discussion_from_array[0]) . " and " . $discussion_from_count . " others";	
		} else {
			$discussion_message = "";
		}
	}

	?>
	
 	<div class  = "">
		<p class = "no-margin"> <b>Total Discussions:</b> <?php echo $total_new_disccusion_count; ?></p>
		<p class = "no-margin"> <b>New Discussion:</b> <?php echo $discussion_from_count; ?></p>
		<!--<p class = "no-margin"> <b>Message:</b> <?php echo $discussion_message; ?> </p>
		<p class = "no-margin"> <b>Last Visit:</b> <?php echo $group_last_visit; ?> </p>-->
	</div>	
	
	
	
	
<?php 
	/*
 	<div class  = "">
		<p class = "hide"> Matt, Becca and Kristen are chatting </p>
		<p class = "hide"> Matt, Becca and 3 others are chatting </p>
		<p class = "no-margin"> New Discussions: (<b><?php echo $total_new_disccusion_count; ?></b>) </p>
		<p class = "no-margin"> Discussion Message Count: <?php echo $discussion_from_count; ?></p>
		<p class = "no-margin"> <?php echo $discussion_message; ?> </p>
		<p class = "no-margin"> Current User: <?php echo $logged_in_user; ?> </p>
	</div>	
		
		<p> created: <?php echo $group_last_visit; ?></p>
		
		<?php 
		//One User
		//Two Users
		//More then Two Users 
		$discussion_from_count = count($discussion_from_array);		
		?>
		
		
		
		<?php for($i = 0; $i < $discussion_from_count; $i++) {?>
			<p class = "no-margin"> <?php echo $discussion_from_array[$i]; ?> </p>				
		<?php }?>  
	
		$result_discussion_count = mysqli_query($conn,"SELECT * FROM posts WHERE 
		post_type = 'discussion' 
		AND post_status = 1
		AND post_to = '$group_id'
		AND group_id = '$group_id'
		AND created >= '$group_last_visit' ");		
	
	$total_new_disccusion_count = 0;
	$discussion_from_array = array();

	
	//STEP 1: Select all New Posts since the last time the user visited the group 

	$result = mysqli_query($conn,"SELECT * FROM posts WHERE 
		post_type = 'discussion' 
		AND post_status = 1
		AND post_to = '$group_id'
		AND group_id = '$group_id' ");		

	while($row = mysqli_fetch_array($result)) {			
		$post_id = $row['post_id'];
		$post_from = $row['post_from'];
		$total_new_disccusion_count = $total_new_disccusion_count + 1;
		array_push($discussion_from_array,$post_from);
	}
	*/
?>