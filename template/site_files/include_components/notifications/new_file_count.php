<?php 
	//Total Files
	$total_file_count = 0;
		
	$result_file_count = mysqli_query($conn,"SELECT * FROM files WHERE file_status = 1
		AND group_id = '$group_id'
		AND user_name != '$logged_in_user' ");
 
	while($row_file_count = mysqli_fetch_array($result_file_count)) {

		$total_file_count = $total_file_count + 1;	
	}	

	//New Files
	$total_new_file_count = 0;
		
	$result_post_count = mysqli_query($conn,"SELECT * FROM files WHERE file_status = 1
		AND group_id = '$group_id'
		AND user_name != '$logged_in_user'
		AND file_created >= '$group_last_visit'
		LIMIT 100 ");
 
	while($row_post_count = mysqli_fetch_array($result_post_count)) {

		$total_new_file_count = $total_new_file_count + 1;	
	}		
?>

<div class  = "">
	<p class = "no-margin"><b>Total Files:</b><?php echo $total_file_count; ?> </p>
	<p class = "no-margin"><b>New Files:</b><?php echo $total_new_file_count; ?> </p>
</div>