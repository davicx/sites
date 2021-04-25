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
		$post_from_image  = getUserImage($post_from);
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
			
			<!-- Discussion: Poster Image -->
			<div id = "" class = "discussion-image"> 
				<img src="<?php echo USER_IMAGE . $post_from_image; ?>" alt="" class = "discussion-user-image">				 
			</div>

			<!-- Discussion: Discussion Area --> 
			<!-- <div id = "js-post-caption_<?php echo $post_id; ?>" class = "js-post-caption discussion-area"> -->
			<div class = "discussion-area"> 
		
				<!-- Posted by and Posted Time -->
				<div id = "" class = "discussion-info"> 
					<p class = "discussion-info-text"> 
						<a href="#" class = "discussion-from-text"><?php echo $post_from; ?></a>
						<span class = "discussion-posted-text"><?php echo $posted_time_message; ?></span> 
					</p>
				</div>		
				
				<!-- DISPLAY: Normal -->
				<div id = "js-post-normal-display-area_<?php echo $post_id; ?>" class = "js-post-normal-display-area">
					
					<!-- Caption -->				
					<div id = "" class = "discussion-caption">
						<p id = "js-post-caption-text_<?php echo $post_id; ?>" class = "js-post-caption-text caption-text"> <?php echo $post_caption; ?> </p>
					</div>	
				
					<!-- File -->				
					<div id = "" class = "discussion-file <?php echo $file_display_class; ?>">
						<img title = "Home Page" src="<?php echo ICON; ?>" class = "hide discussion-icon" alt="">
						<p class = "caption-text"> 
							<a title = "" id = "" class = "" href="download.php?file=<?php echo urlencode($file_path)?>&file_name=<?php echo $file_name; ?>"><?php echo $file_name; ?> </a>
						</p>
					</div>		
					
					<!-- Reply -->		
					<div id = "" class = "discussion-reply"> 
						<p id = "js-reply-to-discussion_<?php echo $post_id; ?>" class = "js-reply-to-discussion discussion-reply-text"> reply </p>
					</div>	

				</div>
				
				<!-- EDIT DISPLAY: Edit Area (Hide Normal) -->			
				<div id = "js-post-edit-display-area_<?php echo $post_id; ?>" class = "js-post-edit-display-area  hide">
					<textarea id = "js-edit-post-caption-text_<?php echo $post_id; ?>" class = "new-discussion-text-area" ></textarea>
					
					<div class = "edit-post-button-area">
						<p id = "js-post-save_<?php echo $post_id; ?>" class = "js-post-save button-discussion edit-post-button-save"> save </p> 
						<p class = "js-post-cancel-edit button-discussion-cancel edit-post-button-cancel"> Cancel </p>
					</div>
					
					<!-- Hidden Values: So code doesn't break -->
					<input type="hidden" name="" id = "js-post-edit-title-area_<?php echo $post_id; ?>" value="">		
					<input type="hidden" name="" id = "js-post-edit-description-area_<?php echo $post_id; ?>" value="">		

				</div>					
				
			</div>
			
			
			<!-- Discussion: Settings -->
			<div id = "" class = "discussion-settings"> 
				<?php include('include_components/discussion/edit_discussion.php'); ?>

			</div>
			
		</div>
		

	<?php 
		//STEP 2: Reply to A Discussion 
		include('include_components/discussion/reply_to_dicussion.php'); 

		//STEP 3: Get All Child Discussions
		include('include_components/discussion/all_child_discussions.php'); 	
 } ?>
		
