<?php 
$parent = 0;

//PART 1: Video Specific Variables 
$post_type = "video";

//PART 2: Site Specific Notifications 
$notification_message = "shared a video"; 
$notification_type = "new_post_video"; 
$notification_link = "posts.php?group_id=" . base64_encode($group_id);

//PART 3: Error Handling Variables 
$video_error_message = "Please enter a video link ";

?> 

<!-- POST: Video -->
<div class = "make-post-article">
	<div class="uk-grid ">		
		
		<!-- Caption -->			
		<div class="uk-width-10-10">
			<p class = "new-post-text"> Enter Article Caption </p>
			<textarea name="caption" id = "" class = "article-caption " placeholder="Enter the Caption"></textarea>
		</div>
		
		<!-- Select Link or Upload -->
		<div id = "js-article-select-post-type" class = "uk-width-10-10">
			<p id = "js-show-article-link">	Use Link </p>		
			<p id = "js-show-article-upload">	Use Upload </p>		
		</div>
		
		<hr />
		
		<!-- TYPE 1: Use Link -->
		<div id = "js-article-link" class = "uk-width-10-10">
			<p>	Link </p>
			<input type="text" name="" id = "" value= "" class = "" placeholder="Enter the Article Link"><br />
		</div>
		

		<!-- TYPE 2: Use Upload -->
		<div id = "js-article-upload" class = "hide uk-width-10-10">
			<p>	Upload </p>	
		</div>
		
		
		<?php /*
		<!-- Video URL: Database post_url -->	
		<div class="uk-width-10-10">		
			<p class = "new-post-text"> Enter Article URL </p>			
			<input type="text" name="video-url" id = "" value= "" class = "post-link-input-full" placeholder="Enter the Video Link"><br />
		</div>
		
		<!-- Caption: Database post_caption -->	
		<div class="uk-width-10-10">				
			<textarea name="video-caption" id = "js-post-video-caption" class = "post-input-text-full" placeholder="Enter the Caption"></textarea>
			<div id = "js-video-comment-warning" class = "hide"> <?php echo $video_error_message; ?> </div>
		</div>
	
		<!-- Submit Button -->
		<div class="uk-width-10-10">			
			<button type="button" id="js-make-post-video-submit"  class = "button-blue post-button-video "> Share Article </button>
			<button type="button" class="uk-modal-close button-white post-button-video">Cancel</button>
		</div>				
		*/ ?> 
	</div>	
</div>	

