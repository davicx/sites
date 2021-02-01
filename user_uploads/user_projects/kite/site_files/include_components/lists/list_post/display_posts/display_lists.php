<!-- SECTION: Posts -->
<?php 

$result = mysqli_query($conn,"SELECT * FROM posts WHERE group_id = '$group_id' AND list_id = '$list_id' AND post_status = 1");

while($row = mysqli_fetch_array($result)) {		
	$post_type = $row['post_type'];
	$post_id = $row['post_id'];
	$Current_Post = new Post($post_id);
	$Current_Post->getUserPost($post_id, $logged_in_user);
	$post_type  = $Current_Post->post_type;
	$post_from  = $Current_Post->post_from;
	$post_from_image = getUserImage($post_from);
	$post_to 	= $Current_Post->post_to;
	$post_caption = $Current_Post->post_caption;
	//$post_url = $Current_Post->post_url;
	$post_url_raw = $Current_Post->post_url;
	$parsed = parse_url($post_url_raw);
	if (empty($parsed['scheme'])) {
		$post_url_raw = 'http://' . ltrim($post_url_raw, '/');
	}
	$post_url = $post_url_raw;
	//echo $post_url;
	$video_code = $Current_Post->video_code;
	$image_url = $Current_Post->image_url;
	$file_url  = $Current_Post->file_url; 
	$file_name = $Current_Post->file_name; 	
	$post_type_int = getPostType($post_type);
	$article_raw  	= $Current_Post->article_title;
	$article_title 	= htmlentities($article_raw);
	$article_text 	= $Current_Post->article_text;
	$contains_file 	= $Current_Post->contains_file;
	$unique_id    	= $Current_Post->unique_id;
	$total_likes 	= $Current_Post->total_likes;	
	$liked_by_logged_in_user = $Current_Post->liked_by_logged_in_user;
	$total_comments  = $Current_Post->total_comments;	
	$new_comments  = $Current_Post->new_comments;

	//Post from Logged in User
	$logged_in_test = strtolower($post_from);
	$from_test =  strtolower($logged_in_user);	
	$display_post_settings = "hide";		
			
	if(strcmp($logged_in_test, $from_test) == 0){
		$display_post_settings = "";	
	}		
		
	//Post Date and Time 				
	$posted_time_message = $Current_Post->posted_time_message;		

	//Create CSS to Show Item with or without a list image 
	if($post_type_int == 5 || $post_type_int == 6) {
		$list_image = "hide";
		$list_body = "list-body-full";	
	} else {
		$list_image = "list-image";
		$list_body = "list-body";				
	}

	

?>


	<!-- INDIVIDUAL LIST -->
	<div id = "list_<?php echo $list_id; ?>" class = "list">
		
		<!-- List Image -->
		<div class = "<?php echo $list_image; ?>">
			<?php include('get_post_type.php'); ?>
		</div>
		
		<!-- List Body-->		
		<div class = "<?php echo $list_body; ?>">
			
			<!-- Header -->
			<div class = "list-header">
				<div class = "list-header-caption">				
					<?php if($post_type_int == 5) { ?>
						<a href="<?php echo $post_url; ?>" target="_blank" class = "list-caption-text"> Link: <?php echo $post_caption; ?></a>
					<?php } else { ?>
						<p class = "list-caption-text"><?php echo $post_caption; ?></p>
					<?php } ?>			
				</div>
				
				<div class = "list-header-settings-area">			
					<?php include('edit_post.php'); ?>
				</div>				

			</div>				

			<!-- Footer -->			
			<div class = "list-footer">
				<div class = "list-footer-from"> 
					
					<img src="<?php echo USER_IMAGE . $post_from_image; ?>" alt="" class = "list-from-user-image">			
					<p class = "list-footer-from-text "><?php echo $post_from; ?> </p>

				</div>
				<div class = "list-footer-social">		
					
					<?php if($liked_by_logged_in_user == 1) { ?>	
						<img id = "unlike_<?php echo $post_id; ?>" src="<?php echo ICON; ?>like\liked.png" alt="" class = "js_like-post list-liked-image">
						<img id = "like_<?php echo $post_id; ?>" src="<?php echo ICON; ?>like\like_me.png" alt="" class = "js_like-post hide list-liked-image">
					<?php } else { ?>
						<img id = "unlike_<?php echo $post_id; ?>" src="<?php echo ICON; ?>like\liked.png" alt="" class = "js_like-post hide list-liked-image">
						<img id = "like_<?php echo $post_id; ?>" src="<?php echo ICON; ?>like\like_me.png" alt="" class = "js_like-post list-liked-image">												
					<?php } ?>

					<?php if($total_likes > 0) { ?>
						<p id = "js-total-likes_<?php echo $post_id; ?>" class = "list-total-likes-text"><?php echo $total_likes; ?></p>	
					<?php }?>
					
		
					<!-- Hidden Values -->
					<input type="hidden" name="logged-in-user" id = "" value = "<?php echo $logged_in_user; ?>" value="user"> 					
										
				</div>	
			</div>	
		</div>
		
	</div>

<?php } ?>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	