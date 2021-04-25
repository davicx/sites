<?php 
//Photo = 1, Video = 2, Article = 3, Media = 4, Link = 5, Text = 6, File = 7 

//Display Photo 
if($post_type_int == 1) { 
	include 'include_components/posts/posts_shareshare/display_posts/post_photo.php'; 
 
//Display Video 
} else if($post_type_int == 2) {
	include 'include_components/posts/posts_shareshare/display_posts/post_video.php'; 
 
//Display Article 	
} else if($post_type_int == 3) { 
	include 'include_components/posts/posts_shareshare/display_posts/post_article.php'; 
 
//Display Media 
} else if($post_type_int == 4) {
	include 'include_components/posts/posts_shareshare/display_posts/post_text.php'; 
 
//Display Link
} else if($post_type_int == 5) {  
	include 'include_components/posts/posts_shareshare/display_posts/post_text.php'; 
 
//Display Text
} else if($post_type_int == 6) {  
	include 'include_components/posts/posts_shareshare/display_posts/post_text.php'; 
 
//Display File
} else if($post_type_int == 7) { 
	include 'include_components/posts/posts_shareshare/display_posts/post_file.php'; 
 
//Display Error
} else {
	include 'include_components/posts/posts_shareshare/display_posts/post_error.php'; 
}
?>

