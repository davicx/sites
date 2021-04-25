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
	
	$responsePostJSON = json_encode($responsePost);	

	echo $responsePostJSON;

	
} else {
	    
	$responsePost->returned_from_server = "NOT POST";
	$responsePost->user_name = "";

	$responsePostJSON = json_encode($responsePost);	

	echo $responsePostJSON;
	
}

	
	/*
	$target_dir = "images/";
	$target_file = $target_dir . basename($_FILES["image"]["name"]);
	$uploadOk = 1;
	$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
	
	$responsePost->file_type = $imageFileType;
	$responsePost->target_file = $target_file;
	$responsePost->image_name = $_FILES["image"]["name"];
	
	// Check if image file is a actual image or fake image
	$check = getimagesize($_FILES["image"]["tmp_name"]);
	
	if($check !== false) {
		$responsePost->is_image = "File is an Image";
		$uploadOk = 1;
	} else {
		$responsePost->is_image = "File is not an image.";
		$uploadOk = 0;
	}

	if ($_FILES["image"]["size"] > 1) {
	  $responsePost->image_size = $_FILES["image"]["size"];
	}
	
	if (move_uploaded_file($_FILES["image"]["name"], $target_file)) {
		$responsePost->upload_outcome = "success";
	} else {
		$responsePost->upload_outcome = "failure";
	}
	
	*/
	
	/*
	if ($_FILES["image"]["size"] > 10) {

		$target_file = $target_dir . basename($_FILES["image"]["name"]);
		//$file_name = $target_dir . basename($_FILES["image"]["name"]);
		
		$responsePost->file_size = "something there";		
		$check = getimagesize($_FILES["image"]["tmp_name"]);
		$responsePost->file_details = $check["mime"];	
		
		if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) {
			$responsePost->upload_outcome =  "success";	
		} else {
			$responsePost->upload_outcome = "error";
		}

	} else {
		$responsePost->file_size = "empty";		
		
	}
	*/
	/*
	//Upload File 
	$target_dir = "uploads/";
	$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
	$uploadOk = 1;
	$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));



	// Check if file already exists
	if (file_exists($target_file)) {
	  echo "Sorry, file already exists.";
	  $uploadOk = 0;
	}

	// Check file size
	if ($_FILES["fileToUpload"]["size"] > 500000) {
	  echo "Sorry, your file is too large.";
	  $uploadOk = 0;
	}

	// Allow certain file formats
	if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
	&& $imageFileType != "gif" ) {
	  echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
	  $uploadOk = 0;
	}

	// Check if $uploadOk is set to 0 by an error
	if ($uploadOk == 0) {
	  echo "Sorry, your file was not uploaded.";
	// if everything is ok, try to upload file
	} else {
	  if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
		echo "The file ". basename( $_FILES["fileToUpload"]["name"]). " has been uploaded.";
	  } else {
		echo "Sorry, there was an error uploading your file.";
	  }
	}
	*/
	//File Data
	/*
	// Check if image file is a actual image or fake image
	$check = getimagesize($_FILES["image"]["tmp_name"]);
	if($check !== false) {
	//echo "File is an image - " . $check["mime"] . ".";
		$uploadOk = 1;
		$responsePost->file_size = $check["mime"];
	} else {
		//echo "File is not an image.";
		$uploadOk = 0;
		$responsePost->file_size = 0;	
	}
	


	*/



	/*
	 $check = getimagesize($_FILES["filename"]["tmp_name"]);
	  if($check !== false) {
		//echo "File is an image - " . $check["mime"] . ".";
		$uploadOk = 1;
	  } else {
		//echo "File is not an image.";
		$uploadOk = 0;
	  }
	  */
	//$responsePost->image_size = $_POST['image_size'];
	
	//Get File
	/*
	$target_dir = "http://people.oregonstate.edu/~vasquezd/sites/template/site_files/rest/user/upload_image.php";
	$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
	$uploadOk = 1;
	$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
	// Check if image file is a actual image or fake image
	if(isset($_POST["submit"])) {
	  $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
	  if($check !== false) {
		echo "File is an image - " . $check["mime"] . ".";
		$uploadOk = 1;
	  } else {
		echo "File is not an image.";
		$uploadOk = 0;
	  }
	}
	*/




















/*
$json = file_get_contents('php://input');
$post_object = json_decode($json);



$responsePost->user_biography = $post_object->user_biography;
$responsePost->user_id = $post_object->full_name;
	
*/



/*

$target_dir = "http://people.oregonstate.edu/~vasquezd/sites/template/site_files/rest/user/";


if (move_uploaded_file($_FILES["file"]["tmp_name"], $target_dir)) {
	
	$uploadResponse->returned_from_server = "Success";
	$uploadResponse->user_name = ""
	$uploadResponse->user_biography = ""
	$uploadResponse->upload_response = basename( $_FILES["file"]["name"]). " has been uploaded.",
	$uploadResponseJSON = json_encode($uploadResponse);		

	echo $uploadResponseJSON;	


} else {

	$uploadResponse->returned_from_server = "Success";
	$uploadResponse->user_name = ""
	$uploadResponse->user_biography = ""
	$uploadResponse->upload_response = basename( $_FILES["file"]["name"]). " has been uploaded.",
	$uploadResponseJSON = json_encode($uploadResponse);		

	echo $uploadResponseJSON;	

}
/
/*
$firstName = $_POST["firstName"];
$lastName = $_POST["lastName"];
$userId = $_POST["userId"];

$target_dir = "media";

if(!file_exists($target_dir))
{
mkdir($target_dir, 0777, true);
}

$target_dir = $target_dir . "/" . basename($_FILES["file"]["name"]);

if (move_uploaded_file($_FILES["file"]["tmp_name"], $target_dir)) 
{
echo json_encode([
"Message" => "The file ". basename( $_FILES["file"]["name"]). " has been uploaded.",
"Status" => "OK",
"userId" => $_REQUEST["userId"]
]);

} else {

echo json_encode([
"Message" => "Sorry, there was an error uploading your file.",
"Status" => "Error",
"userId" => $_REQUEST["userId"]
]);

}


*/















?>