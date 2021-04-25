<!-- SECTION: Posts -->
<?php 


$sql = "SELECT * FROM posts WHERE post_status = '1' AND
	(post_type = 'photo' OR post_type = 'video' OR post_type = 'text' OR post_type = 'article' OR post_type = 'file' ) AND
	group_id = '$group_id' AND
	list_id = '$list_id' AND
	post_to = '$group_id'
	ORDER BY post_id DESC";
$result = $conn->query($sql) or die(mysqli_error());

while($row = mysqli_fetch_array($result)) {		
	$post_type = $row['post_type'];
	$post_id = $row['post_id'];
	$Current_Post = new Post($post_id);
	$Current_Post->getUserPost($post_id, $logged_in_user);
	$post_type  = $Current_Post->post_type;
	$post_from  = $Current_Post->post_from;
	$post_to 	= $Current_Post->post_to;
	$post_caption = $Current_Post->post_caption;
	$post_url = $Current_Post->post_url;
	$video_code = $Current_Post->video_code;
	$image_url = $Current_Post->image_url;
	$file_url  = $Current_Post->file_url; 
	$file_name = $Current_Post->file_name; 	
	
	//Post Date and Time 				
	$posted_time_message = $Current_Post->posted_time_message;
				
			
?>
	<!-- INDIVIDUAL LIST -->
	<div class = "list">
		<div id = "js-post_<?php echo $post_id; ?>" class = "post">
		
			<!-- Header -->
			<div class = "temp-80">
				<p class = "temp-text"><b>Type: <?php echo $post_type; ?></b></p>
			</div>
			<div class = "temp-20">
				<?php //include 'include_components/posts/posts_shareshare/display_posts/edit_post.php'; ?>
			</div>

			<!-- BODY: Normal -->
			<div id = "js-post-normal-display-area_<?php echo $post_id; ?>" class = "js-post-normal-display-area">
				<p class = "temp-text">Posted: <?php echo $posted_time_message; ?></p>
				<p id = "js-post-edit_<?php echo $post_id; ?>" class = "js-post-edit temp-text">Edit</p>
				<p id = "js-post-delete_<?php echo $post_id; ?>" class = "js-post-delete temp-text">Delete</p>

				<!-- Post Caption -->
				<div id = "js-post-caption_<?php echo $post_id; ?>" class = "js-post-caption post-caption">
					<p id = "js-post-caption-text_<?php echo $post_id; ?>" class = "temp-text"> <?php echo $post_caption; ?></p>
				</div>			
			</div>
			
			
			<!-- BODY: Edit Caption Normal -->
			<div id = "js-post-edit-display-area_<?php echo $post_id; ?>" class = "js-post-edit-display-area hide">
		
				<!-- Edit Post Caption -->
				<div id = "js-edit-post-caption_<?php echo $post_id; ?>" class = "js-edit-post-caption post-caption-temp">
					<textarea id = "js-post-edit-text-area_<?php echo $post_id; ?>" class = ""><?php echo $post_caption; ?></textarea>
					<p id = "js-post-save_<?php echo $post_id; ?>" class = "js-post-save"> save </p>		
					<p class = "js-post-cancel-edit"> cancel </p>		
				</div>		

			</div>	
				
		</div>	
	</div>

<?php } ?>
	
	
	<?php
	
	/*
	//PART 1: Select All Posts 	
	$sql = "SELECT * FROM posts WHERE post_status = '1' AND
		(post_type = 'photo' OR post_type = 'video' OR post_type = 'text' OR post_type = 'article' OR post_type = 'file' ) AND
		post_to = '$group_id' AND
		group_id = '$group_id' AND
		list_id = '$list_id' AND
		ORDER BY post_id DESC";
	$result = $conn->query($sql) or die(mysqli_error());

	while($row = mysqli_fetch_array($result)) {		

		//All Post Individual Information  
		$post_type = $row['post_type'];
		$post_id = $row['post_id'];

	
		//Instantiate all wall posts based on post id 
		$Current_Post = new Post($post_id);
		$Current_Post->getUserPost($post_id, $logged_in_user);
		$post_type  = $Current_Post->post_type;
		$post_from  = $Current_Post->post_from;
		$post_to 	= $Current_Post->post_to;
		$post_caption = $Current_Post->post_caption;
		$post_url = $Current_Post->post_url;
		$video_code = $Current_Post->video_code;
		$image_url = $Current_Post->image_url;
		$file_url  = $Current_Post->file_url; 
		$file_name = $Current_Post->file_name; 	
		$article_raw = $Current_Post->article_title;
		$article_title = htmlentities($article_raw);
		$article_text = $Current_Post->article_text;
		$contains_file = $Current_Post->contains_file;
		$unique_id = $Current_Post->unique_id;
		$total_likes = $Current_Post->total_likes;		
		$liked_by_logged_in_user = $Current_Post->liked_by_logged_in_user;
		$total_comments  = $Current_Post->total_comments;	
		$new_comments  = $Current_Post->new_comments;
		$post_type_int = getPostType($post_type);
		
		//Post Date and Time 		
		$updated = $Current_Post->updated;
		$created = $Current_Post->created;
		$month = $Current_Post->month;
		$day = $Current_Post->day;
		$time_hours = $Current_Post->time_hours;		
		$posted_time_message = $Current_Post->posted_time_message;
				
		$logged_in_test = strtolower($post_from);
		$from_test =  strtolower($logged_in_user);
		
		$display_post_settings = "hide";		
		
		//Post from Logged in User
		if(strcmp($logged_in_test, $from_test) == 0){
			$display_post_settings = "";	
		}		
		
	?>
		<p><?php echo $post_id; ?> <?php echo $post_caption; ?>	 <?php echo $post_from; ?>	</p>
	<!-- POST -->

	WORKS 
	<div id = "js-post_<?php echo $post_id; ?>" class = "post">
		
		<!-- Header -->
		<div class = "temp-80">
			<p class = "temp-text"><b>Type: <?php echo $post_type; ?></b></p>
		</div>
		<div class = "temp-20">
			<?php include 'include_components/posts/posts_shareshare/display_posts/edit_post.php'; ?>
		</div>
		
		<p class = "temp-text">To: <?php echo $post_to; ?></p>
		<p class = "temp-text">From: <?php echo $post_from; ?></p>
		<p class = "temp-text">Posted: <?php echo $posted_time_message; ?></p>

		<!-- Post Caption -->
		<div id = "js-post-caption_<?php echo $post_id; ?>" class = "js-post-caption post-caption">
			<p id = "js-post-caption-text_<?php echo $post_id; ?>" class = "temp-text"> <?php echo $post_caption; ?></p>
		</div>	

		<!-- Post Type -->
		<div id = "js-post-type_<?php echo $post_id; ?>" class = "js-post-type post-type">
			<?php include 'include_components/posts/posts_shareshare/display_posts/get_post_type.php'; ?>
		</div>			

		<!-- Edit Post Caption -->
		<div id = "js-edit-post-caption_<?php echo $post_id; ?>" class = "js-edit-post-caption post-caption-temp hide">
			<textarea id = "js-post-edit-text-area_<?php echo $post_id; ?>" class = ""><?php echo $post_caption; ?></textarea>
			<p id = "js-post-save_<?php echo $post_id; ?>" class = "js-post-save"> save </p>		
			<p class = "js-post-cancel-edit"> cancel </p>		
		</div>		
				
	</div>		
		*/ ?>
	


	<?php 
	/*
	<!-- LIVE: Post Modal -->
	<div class="uk-width-medium-1-2 uk-width-large-1-3 border-blue ">
		<div class = "post">
		
			<p>Type: <?php echo $post_type; ?></p>
			<p>To: <?php echo $post_to; ?></p>
			<p>ID: <?php echo $post_id; ?></p>
			<p>Posted: <?php echo $posted_time_display; ?></p>
			
			<!-- MODAL: Open Modal -->
			<a href="#my-id_<?php echo $post_id; ?>" data-uk-modal>open</a>

			
			
		</div>		
	</div>		
		
		
		<!-- MODAL: Modal Body -->
		<div id="my-id_<?php echo $post_id; ?>" class="uk-modal ">
			<div class="uk-modal-dialog kite-post-modal">
				<a class="uk-modal-close uk-close"></a>
					<p>Type: <?php echo $post_type; ?></p>
					<p>To: <?php echo $post_to; ?></p>
					<p>ID: <?php echo $post_id; ?></p>
					<p>Posted: <?php echo $posted_time_display; ?></p>
			</div>
		</div>
		*/ ?>

		














