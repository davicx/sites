<!-- Folder Name Edit (hidden) -->
<div id = "js-folder-name-edit_<?php echo $folder_id; ?>" class = "js-folder-name-edit folder-name-edit hide">

	<!-- Insert New Name -->
	<div class = "folder-edit-name-area">
		<input type="text" name="" id = "js-rename-folder-new-name_<?php echo $folder_id; ?>" class = "folder-edit-name-text-input-box " value="<?php echo $folder_name; ?>" >
	</div>
	
	<!-- Save or Cancel -->
	<div class = "folder-edit-name-save-area">
		
		<!-- Save -->
		<div id = "js-save-folder-name_<?php echo $folder_id; ?>" class = "js-save-folder-name">
			<img title = "Home Page" src="<?php echo ICON; ?>actions/check_green_twoIMAGE.png" class = "" alt="Save">
		</div>		
		
		<!-- Cancel -->
		<div class = "js-folder-edit-name-cancel file-edit-individual-action-area">
			<img title = "Home Page" src="<?php echo ICON; ?>actions/cancel_red_twoIMAGE.png" class = "" alt="Cancel">
		</div>	
	</div>

</div>
