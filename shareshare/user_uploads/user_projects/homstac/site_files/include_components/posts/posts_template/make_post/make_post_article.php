<?php 

//PART 1: Site Variables
$post_type = "article"; 
$notification_type = "new_post_article"; 
$parent = 0;

//PART 2: Site Specific Notifications 
$notification_link = "#";

if($group_id != 0 && $list_id !=0) {
	$notification_message = "shared an article"; 
} else if($group_id != 0) {
	$notification_message = "shared an article with the group"; 
} else if ($list_id !=0) {
	$notification_message = "shared an item to a list"; 
} else {
	$notification_message = "posted an article on your wall"; 	
}

//PART 3: Error Handling
$article_error_message = "Please enter an article link ";

?> 


<!-- POST: Article (Part 1: Get Information) -->
<div id = "js-post-article-get-information" class = "make-post-article">

	<!-- Article URL -->
	<input type="text" name="" id = "js-post-article-url" class = "" value = "https://uk.news.yahoo.com/ceo-tech-giant-vmware-gave-083000289.html" placeholder="Enter the Link">

	<!-- Submit: Submit URL For initial confirmation -->
	<p id = "js-make-post-article-initial-submit"> Submit </p>

	<!-- Loading: Article Loading -->
	<div id = "js-article-url-loading" class = "hide">
		<p> Item Loading, Please wait (can take a minute or two, sorry!) </p>
		<div class="uk-modal-spinner">...</div>

		<img src="../images/icons/loading/mountains.png" alt="" class = "loader-icon">
	</div>
	
	<!-- Error: No User Input -->
	<div id = "js-article-comment-warning" class = "hide"> 
		<p><?php echo $article_error_message; ?></p>
	</div>	
	
</div>


<!-- POST: Article (Part 2: Confirm) -->
<div id = "js-post-article-confirm-information"  class = "hide make-post-article ">
<form action="" method="post" enctype="multipart/form-data" id="uploadImage">
	<div class="uk-grid ">			
		
		<form>
		
			<!-- Photo Selection: Photo One -->
			<div class="uk-width-medium-1-4 uk-width-small-1-2 article-photo-selection-area">
				<div class = "article-selection-photo-area">
					<img src="#" alt="" id = "js-article-photo-one" class = "article-temp-photo">
				</div>
				<input type="radio" id = "radio-photo-one" class = "temp-photo-radio" name="photo-selection" value="error.png" checked="checked"> Photo One <br>
			</div>

			<!-- Photo Selection: Photo Two -->		
			<div class="uk-width-medium-1-4 uk-width-small-1-2 article-photo-selection-area">
				<div class = "article-selection-photo-area">
					<img src="#" alt="" id = "js-article-photo-two" class = "article-temp-photo">
				</div>
				<input type="radio" id = "radio-photo-two" class = "temp-photo-radio" name="photo-selection" value="error.png" > Photo Two <br>
			</div>

			<!-- Photo Selection: Photo Three -->		
			<div class="uk-width-medium-1-4 uk-width-small-1-2 article-photo-selection-area">
				<div class = "article-selection-photo-area">
					<img src="#" alt="" id = "js-article-photo-three" class = "article-temp-photo">
				</div>
				<input type="radio" id = "radio-photo-three" class = "temp-photo-radio" name="photo-selection" value="error.png" > Photo Three <br>
			</div>

			<!-- Photo Selection: Photo Four -->					
			<div class="uk-width-medium-1-4 uk-width-small-1-2 article-photo-selection-area">
				<div class = "article-selection-photo-area">
					<img src="#" alt="" id = "js-article-photo-four" class = "article-temp-photo">
					
					<!-- This will allow the user to upload a file of their own if they do not like the ones found by the search -->
					<?php include('include_components/posts/make_post/user_uploaded_article_image.php'); ?>					
				</div>
				<input type="radio" id = "js-article-image-temp-four" class = "temp-photo-radio" name="photo-selection" value="error.png"> Photo Four <br>
			</div>
										
			<!-- Caption -->			
			<div class="uk-width-1-1">
				<textarea name="article-caption" id = "js-post-article-caption" class = "make-post-input-text-area-article" placeholder="Enter the Caption"></textarea>
			</div>		
			
			<!-- Title: Database article_title -->		
			<div class="uk-width-1-1">
				<textarea name="article-title" id = "js-post-article-title" class = "make-post-input-text-area-article " placeholder="Enter a Title"></textarea>
			</div>				
			
			<!-- Description: Database article_text -->				
			<div class="uk-width-1-1">
				<textarea name="article-description" id = "js-post-article-description" class = "make-post-input-text-area-article " placeholder="Enter a Description"></textarea>
			</div>
			
			<!-- Hidden Values: Post Specific -->
			<input type="hidden" name="logged-in-user"  id = "" value = "<?php echo $logged_in_user; ?>"> 				
			<input type="hidden" name="visiting-friend"  id = "" value = "<?php echo $visiting_friend; ?>"> 			
			<input type="hidden" name="post-from"  id = "" value = "<?php echo $logged_in_user; ?>" > 
			<input type="hidden" name="post-to"  id = "" value = "<?php echo $post_to; ?>"> 
			<input type="hidden" name="parent"  id = "js-video-parent" value = "<?php echo $parent; ?>" >
			<input type="hidden" name="post-type"  id = "" value = "<?php echo $post_type; ?>"> 	
			<input type="hidden" name="post-article-url"  id = "js-article-url" value = ""> 	
			<input type="hidden" name="group-id"  id = "js-article-group-id" value = "<?php echo $group_id; ?>"> 				
			<input type="hidden" name="list-id"  id = "js-article-list-id" value = "<?php echo $list_id; ?>"> 		
			<input type="hidden" name="master-site" id = "js-article-master-site" value="<?php echo $master_site; ?>">		
			<input type="hidden" name="notification-message"  id = "js-article-notification-message" value = "<?php echo $notification_message; ?>" > 
			<input type="hidden" name="notification-type"  id = "js-article-notification-type" value = "<?php echo $notification_type; ?>" > 
			<input type="hidden" name="notification-link"  id = "js-article-notification-link" value = "<?php echo $notification_link; ?>" > 

	</div>

	<!-- Submit Button -->	
	<div class="uk-width-1-1">
		<button type="button" id="js-make-post-submit-article"  class = ""> Share Article </button>
		<button type="button" id="js-make-post-submit-article-uploaded-image"  class = "hide"> *Share Article </button>
		<button type="button" class="uk-modal-close">Cancel</button>		
	</div>				
</form>
</div>

