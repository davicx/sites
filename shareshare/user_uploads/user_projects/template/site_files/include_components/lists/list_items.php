<!-- LIST: List Selected -->

<?php 

/*
$result = mysqli_query($conn,"SELECT post_id FROM posts WHERE group_id = '$group_id' AND list_id = '$list_id' AND post_status = 1");


while($row = mysqli_fetch_array($result)) {	
	$post_id = $row['post_id']; 		
	$Current_Post = new Post($post_id);
	$Current_Post->getUserPost($post_id, $logged_in_user);
	$post_type    	= $Current_Post->post_type;
	$post_from    	= $Current_Post->post_from;
	$post_to 	  	= $Current_Post->post_to;
	$post_caption 	= $Current_Post->post_caption;
	$post_url	  	= $Current_Post->post_url;
	$video_code   	= $Current_Post->video_code;
	$image_url    	= $Current_Post->image_url;
	$file_url     	= $Current_Post->file_url; 
	$file_name    	= $Current_Post->file_name; 	
	$article_raw  	= $Current_Post->article_title;
	$article_title 	= htmlentities($article_raw);
	$article_text 	= $Current_Post->article_text;
	$contains_file 	= $Current_Post->contains_file;
	$unique_id    	= $Current_Post->unique_id;
	$total_likes 	= $Current_Post->total_likes;
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
	
	//Get User Name and Info 	
	$Current_User_Post 		= new User($post_from);
	$Current_User_Post->getUserInfo($post_from);			
	$post_from_user_image   = $Current_User_Post->userImage;
	$post_from_user_name    = $Current_User_Post->fullUserName;	
	

	include('list_individual_item.php');
	
}

*/ ?>	



