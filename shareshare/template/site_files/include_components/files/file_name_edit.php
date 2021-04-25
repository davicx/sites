
<!-- File Name Edit (hidden) -->
<div id = "js-file-name-edit_<?php echo $file_id; ?>" class = "js-file-name-edit file-name hide">
		
	<div class = "file-edit-name-area">
		<input type="text" name="" id = "js-rename-file-new-name_<?php echo $file_id; ?>" class = "file-edit-name-text-input-box" value="<?php echo $file_name; ?>" >
	</div>
	<div class = "file-edit-select-area">
		<p id = "js-save-file-name_<?php echo $file_id; ?>" class = "js-file-edit-name-save inline"> save </p>
		<p class = "js-file-edit-name-cancel inline"> cancel </p>
	</div>	
</div>	
<?php /*
<p id = "js-save-file-name_<?php echo $file_id; ?>" class = "js-file-edit-name-save inline"> save </p>
<p class = "js-file-edit-name-cancel inline"> cancel </p>
*/ ?>


<?php /*
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
*/ ?>
