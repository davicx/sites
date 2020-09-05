<?php
	
	//Select All Comments
	$result_comments_children = mysqli_query($conn,"SELECT * FROM comments WHERE comment_to = '$comment_to' 
		AND comment_deleted = 0  
		AND comment_is_child = 1
		AND comment_parent = '$comment_id'
		ORDER BY created DESC;");	
	
	while($row_comments_children = mysqli_fetch_array($result_comments_children)) {	
		$comment_id_child = $row_comments_children['comment_id'];	
		$Current_Comment_Child = new Comment($comment_id_child);
		$Current_Comment_Child->getCommentInformation($comment_id_child, $logged_in_user);	
		$comment_from = $Current_Comment_Child->comment_from;
		$comment_from_image = getUserImage($comment_from);
		$comment_to = $Current_Comment_Child->comment_to;			
		$comment_caption = $Current_Comment_Child->comment;						
		$comment_has_file = $Current_Comment_Child->comment_has_file;						
		$comment_file_name = $Current_Comment_Child->comment_file_name;						
		$comment_file_name_server = $Current_Comment_Child->comment_file_name_server;		
		$comment_created_message = $Current_Comment_Child->posted_time_message;		
		$file_path 	= FILE_UPLOAD . $comment_file_name_server; 		
?>

	<!-- CHILD COMMENT -->
	<div id = "js-comment-child_<?php echo $comment_id_child; ?>" class = "comment-child">
		<div class = "comment-child-spacer">
			
		</div>
		
		<!-- USER: Comment User -->		
		<div class = "comment-user-area">
			<img src="<?php echo USER_IMAGE . $comment_from_image; ?>" alt="" class = "comment-child-user-image">
		</div>
		
		<!-- COMMENT: Comment Text -->		
		<div id = "" class = "comment-area">
			
			<!-- Header: Comment and User Information -->
			<div class = "comment-header">
				<div class = "comment-poster-name">
					<p class = "comment-poster-name-text"> <?php echo $comment_from_display_name; ?> </p>
				</div>
				<div class = "comment-posted-time">
					<p class = "comment-posted-time-text"> <?php echo $comment_created_message; ?></p>
				</div>
				<div class = "comment-settings">
					<?php include('include_components/discussion/discussion_comment_child_menu.php') ?>
				</div>							
			</div>		
			
			<!-- Body: Comment Caption -->
			<div id = "js-comment-caption_<?php echo $comment_id_child; ?>" class = "js-comment-caption comment-body">
				<p id = "js-current-comment-caption_<?php echo $comment_id_child; ?>" class = "comment-caption-text"> 
					<?php //echo $comment_caption; ?> 
					<?php echo htmlentities($comment_caption, ENT_COMPAT, 'utf-8'); ?></p>
				</p>
			</div>	
			
			<!-- Edit Comment -->
			<?php include('include_components/discussion/comment_child_edit.php') ?>

			<!-- Footer: Attached File -->							
			<div class = "comment-footer">

			</div>
		</div>
		
	</div>
	
	<?php } ?>
	


				

	



