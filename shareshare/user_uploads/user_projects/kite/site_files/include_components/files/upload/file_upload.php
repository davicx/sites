
<?php /* 
<!-- SECTION: Upload Form -->
<section id = "upload_form">
	<form action="" method="post" enctype="multipart/form-data" id="uploadImage">
		
		
		<input type="file" name="image" id="image" class = "hide">
		<input type="submit" name="upload" id="js-upload-submit" class = "hide" value="Upload">		
		
		<!-- Hidden Input -->
		<input type="hidden" name="max-file-size" value="<?php echo $max; ?>">		
		<input type="hidden" id = "" name="upload-key" value="<?php echo $upload_key; ?>">
		<input type="hidden" id = "" name="user" value="<?php echo $logged_in_user; ?>">
		<input type="hidden" id = "" name="folder" value="<?php echo $current_folder; ?>">
		<input type="hidden" id = "" name="parent" value="<?php echo $parent_folder; ?>">
		<input type="hidden" id = "" name="destination" value="<?php echo $destination; ?>">
		<input type="hidden" id = "" name="caption" value="<?php echo $caption; ?>">
		<input type="hidden" id = "" name="redirect" value="<?php echo $redirect; ?>">


	</form>
</section>

*/ ?>