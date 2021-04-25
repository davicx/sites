<?php 

require_once('../../functions/posts.php');

//PART 1: Article Specific Variables 
$post_type = "article";
$destination = POST_PHOTO_UPLOAD;
$redirect = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";

//PART 2: Site Specific Notifications 
$notification_message = "shared an article"; 
$notification_type = "new_post_article"; 
$notification_link = $redirect;	

//PART 3: Error Handling Variables 
$article_error_message = "Please enter an article link ";

?> 

<!-- POST: Article -->
<form action="#" method="post" enctype="multipart/form-data">
	
	<!-- Article Link and Title -->	
	<p class = "new-post-text"> Enter Article Link </p>
	<input type="text" name="article-link" id = "js-article-link" class = "post-link-input-full" value = "" placeholder="Enter the Link">
	<p id = "js-error-no-article-link hide"> Please Enter a Link </p>
		
	<p class = "new-post-text"> Enter Article Title </p>
	<input type="text" name="article-title" id = "" class = "post-link-input-full" value = "" placeholder="Enter the Link">

	<!-- Article Caption -->
	<p class = "new-post-text"> Enter Article Caption </p>
	<textarea name="article-caption" id = "" class = "post-input-text-full" placeholder="Enter the Caption"></textarea>
	
	<!-- Upload File -->				
	<div class = "">
		<p class = "new-post-text">Add a Photo to the Article Link </p>
		<p id = "js-trigger-browse-for-post-article" class = "file-upload-browse-button"> Add Photo + </p>		
		<p id = "js-trigger-upload-post-article" class = "file-upload-upload-button"> Make Post </p>
		<p id = "js-selected-upload-post-article-name" class = "file-upload-selected-file-name"></p>
	</div>	
	
	<!-- Actual Upload (Hidden) -->
	<div class = "hide">
		<input type="file" name="file-name" id="js-browse-for-post-article">
		<input type="submit" value="Upload Image" name="post-article-upload" id="js-post-article-upload-submit" >
	</div>	
	
	<!-- Hidden Values -->	
	<input type="hidden" id = "" name="logged-in-user" value="<?php echo $logged_in_user; ?>">
	<input type="hidden" id = "" name="redirect" value="<?php echo $redirect; ?>">	
	<input type="hidden" id = "" name="destination" value="<?php echo $destination; ?>">	
	<input type="hidden" id = "" name="master-site" value="<?php echo $master_site; ?>">
	<input type="hidden" id = "" name="post-type"  id = "" value = "<?php echo $post_type; ?>"> 		
	<input type="hidden" id = "" name="group-id" value="<?php echo $group_id; ?>">	
	<input type="hidden" id = "" name="post-from"  id = "" value = "<?php echo $logged_in_user; ?>" >		
	<input type="hidden" id = "" name="post-to"  id = "" value = "<?php echo $post_to; ?>"> 		
	<input type="hidden" id = "" name="notification-message"  id = "" value = "<?php echo $notification_message; ?>" > 
	<input type="hidden" id = "" name="notification-type"  id = "" value = "<?php echo $notification_type; ?>" > 
	<input type="hidden" id = "" name="notification-link"  id = "" value = "<?php echo $notification_link; ?>" > 
			
</form>





<?php /*
<div class = "">
	<div class="uk-grid">		
			
		<!-- SECTION: Link -->
		
		
		<!-- SECTION: Description -->
		
		
		<!-- SECTION: Add Photo -->
		
		
		<!-- SECTION: Caption -->

	</div>	

</div>	


<div id = "js-article-select-post-type" class = "uk-width-10-10">
	<p id = "js-show-article-link" class = "article-post-type-text"> Use Link </p>		
	<p class = "article-post-type-text"> | </p>		
	<p id = "js-show-article-upload" class = "article-post-type-text">	Use Upload </p>			
</div>
	
<!-- TYPE 1: Use Link -->
<div id = "js-article-link" class = "uk-width-10-10">
	<p>	Link </p>
	<input type="text" name="" id = "" value= "" class = "" placeholder="Enter the Article Link"><br />
</div>

<!-- TYPE 2: Use Upload -->
<div id = "js-article-upload" class = "hide uk-width-10-10">
	<p>	Upload </p>	
	<input type="text" name="" id = "" value= "" class = "" placeholder="Enter the Article Link"><br />
</div>			 

<!-- SECTION: Caption -->
<div class="uk-width-10-10">
	<p class = "new-post-text"> Link Description </p>
	<input type="text" name="" id = "" value= "" class = "" placeholder="Enter the Article Link"><br />
	
	<p class = "new-post-text"> Enter Article Caption </p>
	<textarea name="caption" id = "" class = "article-caption " placeholder="Enter the Caption"></textarea>
</div>		
	

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
<?php 
/*
<!-- POST: Article -->
<div class = "">
	<div class="uk-grid">		
		
		<!-- SECTION: Select Article Upload Type -->
		<div id = "js-article-select-post-type" class = "uk-width-10-10">
			<p id = "js-show-article-link" class = "article-post-type-text"> Use Link </p>		
			<p class = "article-post-type-text"> | </p>		
			<p id = "js-show-article-upload" class = "article-post-type-text">	Use Upload </p>			
		</div>
			
		<!-- TYPE 1: Use Link -->
		<div id = "js-article-link" class = "uk-width-10-10">
			<p>	Link </p>
			<input type="text" name="" id = "" value= "" class = "" placeholder="Enter the Article Link"><br />
		</div>
		
		<!-- TYPE 2: Use Upload -->
		<div id = "js-article-upload" class = "hide uk-width-10-10">
			<p>	Upload </p>	
			<input type="text" name="" id = "" value= "" class = "" placeholder="Enter the Article Link"><br />
		</div>			 
		
		<!-- SECTION: Caption -->
		<div class="uk-width-10-10">
			<p class = "new-post-text"> Link Description </p>
			<input type="text" name="" id = "" value= "" class = "" placeholder="Enter the Article Link"><br />
			
			<p class = "new-post-text"> Enter Article Caption </p>
			<textarea name="caption" id = "" class = "article-caption " placeholder="Enter the Caption"></textarea>
		</div>		


	</div>	

</div>	
*/

?>