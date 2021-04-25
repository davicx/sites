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
    			   
		<!-- MODAL: Header -->
		<div class="uk-modal-header">
			<div class="uk-grid uk-grid-modal-adjust">
				
				<!-- Header Text -->
				<div class="uk-width-9-10">
					<h4><b> Edit Your Group </b></h4>
				</div>
				
				<!-- Header Close --> 
				<div class="uk-width-1-10">
					<a class="uk-modal-close uk-close"></a>								
				</div>
			</div>	
		</div>

		<!-- MODAL: Body -->
		<div id = ""> 
			<div class="uk-grid uk-grid-modal-adjust">			
				
				<!-- Rename Group -->
				<div class="uk-grid">
					<div class="uk-width-1-1 ">
				
						<!-- Group Name -->
						<div id = "js-group-name_<?php echo $group_id; ?>" class = "js-group-name">	
							<p id = "js-current-group-name_<?php echo $group_id; ?>"> <b>Group Name: </b><?php echo $group_name; ?> </p>
							<p id = "js-group-rename_<?php echo $group_id; ?>" class = "js-group-rename button-blue edit-group-button"> Edit Name </p>
							<p id = "js-group-leave_<?php echo $group_id; ?>" class = "js-group-leave button-white edit-group-button"> Leave </p>
						</div>

						<!-- Rename Group -->
						<div id = "js-group-edit-name_<?php echo $group_id; ?>" class = "hide js-group-edit-name">	
							<input type="text" id = "js-rename-group_<?php echo $group_id; ?>" name="" class = "edit-profile-input-box " value="<?php echo $group_name; ?>">
							<p id = "js-group-rename-save_<?php echo $group_id; ?>" class = "js-group-rename-save button-blue  edit-group-button"> save </p>
							<p id = "js-group-rename-cancel_<?php echo $group_id; ?>" class = "js-group-rename-cancel button-white  edit-group-button"> cancel </p>
						</div>
				
					</div>

					<div class="uk-width-1-1 ">
				
						<!-- Leave Group -->
						<div id = "" class = "">	
							
						</div>
				
					</div>
				
					<!-- Set Image -->
					
					
				</div>

				
				<!-- Hidden Variables -->
				<input type="hidden" name="logged-in-user" id = "" value = "<?php echo $logged_in_user; ?>"> 	
				<input type="hidden" name="master-site" id = "" value = "<?php echo $master_site; ?>"> 	
				
			</div>	
		</div>	
		
		
		<!-- FOOTER -->
		<div class="uk-modal-footer">
			<div class="uk-grid">
				<div class="uk-width-medium-7-10 uk-width-small-6-10">
				</div>
				<div class="uk-width-medium-3-10 uk-width-small-4-10">	
						
				</div>
			</div>		
		</div>			
		

	</div>
</div>




 
