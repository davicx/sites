<?php 
$upload_key = "shareshare_file";
$destination = FILE_UPLOAD;	

$notification_message = "uploaded files to a group ";
//$notification_link = "";
$notification_link    = "groups_lists.php?group_id=" . base64_encode($group_id);
?>

<!-- File and Folder Related -->
<div class = "file-user-actions"> 
	<form action="" method="post" enctype="multipart/form-data" id="" class = "">
	
		<!-- Upload File -->				
		<p id = "js-trigger-browse-for-file" class = "file-upload-browse-button new-file-text"> File (+) </p>		
		<p id = "js-trigger-upload-file" class = "hide file-upload-upload-button"> Upload </p>
		<p id = "js-selected-file-name" class = "file-upload-selected-file-name"></p>

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
	<p id = "js-create-new-folder" class = "new-file-text"> Folder (+) </p>
</div>

<!-- Selected File Actions -->
<div id = "js-selected-file-actions" class = "file-user-actions hide"> 
	<p id = "js-selected-file-name-display"> </p> 
	<p id = "" class = "js-header-trigger-file-rename text-button"> Rename File </p>
	<p id = "" class = "js-trigger-delete-file text-button"> Delete File </p>
</div>

<!-- Selected Folder Actions -->
<div id = "js-selected-folder-actions" class = "file-user-actions hide"> 
	<p id = "js-selected-folder-name-display"> </p> 
	<p id = "" class = "js-header-trigger-folder-rename text-button"> Rename Folder </p>
	<p id = "" class = "js-trigger-delete-folder text-button"> Delete Folder </p>
</div>

