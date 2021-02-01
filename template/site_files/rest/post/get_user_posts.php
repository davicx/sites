<?php
//Include Page Header 
header('Content-Type: application/json');
require_once('../../../../functions/rest_header.php');
require_once('../../../../functions/classes/Posts.php');
require_once('../../../../functions/classes/User.php');


//http://people.oregonstate.edu/~vasquezd/sites/template/site_files/rest/post/get_user_posts.php
//http://people.oregonstate.edu/~vasquezd/sites/template/site_files/rest/post/get_user_posts.php?user_key=david&user_name=vasquezd
//http://people.oregonstate.edu/~vasquezd/sites/template/site_files/rest/post/get_user_posts.php?user_key=kristen&post_to=kristen
//http://people.oregonstate.edu/~vasquezd/sites/template/site_files/rest/post/get_user_posts.php?user_key=matt&post_to=matt

$json = file_get_contents('php://input');
$request_object = json_decode($json);

$user_key = $request_object->user_key;


//POSTS: Request was Verified 
if (isset($user_key) && (!empty($user_key))) { 

	$user_key = $request_object->user_key;
	$logged_in_user = $request_object->user_name;
	$post_to = $logged_in_user;

	//Get Information 
	//$user_key = $_GET["user_key"];
	//if(isset($_GET['post_to'])){ $post_to = $_GET['post_to']; } else { $post_to = "null"; }
	
	//Verify User
	$result = mysqli_query($conn,"SELECT * FROM user_login WHERE user_name = '$logged_in_user' ");

	while($row = mysqli_fetch_array($result)) {		
		$logged_in_user_key = $row['user_key'];	
	}
	
	//POST: Verified get their data 
	if(strcmp($logged_in_user_key, $user_key) == 0) {
	
		//Create at Array to Hold All Posts
		$all_posts_array = array();
		
		//Fetch All Posts 
		$sql = "SELECT * FROM posts WHERE post_status = '1' AND
		(post_type = 'photo' OR post_type = 'video' OR post_type = 'text' OR post_type = 'article' OR post_type = 'file' ) AND
		post_to = '$post_to' AND
		list_id = 0
		ORDER BY post_id DESC";

		$result = $conn->query($sql) or die(mysqli_error());

		while($row = mysqli_fetch_array($result)) {		

			//All Post Individual Information  
			$post_id = $row['post_id'];

			//Instantiate all wall posts based on post id 
			$Current_Post = new Post($post_id);
			$Current_Post->getUserPost($post_id, $post_to);
			$Current_Post->getPostedTimeMessageONID($post_id, $post_to);
			
			$post_type = $Current_Post->post_type;
			$post_from = $Current_Post->post_from;
			$post_to = $Current_Post->post_to;
			$post_caption = $Current_Post->post_caption;
			$post_url = $Current_Post->post_url;
			$video_code = $Current_Post->video_code;
			$image_url = $Current_Post->image_url;		
			$posted_time_message = $Current_Post->posted_time_message;
					
			//Add Each Post to the JSON Array 
			$currentPost->post_id  = $post_id ;
			$currentPost->post_from = $post_from;
			$currentPost->post_to = $post_to;
			$currentPost->post_type = $post_type;
			$currentPost->post_caption = $post_caption;
			$currentPost->post_url = $post_url;
			$currentPost->image_url = $image_url;	
			$currentPost->video_code = $video_code;	
			$currentPost->posted_time_message = $posted_time_message;
			
			array_push($all_posts_array, $currentPost);
			unset($currentPost);

		} 
			
		$allPostsJSON = json_encode($all_posts_array);
		echo $allPostsJSON;


	//POST: Could not be Verified 
	} else {
		$all_posts_array = array();

		$currentPost->post_id = 0;
		$currentPost->post_from = "not_verified";
		$currentPost->post_to = "null";
		$currentPost->post_type = "null";
		$currentPost->post_caption = "null";
		$currentPost->image_url = "null";
		$currentPost->video_code = "null";
		$currentPost->created = "created";
		
		array_push($all_posts_array, $currentPost);	
	
	}


//POSTS: User not Authorized 
} else {
	$all_posts_array = array();

	$currentPost->post_id = 0;
	$currentPost->post_from = "not_authorized";
	$currentPost->post_to = "null";
	$currentPost->post_type = "null";	
	$currentPost->post_caption = "null";
	$currentPost->image_url = "null";
	$currentPost->video_code = "null";
	$currentPost->created = "created";
		

	array_push($all_posts_array, $currentPost);	
			

}



