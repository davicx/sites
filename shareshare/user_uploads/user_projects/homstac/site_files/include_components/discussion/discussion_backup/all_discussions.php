<?php 

	//STEP 1: Get All Discussions
	$result = mysqli_query($conn,"SELECT * FROM posts WHERE post_to = '$post_made_to' 
		AND post_type = 'discussion'  
		AND post_status = '1'
		AND parent = '0'
		ORDER BY created DESC;");	
	
	while($row = mysqli_fetch_array($result)) {		
		$post_id = $row['post_id'];
		$Current_Post = new Post($post_id);
		$Current_Post->getUserPost($post_id, $logged_in_user);
		$post_type  = $Current_Post->post_type;
		$post_from  = $Current_Post->post_from;
		$post_caption = $Current_Post->post_caption;
		$total_likes = $Current_Post->total_likes;		
		$liked_by_logged_in_user = $Current_Post->liked_by_logged_in_user;
		$total_comments  = $Current_Post->total_comments;	
		$new_comments  = $Current_Post->new_comments; 		
		$parent = $post_id;
		$posted_time_message = $Current_Post->posted_time_message;		
		$post_from_logged_in_user = $Current_Post->post_from_logged_in_user;	
		
		//Get File Information
		$image_url = $Current_Post->image_url;
		$file_name_server = $Current_Post->file_name_server; 
		$file_path = FILE_UPLOAD . $file_name_server;
		$file_name = $Current_Post->file_name; 				
				
  
		//Check if file is valid 
  		if(file_exists(FILE_UPLOAD . $file_name_server) == 1 && $file_name_server != "") {
			$file_is_downloadable = 1;							
			$file_display_class = "";							
		} else {
			$file_is_downloadable = 0;				
			$file_display_class = "hide";				
		}
 
	?>
	
		<!-- DISCUSSION -->
		<div id = "js-post_<?php echo $post_id; ?>" class = "js-post discussion">
			
			<!-- Discussion Body -->
			<div id = "" class = ""> 
				
				<!-- Caption -->
				<p id = "js-post-caption_<?php echo $post_id; ?>" class = ""><?php echo $post_caption; ?> </p>	
				
				<!-- File -->
				<div class = "<?php echo $file_display_class; ?>">
					<p class = ""> Download: <?php echo $file_is_downloadable; ?> </p>	
					<p><a title = "" id = "" class = "" href="download.php?file=<?php echo urlencode($file_path)?>&file_name=<?php echo $file_name; ?>"><?php echo $file_name; ?> </a></p> 	
				</div>
				
				<!-- Reply -->
				<p id = "js-reply-to-discussion_<?php echo $post_id; ?>" class = " js-reply-to-discussion button-simple "> reply </p>	
			
			</div>
			
			<!-- Post Settings: (if logged in user made it) -->
			<div id = "" class = "<?php echo $post_from_logged_in_user; ?>"> 
				<p id = "js-post-edit_<?php echo $post_id; ?>" class = "js-post-edit button-simple "> Edit </p>	
				<p id = "js-post-delete_<?php echo $post_id; ?>" class = " js-post-delete button-simple "> delete </p>
			</div>
			
		</div>
		
		
		<!-- DISCUSSION: Edit -->
		<div id = "js-post-edit-area_<?php echo $post_id; ?>" class = "js-post-edit-area discussion hide">
			<textarea id = "js-post-edit-caption_<?php echo $post_id; ?>" class = "" ></textarea>
			<p id = "js-post-save_<?php echo $post_id; ?>" class = "js-post-save"> save </p> 
			<p class = "js-post-cancel-edit"> Cancel </p>
			
			<!-- Hidden Values: So code doesn't break -->
			<input type="hidden" name="" id = "js-post-edit-title-area_<?php echo $post_id; ?>" value="">		
			<input type="hidden" name="" id = "js-post-edit-description-area_<?php echo $post_id; ?>" value="">		

		</div>		

	<?php 
		//STEP 2: Reply to A Discussion 
		include('include_components/discussion/reply_to_dicussion.php'); 

		//STEP 3: Get All Child Discussions
		include('include_components/discussion/all_child_discussions.php'); 		
		
	} 

	?>
		

	
	
		
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	