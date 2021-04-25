<!-- Divider -->
<div class = " post-divider">	
	<p> &nbsp </p>	
</div>			
<?php 
	$sql = "SELECT * FROM comments WHERE post_id = '$post_id' AND comment_deleted = 0 ORDER BY created DESC";
	$result_comments = $conn->query($sql) or die(mysqli_error());
	$comment_count = 0;
	
	while($row_comments = mysqli_fetch_array($result_comments)) {				
		$comment_id = $row_comments['comment_id'];
		$Current_Comment = new Comment($comment_id);
		$Current_Comment->getPostComments($comment_id, $logged_in_user);	
		$comment_from = $Current_Comment->comment_from;
		$comment_from_image = getUserImage($comment_from);
		$comment_from_user = $Current_Comment->comment_from_user;
		$comment_time_message = $Current_Comment->comment_time_message;
		$comment_caption = $Current_Comment->comment;
		$comment_likes_array = $Current_Comment->like_array;
		$comment_total_likes = $Current_Comment->total_likes;		
		$comment_liked_by_logged_in_user = $Current_Comment->liked_by_logged_in_user;		
		
		//Get Post From Information 
		$Current_User_Comment 		= new User($comment_from);
		$Current_User_Comment->getUserInfo($comment_from);			
		$comment_from_user_name    = $Current_User_Comment->fullUserName;	
		
		//Find out if post was made by logged in user and set variables 
		if(strcmp($logged_in_user, $comment_from) == 0) { 
			$comment_from_user = 1;
			$comment_from_link = "wall.php";
			$show_item = "";
		} else {
			$comment_from_user = 0;	
			$comment_from_link = "friend_wall.php";	
			$show_item = "hide";					
		}
		
?>
	<!-- COMMENT -->
	<div id = "js-comment_<?php echo $comment_id; ?>" class = "js-comment comment">
	
		<!-- COMMENT: From -->
		<div class = "comment-from-area">
			<a href="" class = "">
				<img src="<?php echo USER_IMAGE . $comment_from_image; ?>" alt="" class = "comment-from-user-image">
			</a>
		</div>
		
		<!-- COMMENT: Information -->
		<div class = "comment-body">
			
			<!-- Comment From and Edit -->
			<div class = "comment-user-info">
				
				<div class = "comment-user-name">
					<p class = "post-from-text"><?php echo $comment_from_user_name; ?> </p>
				</div>		
				<div id = "js-comment-edit-trigger_<?php echo $comment_id; ?>" class = "comment-edit js-comment-edit-trigger">
					<p id = "" class = " post-from-text">E</p>
				</div>	
				<div class = "comment-posted-time">
					<p class = "post-time-posted"><?php echo $comment_time_message; ?> </p>
				</div>							

			</div>
			
			<!-- Comment Caption -->
			<div class = "comment-caption-holder">
			
				<!-- NORMAL: Comment -->
				<div id = "js-comment-caption_<?php echo $comment_id; ?>" class = "js-comment-caption">
					<p id = "js-comment-caption-text_<?php echo $comment_id; ?>" class = "post-caption-text"><?php echo $comment_caption; ?></p>
				</div>				

				<!-- EDIT: Comment -->
				<div id = "js-comment-caption-edit_<?php echo $comment_id; ?>" class = "js-comment-caption-edit hide">
					<textarea id = "js-comment-edit-text-area_<?php echo $comment_id; ?>" class = "js-comment-edit-text-area comment-edit-area" ><?php echo $comment_caption; ?></textarea>
					<p id = "js-comment-save_<?php echo $comment_id; ?>" class = "js-comment-save comment-save-button button-discussion"> Save </p>
					<p id = "js-comment-edit-cancel_<?php echo $comment_id; ?>" class = "js-comment-edit-cancel comment-cancel-button button-discussion-cancel"> Cancel </p>
					<p id = "js-comment-delete_<?php echo $comment_id; ?>" class = "js-comment-delete comment-cancel-button button-discussion-cancel"> Delete </p>
				</div>					
			
			</div>		
	
		</div>	 

	</div>
	
	

<?php } ?>

<?php include('include_components/posts/posts_shareshare/comments/new_comment.php'); ?>
 


	
	
	
	
	
	
	
		
	
		<?php /*
		<!-- Post From -->

		js-post-edit-display-area_<?php echo $comment_id; ?>
		<!-- Post Information -->
		<div class = "post-body-info-area">
			<div class = "post-body-from-area">
				<p class = "post-from-text"><?php echo $comment_from_user_name; ?> </p>
			</div>		
			<div id = "js-post-edit-trigger-icon_<?php echo $comment_id; ?>" class = "js-post-edit-trigger-icon post-body-edit-area">
				<?php //include('include_components/posts/posts_shareshare/display_posts/edit_post.php') ?>
			</div>		
			
			<!-- NORMAL POST -->
			<div id = "js-post-normal-display-area_<?php echo $comment_id; ?>" class = "js-post-normal-display-area post-body-caption">
				<p class = "post-time-posted"><?php echo $comment_time_message; ?> </p>
				<p id = "js-post-caption-text_<?php echo $comment_id; ?>" class = "post-caption-text"><?php echo $comment_caption; ?></p>
			</div>				

			<!-- EDIT POST -->
			<div id = "js-post-edit-display-area_<?php echo $post_id; ?>" class = "js-post-edit-display-area hide post-body-caption">
				<p class = "post-time-posted"><?php echo $comment_time_message; ?> </p>
				<textarea id = "js-edit-post-caption-text_<?php echo $post_id; ?>" class = "" ></textarea>
				<p id = "js-post-save_<?php echo $post_id; ?>" class = "js-post-save button-discussion"> Save </p>
				<p class = "js-post-cancel-edit button-discussion-cancel"> Cancel </p>
			</div>								   
			
		</div>		
		*/ ?>
	
	
	
	
	
	
	
	
	
	
	
	
	