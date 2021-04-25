<?php
//Include Page Header 
header('Content-Type: application/json');
require_once('../../../../functions/rest_header.php');
require_once('../../../../functions/classes/User.php');

//http://people.oregonstate.edu/~vasquezd/sites/template/site_files/rest/user/upload_image.php

if ($_SERVER["REQUEST_METHOD"] == "POST") {
		
	//Get Parameters
	$responsePost->returned_from_server = "Success";
	$responsePost->user_name = $_POST['user_name'];
	$responsePost->user_id = $_POST['user_id'];
	$responsePost->full_name = $_POST['full_name'];
	//$responsePost->image_size = getimagesize($_FILES["image"]["size"];
		
	$target_dir = "../../../../";
	$target_file = $target_dir . basename($_FILES["image"]["name"]);
	$uploadOk = 1;
	$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

	$responsePost->image_type = $imageFileType ;

	// Allow certain file formats
	if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" && $imageFileType != "gif" ) {
	  $responsePost->is_image = "Not an Image";
	  $uploadOk = 0;
	} else {
		$responsePost->is_image = "Ok";
	}
	
	//Is a File
	$check = getimagesize($_FILES["image"]["tmp_name"]);
	if($check !== false) {
		$responsePost->is_image = "Is File";
		$uploadOk = 1;
	} else {
		$responsePost->is_image = "Is Not a File";
		$uploadOk = 0;
	}	
	
	//File Exists
	if (file_exists($target_file)) {
		$responsePost->file_already_uploaded = "Already a File";
		$uploadOk = 0;
	} else {
		$responsePost->file_already_uploaded = "Ok";
		
	}

	//Check file size
	if ($_FILES["image"]["size"] > 500000) {
		//echo "Sorry, your file is too large.";
		$uploadOk = 0;
		$responsePost->file_size = "Too Big";
	} else {
		$responsePost->file_size = "Ok";
	}	

	

	if ($uploadOk == 0) {
		$responsePost->upload_attempt = "Denied";
	} else {
		$responsePost->upload_attempt = "Will Try";		
		
		if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) {
			
			$responsePost->upload_outcome = "Success";
			
		} else {
			
			//$responsePost->upload_outcome_message = $_FILES["fileToUpload"]["tmp_name"]);	    
			$responsePost->upload_outcome = "Didn't Work";	    
		}
		
	}
	

	//Return Response
	$responsePostJSON = json_encode($responsePost);	

	echo $responsePostJSON;

	
} else {
	    
	$responsePost->returned_from_server = "NOT POST";
	$responsePost->user_name = "";

	$responsePostJSON = json_encode($responsePost);	

	echo $responsePostJSON;
	
}

	
/*



//echo "<br /> Upload OK " . $uploadOk;
//echo "<br /> Upload " . $target_file;
//echo "<br /> Upload " . print_r($_FILES["name"]);
//echo "<br /> Upload " . $target_file;


// Check if $uploadOk is set to 0 by an error
if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) {
 
	$responsePost->returned_from_server = "Success";
	$responsePost->user_name = $_POST['user_name'];
	$responsePost->user_id = $_POST['user_id'];
	$responsePost->full_name = $_POST['full_name'];
	
	$responsePostJSON = json_encode($responsePost);	

	echo $responsePostJSON;
	
  } else {
	  
    $responsePost->returned_from_server = "Error";
	$responsePost->user_name = $_POST['user_name'];
	$responsePost->user_id = $_POST['user_id'];
	$responsePost->full_name = $_POST['full_name'];
	
	$responsePostJSON = json_encode($responsePost);	

	echo $responsePostJSON;
}
*/
