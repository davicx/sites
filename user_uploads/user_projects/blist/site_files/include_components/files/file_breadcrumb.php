<article>
	<div id = "js-bread-crumb-folder_<?php echo 0; ?>" class = "js-droppable folder-bread-crumb-holder">
		<a href="<?php echo $redirect; ?> " class = "folder-breadcrumb-text "> Home </a>
	</div>

<?php 
//TEMP 
if ($result = mysqli_prepare($conn, "SELECT parent FROM files WHERE file_id=?")) {
	$result -> bind_param("i", $current_folder);
	$result -> execute();
	$result -> bind_result($result_parent_id);
	$result -> fetch();
	$parent_folder = $result_parent_id;
	$result -> close();
}
/*echo "CURRENT " . $current_folder; 
echo "<br />"; 		
echo "PARENT " . $parent_folder; 
echo "<br />"; 
*/

//Create Variables to Hold Folder Trail 
$folder_trail_array = array();
$current_folder_temp = $current_folder;
$loop_counter = 0;

while($current_folder_temp != 0) {
	//$number = $number - 1;
	
	$current_folder_internal_loop = $current_folder_temp;

	if ($result = mysqli_prepare($conn, "SELECT parent FROM files WHERE file_id=?")) {
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

for($x = 0; $x < $folder_trail_array_count; $x++) {
	$folder_id = $folder_trail_array[$x];
?>
	
<div id = "js-bread-crumb-folder_<?php echo $folder_id; ?>" class = "js-droppable folder-bread-crumb-holder">
	<!--<a href="file_system.php?current_folder=<?php echo $folder_id; ?> " class = "folder-breadcrumb-text"> <?php echo getFolderName($folder_id) . ""; ?></a>-->
	<a href="groups_files.php?group_id=<?php echo base64_encode($group_id);?>&current_folder=<?php echo $folder_id; ?> " class = "folder-breadcrumb-text"> <?php echo getFolderName($folder_id) . ""; ?></a>
</div>

<?php } 
//group_id=<?php echo base64_encode($group_id); 
//groups_files.php?group_id=MzIx&current_folder=55

?>	   

</article>



























