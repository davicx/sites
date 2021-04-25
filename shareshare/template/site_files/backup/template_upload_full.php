<?php
	//Required Components
	//Javascript: file_upload.js also the right_click.js code 
	//Server: files.php
	//Server Class: File.php
	
	//Include Page Header 
	require_once('../../functions/page_header.php');
	
	//PART 1: Upload Variables 
	
	//Parent: Determine which parent is being viewed 
	if(isset($_GET["parent"])) {
		$parent_folder = $_GET["parent"];
	} else {
		$parent_folder = 0;
	}
	
	//Folder: Determine which folder is being viewed (I think I don't need this, only parent)
	if(isset($_GET["folder"])) {
		$current_folder = $_GET["folder"];
	} else {
		$current_folder = 0;
	}
	
	//Group: Determine if user is in Group
	if (isset($group_id)) {
		$group_id = $group_id;
	} else {
		$group_id = 0;
	}
	
	//PART 2: Form Upload Keys
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
	
	//Temporary Article Image  
	$upload_key = "temp_article_image";
	$destination = TEMP_ARTICLE_UPLOAD;

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
		#dropzone {width: 800px; min-height: 220px; margin: 20px; border: 1px solid black; }
		.dropzone { float: left; min-width: 300px; min-height: 200px; margin-left: 20px; border: 1px solid blue; }
		</style>
		
    </head>
	
	<body> 	
			
		<!-- SECTION: Normal Upload -->
		<section id = "" class = "">
			<?php 
			$upload_key = "shareshare_file";
			$destination = USER_FILE_UPLOADS;	
			?>
			<form action="" method="post" enctype="multipart/form-data" id="">
			
				<input type="file" name="image" id="js-upload-trigger" class = "">
				<input type="submit" name="upload" id="js-file-upload-default-submit" class = "" value="Upload">
	
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

		<!-- SECTION: Trigger Upload with Jquery -->
		<section id = "upload_form" class = "hide">
			<form action="" method="post" enctype="multipart/form-data" id="">
			
				<!-- Upload File -->				
				<p id = "js-trigger-browse-for-file" class = "file-upload-browse-button"> Browse </p>		
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
		
		
		<!-- SECTION: Dropzone -->
		<section id = "dropzone" class = "hide">	
			
			<!-- Dropzone One: A Folder -->		
			<form action="#"  method="post" class="dropzone" id="my-awesome-dropzone">
				<p> folder </p>
				<div class = "hide">	
					<input type="hidden" name="MAX_FILE_SIZE" value="<?php echo $max; ?>">
					<input type="file" name="image" id="image">
					<input type="submit" name="upload" id="upload" value="Upload">
					<input type="hidden" id = "" name="upload-key" value="<?php echo $upload_key; ?>">
					<input type="hidden" id = "" name="user" value="<?php echo $logged_in_user; ?>">
					<input type="hidden" id = "" name="group-id" value="<?php echo $group_id; ?>">
					<input type="hidden" id = "" name="post-id" value="<?php echo $post_id; ?>">					
					<input type="hidden" id = "" name="folder" value="<?php echo $current_folder; ?>">
					<input type="hidden" id = "" name="parent" value="<?php echo 45; //$parent_folder; ?>">		
					<input type="hidden" id = "" name="destination" value="<?php echo $destination; ?>">	
					<input type="hidden" id = "" name="caption" value="<?php echo $caption; ?>">					
					<input type="hidden" id = "" name="redirect" value="<?php echo $redirect; ?>">		
					<input type="hidden" id = "" name="master-site" value="<?php echo $master_site; ?>">
					
					<!-- Folder: This is current folder ID -->
					<input type="hidden" id = "" name="upload-folder" value="<?php echo $upload_into_folder; ?>">		
				</div>	
			</form> 
			
			<!-- Dropzone Two: Parent Upload (or just set the upload folder to 0?) -->
			<form action="#"  method="post" class="dropzone" id="my-awesome-dropzone">
				<p> Parent </p>
				<div class = "hide">	
					<input type="hidden" name="MAX_FILE_SIZE" value="<?php echo $max; ?>">
					<input type="file" name="image" id="image">
					<input type="submit" name="upload" id="upload" value="Upload">
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
				</div>	
			</form> 
			
		</section>	

	</body>
</html>