<?php
//$filename=$_FILES['fileToUpload']['name'];
//echo $filename;
//$target_dir = "uploads/";
/*


print_r($_FILES["file-name"]);
echo $target_file;
*/
$target_dir = "../user_uploads/user_file_uploads/";
$target_file = $target_dir . basename($_FILES["file-name"]["name"]);

$uploadOk = 1;
$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
echo $imageFileType;

// Check if image file is a actual image or fake image
if(isset($_POST["upload_trigger"])) {
    $check = getimagesize($_FILES["file-name"]["tmp_name"]);
    if($check !== false) {
        echo "File is an image - " . $check["mime"] . ".";
        $uploadOk = 1;
    } else {
        echo "File is not an image.";
        $uploadOk =1;
    }
}
// Check if file already exists
if (file_exists($target_file)) {
    echo "Sorry, file already exists.";
    $uploadOk = 0;
}
// Check file size
if ($_FILES["file-name"]["size"] > 5000000) {
    echo "Sorry, your file is too large.";
    $uploadOk = 0;
}

// Check if $uploadOk is set to 0 by an error
if ($uploadOk == 0) {
    echo "Sorry, your file was not uploaded.";
// if everything is ok, try to upload file
} else {
    if (move_uploaded_file($_FILES["file-name"]["tmp_name"], $target_file)) {
        echo "The file ". basename( $_FILES["file-name"]["name"]). " has been uploaded.";
    } else {
        echo "Sorry, there was an error uploading your file.";
    }
}

?>