/*

if (isset($_GET["user_key"]) && (!empty($_GET["user_key"]))) { 
	
	//Get Information 
	$user_key = $_GET["user_key"];
	if(isset($_GET['post_to'])){ $post_to = $_GET['post_to']; } else { $post_to = "null"; }
	
	//Verify User
	$result = mysqli_query($conn,"SELECT * FROM user_login WHERE user_name = '$post_to' ");

	while($row = mysqli_fetch_array($result)) {		
		$logged_in_user_key = $row['user_key'];	
	}
	
	//POST: Verified get their data 
	if(strcmp($logged_in_user_key, $user_key) == 0) {
	
		//Create at Array to Hold All Posts
		$all_posts_array = array();
		
		//Fetch All Posts 
		$sql = "SELECT * FROM posts WHERE post_status = '1' AND
		(post_type = 'photo' OR post_type = 'video' OR post_type = 'text' OR post_type = 'article' OR post_type = 'file' ) AND
		post_to = '$post_to' AND
		list_id = 0
		ORDER BY post_id DESC";

		$result = $conn->query($sql) or die(mysqli_error());

		while($row = mysqli_fetch_array($result)) {		

			//All Post Individual Information  
			$post_id = $row['post_id'];

			//Instantiate all wall posts based on post id 
			$Current_Post = new Post($post_id);
			$Current_Post->getUserPost($post_id, $post_to);
			$Current_Post->getPostedTimeMessageONID($post_id, $post_to);
			
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
			$total_likes 	= $Current_Post->total_likes;
			$like_array 	= $Current_Post->like_array;
			$liked_by_logged_in_user = $Current_Post->liked_by_logged_in_user;
			$liked_by_logged_in_user = $Current_Post->liked_by_logged_in_user;
			$post_from_logged_in_user = $Current_Post->post_from_logged_in_user;
			//$total_comments  = $Current_Post->total_comments;	
			///$new_comments  = $Current_Post->new_comments;
			
			//Post Date and Time 		
			$updated = $Current_Post->updated;
			$created = $Current_Post->created;
			$month = $Current_Post->month;
			$day = $Current_Post->day;
			$time_hours = $Current_Post->time_hours;		
			$posted_time_message = $Current_Post->posted_time_message;
					
			//Get User Name and Info 	
			$Current_User_Post 		= new User($post_from);
			$Current_User_Post->getUserInfo($post_from);			
			$post_from_user_image   = $Current_User_Post->userImage;
			$post_from_user_name    = $Current_User_Post->fullUserName;	

			//Add Each Post to the JSON Array 
			//$currentPost->post_id = $post_id;
			$currentPost->post_id  = $post_id ;
			$currentPost->post_from = $post_from;
			$currentPost->post_to = $post_to;
			$currentPost->post_type = $post_type;
			$currentPost->post_caption = $post_caption;
			$currentPost->image_url = $image_url;	
			$currentPost->video_code = $video_code;	
			$currentPost->created = $created;

			//$currentPost->post_from_user_image = $post_from_user_image;	
			//$currentPost->post_from_user_name = $post_from_user_name;	
			//$currentPost->total_likes = $total_likes;	
			//$currentPost->posted_time_message = $posted_time_message;	
			//$currentPost->created = $created;	
			
			array_push($all_posts_array, $currentPost);
			unset($currentPost);

		} 
			
		$allPostsJSON = json_encode($all_posts_array);
		echo $allPostsJSON;


	//POST: Could not be Verified 
	} else {
		$all_posts_array = array();

		$currentPost->post_id = 0;
		$currentPost->post_from = "Could not be Verified";
		$currentPost->post_to = "null";
		$currentPost->post_type = "null";
		$currentPost->post_caption = "null";
		$currentPost->image_url = "null";
		$currentPost->video_code = "null";
		$currentPost->created = "created";
		
		array_push($all_posts_array, $currentPost);	
	
	}
	
//REQUEST: Didn't work
} else {
	$all_posts_array = array();

	$currentPost->post_id = 0;
	$currentPost->post_from = "Could not be Verified";
	$currentPost->post_to = "null";
	$currentPost->post_type = "null";	
	$currentPost->post_caption = "null";
	$currentPost->image_url = "null";
	$currentPost->video_code = "null";
	$currentPost->created = "created";
		

	array_push($all_posts_array, $currentPost);	
		
}

*/

//APPENDIX 
//Simple Example 
/*
if (isset($user_key) && (!empty($user_key))) { 
	$responsePost->returned_from_server = "Success";
	$responsePost->user_name = $request_object->user_name;
	$responsePost->user_key = $request_object->user_key;

	$responsePostJSON = json_encode($responsePost);		

	echo $responsePostJSON;	

} else {
	
	$responsePost->returned_from_server = "Success";
	$responsePost->user_name = "no_key";
	$responsePost->user_key = "no_key";

	$responsePostJSON = json_encode($responsePost);		

	echo $responsePostJSON;	
	
}

*/



?>