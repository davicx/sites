<?php 
/*
//Required Components
//Javascript: file_upload.js also the right_click.js code 
//Server: files.php
//Server Class: File.php
*/
	
//User Profile 
$destination = USER_IMAGE;	

//PART 3: Variable Keys
$master_site = MASTER_SITE;
$redirect = "user_profile.php";
$max = 10485760;
$caption = "yo dawg";
$upload_into_folder = 7;
$post_id = 0;	
$current_folder = 0;
$parent_folder = 0;
$upload_key = "user_profile";

?>
<form action="" method="post" enctype="multipart/form-data" id="">

	<input type="file" name="image" id="" class = ""><br />
	<input type="submit" name="change-user-image" id="" class = "button-blue change-profile-image-button" value="Upload">

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
<?php

/*

<form action="" method="post" enctype="multipart/form-data" id="">

	<input type="file" name="image" id="" class = ""><br />
	<input type="submit" name="change-user-photo" id="upload-user-image" class = "button-blue change-profile-image-button" value="Upload">

	<!-- Hidden Values -->
	<input type="hidden" name="max-file-size" value="<?php echo $max; ?>">
	<input type="hidden" id = "" name="logged-in-userlogged-in-user" value="<?php echo $logged_in_user; ?>">
	<input type="hidden" id = "" name="redirect" value="<?php echo $redirect; ?>">
	<input type="hidden" id = "" name="destination" value="<?php echo $destination; ?>">
	<input type="hidden" id = "" name="master-site" value="<?php echo $master_site; ?>">
	
</form>
*/ ?>