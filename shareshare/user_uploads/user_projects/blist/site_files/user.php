<?php
	//Include Page Header 
	require_once('../../functions/page_header.php');
		
	$logged_in_user = "vasquezd";
	$logged_in_user_id = getUserID($logged_in_user);
	$Current_User = new User($logged_in_user);
	$Current_User->getUserInfo($logged_in_user);		
	$Current_User->getFriendList($logged_in_user);		
	$logged_in_users_friends_array = $Current_User->friendListUserNames;
	$logged_in_users_friends_count = count($logged_in_users_friends_array);
 	
	echo $Current_User->fullUserName;
	echo "<br />";
	print_r($logged_in_users_friends_array);
	//echo registerUser($user_name, $first_name, $last_name, $email, $pword);
	
	//POSTS 
	$post_id = 1;
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
	$posted_time_message  = $Current_Post->posted_time_message;
	$post_type_int = getPostType($post_type);
	
	echo "<br />";
	echo $posted_time_message;
?>
<!DOCTYPE html>
<html>
    <head>
		
		<!-- Meta Tags -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">		
	    <meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="" />
		<title> Template </title>
		
		<!-- Include all JS and CSS Files -->
		<?php include_once('include_components/links_head.php') ?>

    </head>
	
	<body> 
	
		
		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>			
	
	</body>
</html>







