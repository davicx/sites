<!-- SECTION: Group Settings -->
<?php
	//Group Information 
	//$Current_Group = new Group($group_id);
	//$Current_Group->getGroupUsers($logged_in_user, $group_id);
	//$Current_Group->groupCreated($logged_in_user, $group_id);
	//$group_name = $Current_Group->groupName;	
	
?>	


<!-- MODAL: Open Modal -->
<a href="#modal-group-settings" data-uk-modal>
	<img title = "Home Page" src="<?php echo ICON; ?>menu/squares_2.png" class = "group-header-settings-icon" alt="">
</a>


<!-- MODAL: Group Settings Modal -->
<div id="modal-group-settings" class="uk-modal">
    <div class="uk-modal-dialog">
        <a class="uk-modal-close uk-close"></a>
				   
				   
			<!-- Group Name -->
			<div id = "js-group-name_<?php echo $group_id; ?>" class = "js-group-name">	
				<p id = "js-current-group-name_<?php echo $group_id; ?>"> <b><?php echo $group_name; ?></b> </p>
				<p id = "js-group-rename_<?php echo $group_id; ?>" class = "js-group-rename"> edit name </p>
			</div>

			<!-- Rename Group -->
			<div id = "js-group-edit-name_<?php echo $group_id; ?>" class = "hide js-group-edit-name">	
				<input type="text" id = "js-rename-group_<?php echo $group_id; ?>" name="" value="<?php echo $group_name; ?>">
				<p id = "js-group-rename-save_<?php echo $group_id; ?>" class = "js-group-rename-save"> save </p>
				<p id = "js-group-rename-cancel_<?php echo $group_id; ?>" class = "js-group-rename-cancel"> cancel </p>
			</div>

			<!-- Leave Group -->
			<div id = "" class = "">	
				<p id = "js-group-leave_<?php echo $group_id; ?>" class = "js-group-leave"> Leave </p>
			</div>
					
			<!-- Hidden Variables -->
			<input type="hidden" name="logged-in-user" id = "" value = "<?php echo $logged_in_user; ?>"> 	
			<input type="hidden" name="master-site" id = "" value = "<?php echo $master_site; ?>"> 	
    
	</div>
</div>




 
