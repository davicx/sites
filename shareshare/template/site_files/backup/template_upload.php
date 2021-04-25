<?php

	//Include Page Header 
	require_once('../../functions/page_header.php');

	$upload_key = "user_file_upload";
	$destination = USER_FILE_UPLOADS;
	$master_site = MASTER_SITE;
	$redirect = "template_upload.php";
	$caption = "yo dawg";
	$upload_into_folder = 7;
	$post_id = 0;
	
	
	
	////
		//Required Components
	//Javascript: file_upload.js also the right_click.js code 
	//Server: files.php
	//Server Class: File.php
	
	//Include Page Header 
	require_once('../../functions/page_header.php');
	
	//PART 1: Upload Variables 
	
	

	//User File Upload (user_file_uploads)
	$upload_key = "user_file_upload";
	$destination = USER_FILE_UPLOADS;
	
	//PART 3: Variable Keys
	$master_site = MASTER_SITE;
	$redirect = "template_upload.php";
	$caption = "yo dawg";
	$upload_into_folder = 7;
	$post_id = 0;


?>
<!DOCTYPE html>
<html>
    <head>
	    <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Template</title>

		<!-- Include all JS and CSS Files -->
		<?php include_once('include_components/links_head.php') ?>	
		
		<!-- CSS -->
		<style>
		body {background-color: #FFFFFF;} #upload_form {width: 600px; min-height: 200px; margin: 20px; border: 1px solid black; }
		</style>
		
    </head>
	
	<body> 	
			
		<!-- SECTION: Normal Upload -->
		<form action=".../../functions/files_temp.php"" method="post" enctype="multipart/form-data" id="">		
			<input type="file" name="file-upload" id="js-upload-trigger" class = "">
			<input type="submit" name="submit" id="js-file-upload-default-submit" class = "" value="Upload">
		
					
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
			<input type="hidden" id = "" name="master-site" value="<?php echo $master_site; ?>">
			<input type="hidden" id = "" name="redirect" value="<?php echo $redirect; ?>">
	
		
		</form>

	</body>
</html>


<!-- 
<form action="upload.php" method="post" enctype="multipart/form-data">
    Select image to upload:
    <input type="file" name="fileToUpload" id="fileToUpload">
    <input type="submit" value="Upload Image" name="submit">
</form>
-->












