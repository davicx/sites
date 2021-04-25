<?php 
$result_lists = mysqli_query($conn,"SELECT * FROM list WHERE 
	group_id = '$group_id' AND 
	active_status = '1' AND
	is_default = '0' LIMIT 12");	

	
//PART 1: Group Has a List 	
if($result_lists->num_rows > 0) {
	
	while($row_lists = mysqli_fetch_array($result_lists )) { 	
		$display_list_id = $row_lists ['list_id'];
		$list_name = $row_lists ['list_name'];
		$list_name = ucwords($list_name);				
		$Current_List = new MasterList($logged_in_user, $list_type, $display_list_id);			
		$Current_List->getListInfo($logged_in_user, $display_list_id);
		$Current_List->getListUsers($logged_in_user, $display_list_id);
		$list_created_by = $Current_List->list_created_by;
		$List_Creator = new User($list_created_by);			
		$List_Creator->getUserInfo($list_created_by); 
		$list_creator_name = $List_Creator->fullUserName;
		$list_creator_image = $List_Creator->userImage;
		$group_list_link = "groups_lists.php?group_id=" . base64_encode($group_id) . "&list_id=" . $display_list_id;
		if($display_list_id == $list_id) {
			$list_selected_style = "list-selected-text";
		} else {
			$list_selected_style = "list-text";			
		}
?>

<!-- LIST -->
<div id = "js-individual-list_<?php echo $display_list_id; ?>" class = "js-individual-list js-master-list-right-click list">
	
	<!-- Normal List Display -->
	<div id = "js-list-area_<?php echo $display_list_id; ?>" class = "js-list-area">
		
		<!-- List Name -->
		<a id = "js-list-name_<?php echo $display_list_id; ?>" class = " list-name-holder <?php echo $list_selected_style; ?>" href="<?php echo $group_list_link; ?>">
			<div class = "list-name">
				<?php echo $list_name; ?>
			</div>
		</a>
				
		<!-- List Settings Area -->
		<div class = "list-settings">	
			<div id = "js-show-edit-list_<?php echo $display_list_id; ?>" class = "js-show-edit-list list-edit-icon-holder">  
				<img title = "Edit List" src="<?php echo ICON; ?>menu_icon/side_two.png" class = "list-edit-icon" alt="">
			</div>		
		</div>
	</div> 
		
	<!-- Edit List Name -->	
	<div id = "js-edit-list-area_<?php echo $display_list_id; ?>" class = "js-edit-list-area hide">
		
		<div class = "list-name">
			<input type="text" id = "js-edit-list-name-textarea_<?php echo $display_list_id; ?>" class = "js-edit-list-name-textarea list-name-holder " name="" value="<?php echo $list_name; ?>">
		</div>
		<div class = "list-settings">	
			<div class = "js-cancel-edit-list list-edit-icon-holder">  
				<img title = "Edit List" src="<?php echo ICON; ?>menu_icon/side_two.png" class = "list-edit-icon" alt="">
			</div>			
		</div>
		
		<div class = "list-edit-area">
			<div class = "list-name">
				<p> <span id = "js-rename-list_<?php echo $display_list_id; ?>" class = "js-rename-list" > save </span>| 
					<span id = "" class = "js-cancel-edit-list" > cancel </span> | 
					<span id = "js-delete-list_<?php echo $display_list_id; ?>" class = "js-delete-list" > delete </span>
				</p>
			</div>
			<div class = "list-settings">	
				<p id = "js-hide-edit-list_<?php echo $display_list_id; ?>" class = "js-hide-edit-list"> &nbsp </p>
			</div>	
		</div>	

	</div>		
	
</div>

<!-- Hidden Values -->	
<input type="hidden" name="logged-in-user"  id = "" value = "<?php echo $logged_in_user; ?>"> 	
<input type="hidden" name="list-type"  id = "" value = "shareshare-list"> 	


















<?php } 

//PART 2: No Lists Yet 
} else { ?>

	<p> no lists </p>
	
<?php } ?>