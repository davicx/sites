<?php
	//Required Components
	//Javascript: files.js code 
	//Server: files.php
	//Server Class: File.php
	
	//Include Page Header 
	require_once('../../functions/page_header.php');
	require_once('../../functions/files.php');	
	
	//PART 1: Form Upload Keys
	//Wishlist 
	$upload_key = "wishlist_image";
	$destination = FILE_UPLOAD;	
	
	//Shareshare Post
	$upload_key = "shareshare_post";
	$destination = FILE_UPLOAD;

	//Shareshare File (put in file system)
	$upload_key = "shareshare_file";
	$destination = FILE_UPLOAD;	
	
	//User Profile 
	$upload_key = "user_profile";
	$destination = USER_IMAGE;	
	
	//Post Image (post_images)
	$upload_key = "post_image";
	$destination = POST_UPLOAD;
	
	//User File Upload (user_file_uploads)
	$upload_key = "user_file_upload";
	$destination = USER_FILE_UPLOADS;

	//Temporary Article Image  
	$upload_key = "temp_article_image";
	$destination = TEMP_ARTICLE_UPLOAD;

?>


<!-- SECTION: Trigger Upload with Jquery -->
<section id = "upload_form">
	<form action="" method="post" enctype="multipart/form-data" id="uploadImage">
	
		<!-- Upload File -->				
		<p id = "js-trigger-browse-for-file" class = "file-upload-browse-button"> Add File + </p>		
		<p id = "js-trigger-upload-file" class = "file-upload-upload-button"> Upload </p>
		<p id = "js-selected-file-name" class = "file-upload-selected-file-name"></p>
		
		<!-- Actual Upload (Hidden) -->
		<div class = "hide">
			<input type="file" name="image" id="js-browse-for-file" class = "hide">
			<input type="submit" name="upload" id="js-file-upload-submit" class = "hide" value="Upload">
		</div>	
		
		<!-- Hidden Values -->
		<input type="hidden" name="max-file-size" value="<?php echo $max; ?>">
		<input type="hidden" id = "" name="upload-key" value="<?php echo $upload_key; ?>">
		<input type="hidden" id = "" name="user" value="<?php echo $logged_in_user; ?>">
		<input type="hidden" id = "" name="group-id" value="<?php echo $group_id; ?>">
		<input type="hidden" id = "" name="post-id" value="<?php echo $post_id; ?>">
		<input type="hidden" id = "" name="folder" value="<?php echo $current_folder; ?>">
		<input type="hidden" id = "" name="parent" value="<?php echo $parent_folder; ?>">
		<input type="hidden" id = "" name="destination" value="<?php echo $destination; ?>">
		<input type="hidden" id = "" name="caption" value="<?php echo $caption; ?>">
		<input type="hidden" id = "" name="redirect" value="<?php echo $redirect; ?>">
		<input type="hidden" id = "" name="master-site" value="<?php echo $master_site; ?>">
		
	</form>
</section>

