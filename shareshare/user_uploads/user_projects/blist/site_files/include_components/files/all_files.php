<?php 

$result_files = mysqli_query($conn,"SELECT * FROM files WHERE group_id = '$group_id' 
	AND parent = '$current_folder' 
	AND file_status = 1  
	AND is_folder = 0 
	ORDER BY file_name ASC;");
		

while($row_files = mysqli_fetch_array($result_files)) { 
	$file_id	 		= $row_files['file_id'];
	$Current_File 		= new File($file_id);
	$Current_File->getFileInfo($file_id);														
	$file_icon	 		= $Current_File->fileImage; 
	$file_name 			= $Current_File->fileName;
	$file_type 			= $Current_File->fileTypeExtension;
	$file_name_and_type = $file_name . "." . $file_type;
	$file_modified 		= $Current_File->fileLastModifiedFormatted; //This is wrong needs to be modified 
	$file_image_test	= $Current_File->fileImage; 
	
	//Download File Name
	$file_server_name	= $Current_File->fileNameServer; 
	$file_name_download	= $Current_File->fileNameDownload; 
	$file_path 			= FILE_UPLOAD_DISPLAY . $file_server_name; 

?>

<!-- FILE --> 
<div id = "js-file_<?php echo $file_id; ?>" class = "js-file js-file-right-click js-draggable file ">
	
	<!-- File Icon -->
	<div class = "js-file-icon file-icon">
		<div class="thumb" style="background-image: url('<?php echo USER_FILE_UPLOADS . $file_icon; ?>');" title=""></div>	
	</div>
	
	<!-- File Name -->
	<div id = "js-file-name_<?php echo $file_id; ?>" class = "js-file-name file-name ">
		<p id = "js-file-name-text_<?php echo $file_id; ?>" class = "file-name-text"><?php echo $file_name_and_type; ?></p>
	</div>

	
	<!-- File Name Edit (hidden) -->
	<div id = "js-file-name-edit_<?php echo $file_id; ?>" class = "js-file-name-edit file-name-edit hide">
		<div class = "file-edit-name-area">
			<input type="text" name="" id = "js-rename-file-new-name_<?php echo $file_id; ?>" class = "file-edit-name-text-input-box" value="<?php echo $file_name; ?>" >
		</div>
		<div class = "file-edit-select-area">
		
			<!-- Save -->
			<div id = "js-save-file-name_<?php echo $file_id; ?>" class = "js-file-edit-name-save file-edit-individual-action-area">
				<img title = "Home Page" src="<?php echo ICON; ?>actions/check_green_two.png" class = "file-edit-name-action-image" alt="">
			</div>		
			
			<!-- Cancel -->
			<div class = "js-file-edit-name-cancel file-edit-individual-action-area">
				<img title = "Home Page" src="<?php echo ICON; ?>actions/cancel_red_two.png" class = "file-edit-name-action-image" alt="">
			</div>	
		</div>	
	</div>

	<!-- File Modified -->
	<div id = "js-file-modified_<?php echo $file_id; ?>" class = "js-file-modified file-modified">
		<p class = "file-modified-text"> <?php echo $file_modified; ?></p>
	</div>			
	
	<!-- File Download -->
	<div id = "js-file-size_<?php echo $file_id; ?>" class = "js-file-size file-download ">	
		<a title = "<?php echo $file_icon; ?>" id = "js-download-file_<?php echo $file_id; ?>" class = "" href="download.php?file=<?php echo urlencode($file_path)?>&file_name=<?php echo $file_name_download; ?>">
			<img title = "download" src="<?php echo ICON; ?>download/download_4.png" class = "file-download-icon" alt="">
		</a>
	</div>	

	<!-- File Setting -->
	<div id = "js-file-settings_<?php echo $file_id; ?>" class = "js-file-settings file-settings">
		<?php include('include_components/files/file_settings.php'); ?>		
 	</div>							
	
	<!-- Hidden Input Variables -->
	<input type="hidden" name="logged-in-user" id = "" value = "<?php echo $logged_in_user; ?>"> 						
	<input type="hidden" name="file-extension" id = "js-file-extension_<?php echo $file_id;?>" value = "<?php echo $file_type; ?>"> 
	<input type="hidden" name="is-folder" id = "js-is-file_<?php echo $file_id;?>" value = "0"> 	
</div>


<?php } ?>

