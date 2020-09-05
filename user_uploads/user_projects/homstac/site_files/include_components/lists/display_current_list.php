<?php 
if (isset($_GET['list_id'])) {
	$current_list_id = $_GET['list_id'];			
	$Current_List_Display = new MasterList($logged_in_user, $list_type, $current_list_id);			
	$Current_List_Display->getListInfo($logged_in_user, $current_list_id);
	$Current_List_Display->getListUsers($logged_in_user, $current_list_id);
	$list_created_by = $Current_List_Display->list_created_by;
	$list_name = $Current_List_Display->list_name;
	//$List_Creator = new User($list_created_by);			
	//$List_Creator->getUserInfo($list_created_by); 
	//$list_creator_name = $List_Creator->fullUserName;

	//$list_creator_image = $List_Creator->userImage;
	//$group_list_link = "groups_lists.php?group_id=" . base64_encode($group_id) . "&list_id=" . $current_list_id;	
?>	
<p> List Name <b><?php echo $list_name ; ?>  </b></p>

<!-- SELECT ALL LISTS -->



<?php } else {
	$current_list_id = "error";	
	
}
?>


