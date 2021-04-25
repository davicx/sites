<?php 
	//Include Page Header 
	require_once('../../functions/files.php');

	//PART 1: Form Upload Keys
	//Temporary Article Image  
	$upload_key = "upload_article";
	$destination = POST_UPLOAD;	


?>

<!-- SECTION: Trigger Upload with Jquery -->
<section id = "upload_form">
	
		<!-- Upload File -->				
		<div class = "">
			<p id = "js-trigger-browse-for-file-article-temp-photo" class = "file-upload-browse-button"> Add File + </p>		
			<p id = "js-trigger-upload-file-article-temp-photo" class = "hide file-upload-upload-button"> Upload </p>
			<p id = "js-selected-file-name-article-temp-photo" class = "file-upload-selected-file-name"></p>
			<p id = "js-full-name-temp" class = "file-upload-selected-file-name"></p>
		</div>	
		
		<!-- Actual Upload (Hidden) -->
		<div class = "hide">
			<input type="file" name="image" id="js-browse-for-file-article-temp-photo" class = "">
			<input type="submit" name="upload-article-image" id="js-file-upload-submit-article-photo" class = "" value="Upload">
		</div>	
		
		<!-- Hidden Values: Upload Specific -->
		<input type="hidden" id = "" name="destination" value="<?php echo $destination; ?>">	
		<input type="hidden" name="notification-message-article"  id = "" value = "<?php echo $notification_message; ?>" > 
		<input type="hidden" name="notification-type-article"  id = "" value = "<?php echo $notification_type; ?>" > 
		<input type="hidden" name="notification-link-article"  id = "" value = "<?php echo $notification_link; ?>" > 


</section>

