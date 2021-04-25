<?php 
	
	//STEP 1: Get All Discussions
	$result_child = mysqli_query($conn,"SELECT * FROM posts WHERE post_to = '$post_made_to' 
		AND post_type = 'discussion'  
		AND post_status = '1'
		AND parent = '$post_id'
		ORDER BY created DESC;");	
	
	while($row_child = mysqli_fetch_array($result_child)) {		
		$post_child_id = $row_child['post_id'];
		$Current_Child_Post = new Post($post_child_id);
		$Current_Child_Post->getUserPost($post_child_id, $logged_in_user);
		$post_type  = $Current_Child_Post->post_type;
		$post_from  = $Current_Child_Post->post_from;
		$post_caption = $Current_Child_Post->post_caption;
		$image_url = $Current_Child_Post->image_url;
		$file_url  = $Current_Child_Post->file_url; 
		$file_name = $Current_Child_Post->file_name; 	
		$contains_file = $Current_Child_Post->contains_file;
		$total_likes = $Current_Child_Post->total_likes;		
		$liked_by_logged_in_user = $Current_Child_Post->liked_by_logged_in_user;
		$total_comments  = $Current_Child_Post->total_comments;	
		$new_comments  = $Current_Child_Post->new_comments; 		
		$updated = $Current_Child_Post->updated;
		$created = $Current_Child_Post->created;
		$month = $Current_Child_Post->month;
		$day = $Current_Child_Post->day;
		$time_hours = $Current_Child_Post->time_hours;		
		$posted_time_display = $Current_Child_Post->posted_time_display;		
		$post_from_logged_in_user = $Current_Child_Post->post_from_logged_in_user;

	?>
	
		<!-- CHILD DISCUSSION -->
		<div id = "js-post_<?php echo $post_child_id; ?>" class = "js-post discussion-child">
			<p id = "js-post-caption_<?php echo $post_child_id; ?>" class = ""><?php echo $post_caption; ?> </p>	
			<p> <?php echo $post_from; ?>  </p>

			<!-- Edit Post (if logged in user made it) -->
			<div id = "" class = "<?php echo $post_from_logged_in_user; ?>"> 
				<p id = "js-post-edit_<?php echo $post_child_id; ?>" class = "js-post-edit button-simple "> Edit </p>	
				<p id = "js-post-delete_<?php echo $post_child_id; ?>" class = " js-post-delete button-simple "> delete </p>
			</div>	
				
			<!-- Hidden Values: So code doesn't break -->
			<input type="hidden" name="" id = "js-post-edit-title-area_<?php echo $post_id; ?>" value="">		
			<input type="hidden" name="" id = "js-post-edit-description-area_<?php echo $post_id; ?>" value="">		
			
		</div>
		
		<!-- Edit Discussion -->
		<div id = "js-post-edit-area_<?php echo $post_child_id; ?>" class = "js-post-edit-area discussion-child hide">
			<textarea id = "js-post-edit-caption_<?php echo $post_child_id; ?>" class = ""></textarea>
			<p id = "js-post-save_<?php echo $post_id; ?>" class = "js-post-save"> save </p> 
			<p class = "js-post-cancel-edit"> Cancel </p> 
		
		</div>			
	<?php } ?>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	