<?php 

//Select All Folders	
$result_files = mysqli_query($conn,"SELECT * FROM files WHERE group_id = '$group_id' 
	AND parent_folder = '$parent_folder' 
	AND file_status = 1  
	AND is_folder = 0 
	ORDER BY file_name ASC;");

while($row_folders = mysqli_fetch_array($result_folders)) { 
	$folder_id	 		= $row_folders['file_id'];
	$Current_File 		= new File($folder_id);
	$Current_File->getFileInfo($folder_id);														
	$file_icon	 		= $Current_File->fileImage; 
	$file_name 			= $Current_File->fileName;
	$file_modified 		= $Current_File->fileLastModifiedFormatted; 
	$file_image_test	= $Current_File->fileImage; 
	$file_type 			= $Current_File->fileTypeExtension;	
	
?>
	<div class = "folder">
		<p><?php echo $file_name; ?></p>
	</div>
<!-- FOLDER -->
<?php /*
<div id = "js-folder_<?php echo $folder_id; ?>" class = "js-folder js-folder-right-click js-droppable js-draggable file ">

	<!-- Folder Icon -->
	<div class = "js-file-icon file-icon">
		<img title = "Folder Icon" src="<?php echo ICON; ?>folder/folder.png" class = "file-icon-image" alt="">					
	</div>
	
	<!-- Folder Name -->
	<div id = "js-file-name_<?php echo $folder_id; ?>" class = "js-file-name file-name ">
		<p id = "js-file-name-text_<?php echo $folder_id; ?>" class = "file-name-text"> <?php  echo $file_name; ?></p>
	</div>

	<!-- Folder Name Edit (hidden) -->
	<div id = "js-file-name-edit_<?php echo $folder_id; ?>" class = "js-file-name-edit file-name-edit hide">
		
		<!-- Insert New Name -->
		<div class = "file-edit-name-area">
			<input type="text" name="" id = "js-rename-file-new-name_<?php echo $folder_id; ?>" class = "file-edit-name-text-input-box" value="<?php echo $file_name; ?>" >
		</div>
		
		<!-- Save or Cancel -->
		<div class = "file-edit-select-area">
			
			<!-- Save -->
			<div id = "js-save-file-name_<?php echo $folder_id; ?>" class = "js-file-edit-name-save file-edit-individual-action-area">
				<img title = "Home Page" src="<?php echo ICON; ?>actions/check_green_two.png" class = "file-edit-name-action-image" alt="">
			</div>		
			
			<!-- Cancel -->
			<div class = "js-file-edit-name-cancel file-edit-individual-action-area">
				<img title = "Home Page" src="<?php echo ICON; ?>actions/cancel_red_two.png" class = "file-edit-name-action-image" alt="">
			</div>	
		</div>
	</div>


	<!-- Folder Modified -->	
	<div id = "js-file-modified_<?php echo $folder_id; ?>" class = "js-file-modified file-modified">
		<p class = "file-modified-text"> <?php echo $file_modified; ?></p>
	</div>	
	
	<!-- Folder Size -->	
	<div id = "js-file-size_<?php echo $folder_id; ?>" class = "js-file-size file-download ">
		<p> &nbsp </p>
	</div>	

	<!-- Folder Setting -->
	<div id = "js-file-settings_<?php echo $folder_id; ?>" class = "js-file-settings file-settings">
		<?php include('include_components/files/folder_settings.php'); ?>		
	</div>			
	
	<!-- Hidden Input Variables -->
	<a href="<?php echo $redirect; ?>&current_folder=<?php echo $folder_id; ?>" class = "folder hide " id = "js-open-folder-link_<?php echo $folder_id; ?>"> Link &nbsp </a>									
	<input type="hidden" name="logged-in-user"  id = "" value = "<?php echo $logged_in_user; ?>"> 						
	<input type="hidden" name="file-extension"  id = "js-file-extension_<?php echo $folder_id;?>" value = "<?php echo $file_type; ?>"> 
	<input type="hidden" name="is-folder"  id = "js-is-file_<?php echo $folder_id;?>" value = "1"> 
	<input type="hidden" name="current-folder"  id = "" value = "<?php echo $current_folder; ?>"> 

</div>


<?php */ } ?>