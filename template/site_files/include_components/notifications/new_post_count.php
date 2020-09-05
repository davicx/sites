<?php 
	//Total Posts 
	$total_post_count = 0;
		
	$result_post_count = mysqli_query($conn,"SELECT * FROM posts WHERE post_status = 1
		AND post_to = '$group_id'
		AND post_type != 'discussion'
		AND post_status = 1 ");
 
	while($row_post_count = mysqli_fetch_array($result_post_count)) {
		$total_post_count = $total_post_count + 1;	
	}		

	//New Posts 
	$total_new_post_count = 0;
		
	$result_post_count = mysqli_query($conn,"SELECT * FROM posts WHERE post_status = 1
		AND post_to = '$group_id'
		AND post_type != 'discussion'
		AND post_status = 1
		AND post_from != '$logged_in_user'
		AND created >= '$group_last_visit'
		LIMIT 100 ");
 
	while($row_post_count = mysqli_fetch_array($result_post_count)) {
		//$discussion_from = $row_discussion_count['post_from'];
		//array_push($discussion_from_array, $discussion_from);		
		//$discussion_from_array = array_unique($discussion_from_array);
		
		$total_new_post_count = $total_new_post_count + 1;	
	}		

?>


<div class  = "">
	<p class = "no-margin"> <b> Total Posts: </b><?php echo $total_post_count; ?> </p>
	<p class = "no-margin"> <b> New Posts: </b><?php echo $total_new_post_count; ?> </p>
</div>
	
	
<?php 
/*
	//STEP 2: Get Total New Discussions 
	$total_new_disccusion_count = 0;
	$discussion_from_array = array();
	$discussion_message = "";
	$discussion_from_count = 0; 
	
	$result_discussion_count = mysqli_query($conn,"SELECT * FROM posts WHERE 
		post_type = 'discussion' 
		AND post_status = 1
		AND post_to = '$group_id'
		AND post_from != '$logged_in_user'
		AND group_id = '$group_id'
		AND created >= '$group_last_visit' LIMIT 100 ");	
		
	while($row_discussion_count = mysqli_fetch_array($result_discussion_count)) {
		$discussion_from = $row_discussion_count['post_from'];
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
			$discussion_message = $discussion_from_array[0] . " is chatting. ";
		
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
		<p class = "no-margin"> Total Discussions: (<b><?php echo $total_new_disccusion_count; ?></b>) </p>
		<p class = "no-margin"> Discussion Messages From New Users: <?php echo $discussion_from_count; ?></p>
		<p class = "no-margin"> Message: <?php echo $discussion_message; ?> </p>
		<p class = "hide no-margin"> Current User: <?php echo $logged_in_user; ?> </p>
	</div>	
*/ ?>
