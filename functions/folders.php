<?php
require_once('functions.php');
require_once('classes/File.php');
require_once('classes/Notifications.php');
	
//FUNCTIONS TABLE OF CONTENTS//
/*
FUNCTIONS A: Create New Folder 
	1) Function A1: Show Create new Folder Area *no server code
	2) Function A2: Hide Create new Folder Area (Cancel) *no server code	
	3) Function A3: Save New Folder

FUNCTIONS B: Folder Related 
	1) Function B1: Select Folder *no server code
	2) Function B2: Double Click Folder (Open Folder) *no server code
	3) Function B3: Rename Folder *no server code
	4) Function B4: Cancel Rename Folder *no server code 
	5) Function B5: Save New Folder Name *no server code
	6) Function B6: Delete Folder *no server code 

FUNCTIONS C: Global Folder Functions   
	1) Function C1: Global Rename Folder 
	2) Function C2: Global Delete Folder 

FUNCTIONS D: Right Click, Dropzone Related and Drag and Drop  
	1) Function E1: File Right Click Code  
	
*/

//FUNCTIONS A: Create New Folder 

//Function A3: Save New Folder
if (isset($_POST["create_new_folder_name"]) && (!empty($_POST["create_new_folder_name"]))) {
	if (isset($_POST['master-site'])){ $master_site = $_POST['master-site']; } else { $master_site = "shareshare"; }			
	$group_id			= $_POST['group_id'];	
	$parent_folder		= $_POST['parent_folder'];
	$folder_name 		= trim($_POST['create_new_folder_name']);
	$user_name 			= $_POST['logged_in_user'];
	$user_id			= getUserID($user_name);
	$folder_image  		= "folder.png";	
	$folder_status 		= 1;	
	$recycle_status 	= 0;	

	//echo $folder_name . " " . $group_id . " " .  $parent_folder . " " .  $logged_in_user . " " . $user_name . " " . $user_id;

	$stmt = $conn->prepare("INSERT INTO folders
		(master_site, group_id, parent_folder, folder_name, user_name, user_id, folder_image, folder_status, recycle_status, folder_created, folder_last_modified) 
	VALUES (?,?,?,?,?,?,?,?,?, NOW(), NOW())");
	$stmt->bind_param("siissisii", $master_site, $group_id, $parent_folder, $folder_name, $user_name, $user_id, $folder_image, $folder_status, $recycle_status);


	if ($stmt->execute()) {
		echo "New record created successfully";
	} else {
		echo "Error: ". "<br>" . mysqli_error($conn);
	}
	$stmt->close();

}

//FUNCTIONS C: Global Folder Functions   
//Function C1: Global Rename Folder 
if (isset($_POST["new_folder_name"]) && (!empty($_POST["folder_id"]))) {
	$folder_id 				= $_POST["folder_id"];
	$new_folder_name 	  	= $_POST["new_folder_name"];
	$logged_in_user 		= $_POST["logged_in_user"];
	//echo $new_folder_name . " " . $logged_in_user  . " " . $folder_id; 
	//Rename File 
	//$Current_File = new File($file_id);
	//$Current_File->renameFile($file_id, $new_file_name);
	
	$sql = "UPDATE folders SET folder_name = ?, folder_last_modified = NOW() WHERE folder_id='$folder_id'";
	$stmt = $conn->prepare($sql);
	$stmt->bind_param('s', $new_folder_name);
	if ($stmt->execute()) {
		echo $new_folder_name;
	} else {
		echo "error renaming";
	}	
	
}

//Function C2: Global Delete Folder 
if (isset($_POST["folder_id_delete"]) && (!empty($_POST["folder_id_delete"]))) {
	$folder_id 				= $_POST["folder_id_delete"];
	$logged_in_user 		= $_POST["logged_in_user"];

	//echo $file_id . " " . $logged_in_user;
	//$Current_File = new File($file_id);
	//$Current_File->deleteFile($file_id);

	mysqli_query($conn,"UPDATE folders SET folder_status = 0, recycle_status = 1, folder_last_modified = now() WHERE folder_id = $folder_id");	
}

