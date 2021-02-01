<?php 
$upload_key = "shareshare_file";
$destination = FILE_UPLOAD;	

$notification_message = "uploaded files to a group ";
//$notification_link = "";
$notification_link    = "groups_lists.php?group_id=" . base64_encode($group_id);
?>

<!-- File and Folder Related -->
<div class = "file-user-actions"> 
	
	<!-- New Folder -->
	<div class = "file-actions-new-folder">
		<p id = "js-create-new-folder" class = "file-actions-text"> Folder (+) </p>
	</div>	
	
	<!-- Upload File -->
	<form action="" method="post" enctype="multipart/form-data" id="" class = "">
	
		<!-- Upload File -->				
		<div class = "file-actions-new-file">
			<p id = "js-trigger-browse-for-file" class = "file-upload-browse-button file-actions-text"> File (+) </p>		
			<p id = "js-trigger-upload-file" class = "hide file-upload-upload-button file-actions-upload-text"> Upload (+)</p> 
			<p id = "js-selected-file-name" class = "file-upload-selected-file-name file-actions-file-name"></p>
		</div>
		
		<!-- Actual Upload (Hidden) -->
		<div class = "hide">
			<input type="file" name="image" id="js-browse-for-file" class = "hide">
			<input type="submit" name="upload-file-system" id="js-file-upload-submit" class = "hide" value="Upload">
		</div>	

		<!-- Hidden Values -->
		<input type="hidden" name="max-file-size" value="<?php echo $max; ?>">
		<input type="hidden" id = "" name="upload-key" value="<?php echo $upload_key; ?>">
		<input type="hidden" id = "" name="logged-in-user" value="<?php echo $logged_in_user; ?>">
		<input type="hidden" id = "" name="group-id" value="<?php echo $group_id; ?>">
		<input type="hidden" id = "" name="post-id" value="<?php echo $post_id; ?>">
		<input type="hidden" id = "" name="folder" value="<?php echo $current_folder; ?>">
		<input type="hidden" id = "" name="parent" value="<?php echo $parent_folder; ?>">
		<input type="hidden" id = "" name="destination" value="<?php echo $destination; ?>">
		<input type="hidden" id = "" name="caption" value="<?php echo $caption; ?>">
		<input type="hidden" id = "" name="redirect" value="<?php echo $redirect; ?>">
		<input type="hidden" id = "" name="notification-message" value="<?php echo $notification_message; ?>">
		<input type="hidden" id = "" name="notification-type" value="<?php echo $notification_type; ?>">
		<input type="hidden" id = "" name="notification-link" value="<?php echo $notification_link; ?>">
		<input type="hidden" id = "" name="master-site" value="<?php echo $master_site; ?>">		
	</form>
	
</div>

