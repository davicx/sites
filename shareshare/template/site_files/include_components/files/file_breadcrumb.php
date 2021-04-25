	
<?php 
//STEP 1: Create an Array of the Folder Trail 
//Create Variables to Hold Folder Trail 
$folder_trail_array = array();
$current_folder_temp = $parent_folder;
$loop_counter = 0;

while($current_folder_temp != 0) {

	$current_folder_internal_loop = $current_folder_temp;

	if ($result = mysqli_prepare($conn, "SELECT parent_folder FROM folders WHERE folder_id=?")) {
		$result -> bind_param("i", $current_folder_temp);
		$result -> execute();
		$result -> bind_result($result_parent_id);
		$result -> fetch();
		$current_folder_temp = $result_parent_id;
		$result -> close();
	} 	
	$parent_folder_internal_loop = 	$current_folder_temp;	
	$folder_trail_array[$loop_counter] = $current_folder_internal_loop;
	//echo getFolderName($current_folder_internal_loop) . " | ";
	
	$loop_counter = $loop_counter + 1;
} 		

$folder_trail_array = array_reverse($folder_trail_array);
$folder_trail_array_count = count($folder_trail_array);

//STEP 2:
?> 
<a href="groups_files.php?group_id=<?php echo base64_encode($group_id); ?>" class = "folder-breadcrumb-text">Home | </a>
<?php
for($x = 0; $x < $folder_trail_array_count; $x++) {
	$folder_id = $folder_trail_array[$x];
	
?> 
<a href="groups_files.php?group_id=<?php echo base64_encode($group_id); ?>&parent_folder=<?php echo $folder_id; ?>" class = "folder-breadcrumb-text"><?php echo getFolderName($folder_id);?> | </a>
<?php } ?>




<?php /*

<!-- <div id = "js-bread-crumb-folder_<?php echo 0; ?>" class = "js-droppable folder-bread-crumb-holder">-->
	
<!--</div>-->

<div id = "js-bread-crumb-folder_<?php echo $folder_id; ?>" class = "js-droppable folder-bread-crumb-holder">
	<!--<a href="file_system.php?current_folder=<?php echo $folder_id; ?> " class = "folder-breadcrumb-text"> <?php echo getFolderName($folder_id) . ""; ?></a>-->
	<a href="groups_files.php?group_id=<?php echo base64_encode($group_id);?>&current_folder=<?php echo $folder_id; ?> " class = "folder-breadcrumb-text"> <?php echo getFolderName($folder_id) . ""; ?></a>
</div>

<?php } 
//group_id=<?php echo base64_encode($group_id); 
//groups_files.php?group_id=MzIx&current_folder=55
*/
?>	   


























