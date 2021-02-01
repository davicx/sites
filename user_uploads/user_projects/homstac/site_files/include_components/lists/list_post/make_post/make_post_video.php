<?php 
$parent = 0;

//PART 1: Video Specific Variables 
$post_type = "video";

//PART 2: Site Specific Notifications 
$notification_message = "shared to a list "; 
$notification_type = "new_post_video"; 
$notification_link    = "groups_lists.php?group_id=" . base64_encode($group_id) . "&list_id=" . $list_id;


if($group_id != 0 && $list_id !=0) {
	$notification_message = "shared a video"; 
} else if($group_id != 0) {
	$notification_message = "shared a video"; 
} else if ($list_id !=0) {
	$notification_message = "shared a video to a list"; 
} else {
	$notification_message = "posted a video on your wall"; 
}

//PART 3: Error Handling Variables 
$video_error_message = "Please enter a video link ";

?>

<!-- POST: Video -->
<div class = "make-post-video">

	<form action="" id="add-video">	
		
		<!-- Video URL: Database post_url -->	
		<input type="text" name="video-url" id = "" value= "https://www.youtube.com/watch?v=c-ayuRE5xd8" class = "" placeholder="Enter the URL"><br />

		<!-- Caption: Database post_caption -->					
		<textarea name="video-caption" id = "js-post-video-caption" class = "" placeholder="Enter the Caption"></textarea>
		
		<div id = "js-video-comment-warning" class = "hide"> <?php echo $video_error_message; ?> </div>

		<!-- Submit Button -->
		<button type="button" id="js-make-post-video-submit"  class = ""> Share Video </button>
		<button type="button" class="uk-modal-close">Cancel</button>
	
		<!-- Hidden Values: Post Specific -->
		<input type="hidden" name="logged-in-user"  id = "" value = "<?php echo $logged_in_user; ?>"> 			
		<input type="hidden" name="visiting-friend"  id = "" value = "<?php echo $visiting_friend; ?>"> 	
		<input type="hidden" name="post-from"  id = "js-video-post-from" value = "<?php echo $logged_in_user; ?>" > 
		<input type="hidden" name="post-to"  id = "js-video-post-to" value = "<?php echo $post_to; ?>"> 		
		<input type="hidden" name="folder" id = "" value="">
		<input type="hidden" name="parent"  id = "js-video-parent" value = "<?php echo $parent; ?>" >
		<input type="hidden" name="group-id" id = "js-video-group-id" value="<?php echo $group_id; ?>">
		<input type="hidden" name="list-id"  id = "js-video-list-id" value = "<?php echo $list_id; ?>" > 		
		<input type="hidden" name="post-type"  id = "js-video-post-type" value = "video"> 
		<input type="hidden" name="notification-message"  id = "js-video-notification-message" value = "<?php echo $notification_message; ?>" > 
		<input type="hidden" name="notification-link"  id = "js-video-notification-link" value = "<?php echo $notification_link; ?>" > 		
		<input type="hidden" name="notification-type"  id = "js-video-notification-type" value = "<?php echo $notification_type; ?>" > 		
		<input type="hidden" name="master-site" id = "js-video-master-site" value="<?php echo $master_site; ?>">			

	</form> 
</div>	

