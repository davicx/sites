<?php 

//Print Out BreadCrumb 
$folder_trail_array = getFolderBreadcrumb($current_folder);
$folder_trail_array_count = count($folder_trail_array);

for($x = 0; $x < $folder_trail_array_count; $x++) {
	$breadcrumb_folder_id = $folder_trail_array[$x];
	$breadcrumb_folder_name = getFolderName($breadcrumb_folder_id);
	$folder_redirect = "files.php?group_id=". base64_encode($group_id) . "&current_folder=" . $breadcrumb_folder_id;
?> 
	<!-- Each Folder Link -->
	<a href="<?php echo $folder_redirect; ?>" class = "" id = ""> <?php echo $breadcrumb_folder_name; ?> </a> | 
	
<?php } ?>

