<?php 

//PART 1: Page Variables 
$redirect = "groups_files.php?group_id=" . base64_encode($group_id);
 
//PART 2: Get All Folders 
//Select All Folders	
$result_folders = mysqli_query($conn,"SELECT * FROM folders WHERE group_id = '$group_id' 
	AND parent_folder = '$parent_folder' 
	AND folder_status = 1  
	ORDER BY folder_name ASC;");

while($row_folders = mysqli_fetch_array($result_folders)) { 
	$folder_id	 		= $row_folders['folder_id'];
	$Current_Folder 	= new Folder($folder_id);
	$Current_Folder->getFolderInfo($folder_id);														
	$folder_name 		= $Current_Folder->folderName;
	$folder_modified 	= $Current_Folder->folderLastModifiedFormatted; 
	$folder_image		= $Current_Folder->folderImage; 

?>
<div id = "js-folder_<?php echo $folder_id; ?>"  class = "js-folder js-folder-right-click folder">
	
	<!-- Folder Icon -->
	<div class = "folder-icon">
		<img title = "Folder Icon" src="<?php echo ICON; ?>folder/folderIM.png" class = "file-icon-image" alt="F">				
	</div>

	<!-- Folder Name -->
	<div id = "js-folder-name_<?php echo $folder_id; ?>" class = "js-folder-name folder-name ">
		<p id = "js-folder-name-text_<?php echo $folder_id; ?>" class = "inline"> <?php echo $folder_name; ?></p>
	</div>
	
	<!-- Folder Edit Name -->
	<?php include('include_components/files/folder_name_edit.php'); ?>	

	<!-- Folder Modified -->	
	<div id = "js-folder-modified_<?php echo $folder_id; ?>" class = "js-folder-modified folder-modified">
		<p><?php echo $folder_modified; ?></p>	
	</div>	
	
	<!-- Folder Size -->	
	<div id = "js-folder-size_<?php echo $folder_id; ?>" class = "js-folder-size folder-download ">
		<p> &nbsp </p>	
	</div>	

	<!-- Folder Setting -->
	<div id = "js-folder-settings_<?php echo $folder_id; ?>" class = "js-folder-settings folder-settings">
		<?php include('include_components/files/folder_settings.php'); ?>	
	</div>			

</div>

<!-- Hidden Input Variables -->
<a href="<?php echo $redirect; ?>&parent_folder=<?php echo $folder_id; ?>" class = "folder hide " id = "js-open-folder-link_<?php echo $folder_id; ?>"> Link &nbsp </a>									
<input type="hidden" name="logged-in-user"  id = "" value = "<?php echo $logged_in_user; ?>"> 						
<input type="hidden" name="is-folder"  id = "js-is-file_<?php echo $folder_id;?>" value = "1"> 
<input type="hidden" name="current-folder"  id = "" value = "<?php echo $parent_folder; ?>"> 

<?php } ?>


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
	

</div>


<?php */ ?>