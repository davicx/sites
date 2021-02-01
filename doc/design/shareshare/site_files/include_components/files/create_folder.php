<!-- FOLDER: Create New Folder -->
<p id = "js-show-create-folder"> Folder + </p>


<!-- FOLDER: New Folder Area -->
<div id = "js-create-new-folder-area" class = "hide new-folder-area">
	
	<!-- New Folder -->
	<input type="text" name="" id = "js-create-new-folder-name" class = "new-folder-name-input" value="" >
	<p id = "js-save-new-folder-create"> Folder + </p>
	<p class = "js-cancel-create-folder"> Cancel </p>
	
	<!-- Hidden Values -->
	<input type="hidden" name="new-folder-parent"  id = "" value = "<?php echo $parent_folder; ?>"> 
	<input type="hidden" name="logged-in-user"  id = "" value = "<?php echo $logged_in_user; ?>" > 
	<input type="hidden" name="master-site"  id = "" value = "<?php echo $master_site; ?>" > 	
	<input type="hidden" name="group-id"  id = "" value = "<?php echo $group_id; ?>" > 	

</div>



<?php /*
<!-- FOLDER -->
<div id = "js-create-new-folder-area" class = "hide file">

	<!-- Folder Icon -->
	<div class = " file-icon">
		<img title = "Folder Icon" src="<?php echo ICON; ?>folder/folder.png" class = "file-icon-image" alt="">					
	</div>
	

	<!-- Folder Name Edit (hidden) -->
	<div class = "file-name-edit">
		
		<!-- Insert New Name -->
		<div class = "file-edit-name-area">
			<input type="text" name="" id = "js-create-new-folder-name" class = "file-edit-name-text-input-box" value="" >
		</div>
		
		<!-- Save or Cancel -->
		<div class = "file-edit-select-area">
			<div id = "js-save-new-folder-create" class = "file-edit-individual-action-area">
				<img title = "Home Page" src="<?php echo ICON; ?>actions/check_green_two.png" class = "file-edit-name-action-image" alt="">
			</div>		
			<div class = "js-cancel-new-folder-create file-edit-individual-action-area">
				<img title = "Home Page" src="<?php echo ICON; ?>actions/cancel_red_two.png" class = "file-edit-name-action-image" alt="">
			</div>	
		</div>
	</div>
	
	<!-- Folder Modified -->	
	<div id = "" class = "hide file-modified">
		<p> &nbsp </p>
	</div>	
	
	<!-- Folder Size -->	
	<div id = "" class = "hide file-download ">
		<p> &nbsp </p>
	</div>	

	<!-- Folder Setting -->
	<div id = "" class = "hide file-settings ">
		
	</div>	

	<!-- Hidden Values -->
	<input type="hidden" name="new-folder-parent"  id = "" value = "<?php echo $current_folder; ?>"> 
	<input type="hidden" name="new-folder-group"  id = "" value = "<?php echo $group_id; ?>"> 
	<input type="hidden" name="logged-in-user"  id = "" value = "<?php echo $logged_in_user; ?>" > 

</div>
*/ ?>
