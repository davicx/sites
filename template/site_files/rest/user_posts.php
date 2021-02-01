<?php
//http://people.oregonstate.edu/~vasquezd/sites/template/site_files/rest/user_posts.php
require_once('database_conn.php');
header('Content-Type: application/json');

$current_user = "vasquezd";
$all_posts_array = array();

$result = mysqli_query($conn,"SELECT * FROM posts WHERE post_to = '$current_user' ");

while($row = mysqli_fetch_array($result)) {	
	$post_id = $row['post_id']; 
	$post_from = $row['post_from']; 
	$post_to = $row['post_to']; 
	$post_type = $row['post_type']; 
	$post_caption = $row['post_caption']; 
	$post_url = $row['post_url']; 
	$video_code = $row['video_code']; 	
	$image_url = $row['image_url']; 
	$file_url  = $row['file_url']; 
	$file_name = $row['file_name']; 			
	$file_name_server = $row['file_name_server']; 			
	$article_title = $row['article_title']; 
	$article_text = $row['article_text']; 	
	$group_id = $row['group_id']; 			
	$updated = $row['updated']; 
	$created = $row['created']; 	
	
	$current_post->post_id = $post_id;
	$current_post->post_from = $post_from;
	$current_post->post_to = $post_to;
	$current_post->post_type = $post_type;
	$current_post->post_caption = $post_caption;
	$current_post->image_url = $image_url;	
	$current_post->video_code = $video_code;	
	$current_post->created = $created;	
	array_push($all_posts_array, $current_post);
	unset($current_post);

}

$all_posts_json = json_encode($all_posts_array);
echo $all_posts_json;

?>