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
		$post_from_image  = getUserImage($post_from);	
		$post_caption = $Current_Child_Post->post_caption;
		$posted_time_display = $Current_Child_Post->posted_time_display;
		$posted_time_message = $Current_Child_Post->posted_time_message;				
		$post_from_logged_in_user = $Current_Child_Post->post_from_logged_in_user;

	?>
		<!-- CHILD DISCUSSION -->
		<!-- DISCUSSION -->
		<div id = "js-post_<?php echo $post_child_id; ?>" class = "js-post discussion-child">
			
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
						<a href="url" class = "discussion-from-text"><?php echo $post_from; ?></a>
						<span class = "discussion-posted-text"><?php echo $posted_time_message; ?></span> 
					</p>
				</div>		
				
				<!-- DISPLAY: Normal -->
				<div id = "js-post-normal-display-area_<?php echo $post_child_id; ?>" class = "js-post-normal-display-area">
					
					<!-- Caption -->				
					<div id = "" class = "discussion-caption">
						<p id = "js-post-caption-text_<?php echo $post_child_id; ?>" class = "js-post-caption-text caption-text"> <?php echo $post_caption; ?> </p>
					</div>	
				
				</div>
				
				<!-- EDIT DISPLAY: Edit Area (Hide Normal) -->			
				<div id = "js-post-edit-display-area_<?php echo $post_child_id; ?>" class = "js-post-edit-display-area  hide">
					<textarea id = "js-edit-post-caption-text_<?php echo $post_child_id; ?>" class = "new-discussion-text-area" ></textarea>
					
					<div class = "edit-post-button-area">
						<p id = "js-post-save_<?php echo $post_child_id; ?>" class = "js-post-save button-discussion edit-post-button-save"> save </p> 
						<p class = "js-post-cancel-edit button-discussion-cancel edit-post-button-cancel"> Cancel </p>
					</div>
					
					<!-- Hidden Values: So code doesn't break -->
					<input type="hidden" name="" id = "js-post-edit-title-area_<?php echo $post_child_id; ?>" value="">		
					<input type="hidden" name="" id = "js-post-edit-description-area_<?php echo $post_child_id; ?>" value="">		

				</div>					
				
			</div>
			
			
			<!-- Discussion: Settings -->
			<div id = "" class = "discussion-settings"> 
				<?php include('include_components/discussion/edit_child_discussion.php'); ?>

			</div>
			
		</div>
				
		<?php /*
		<div id = "js-post_<?php echo $post_child_id; ?>" class = "js-post discussion-child">	
			
			<!-- Discussion: Poster Image -->
			<div id = "" class = "discussion-image"> 
				<img src="<?php echo USER_IMAGE . $post_from_image; ?>" alt="" class = "discussion-user-image">				 
			</div>

			<!-- Discussion: Main Discussion -->
			<div id = "" class = "discussion-area"> 
		
				<!-- Posted by and Posted Time -->
				<div id = "" class = "discussion-info"> 
					<p class = "discussion-info-text"> 
						<a href="url" class = "discussion-from-text"><?php echo $post_from; ?></a>
						<span class = "discussion-posted-text"><?php echo $posted_time_message; ?></span> 
					</p>
				</div>		

				<!-- Caption -->				
				<div id = "" class = "discussion-caption">
					<p class = "caption-text"> <?php echo $post_caption; ?> </p>
				</div>		
	
			</div>
			
			<!-- Discussion: Settings -->
			<div id = "" class = "discussion-settings"> 
				
			</div>
			
		
		</div>
		*/ ?>
		
	<?php } ?>
	
	
	
	
	
