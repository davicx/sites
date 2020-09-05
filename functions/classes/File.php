<?php	

//include '../functions/includes/connect.php';
require_once('connection.inc.php');	

class File {
	public $fileId 	= "";
	public $masterSite = "";		
	public $parentFolder = "";		
	public $currentFolder = "";		
	public $groupID = "";
	public $postID = "";
	public $fileName = "";
	public $fileImage = "";
	public $fileExtension = "";
	public $fileNameServer = "";	
	public $userID = "";
	public $userName = "";	
	public $fileCaption = "";
	public $fileSeen = "";	
	public $recycleStatus = "";		
	public $fileExists = "";
	public $fileNameDownload = "";
	
	//Date and Time Related 
	public $fileCreated = "";	
	public $fileLastModified = "";	
	public $fileLastModifiedFormatted = "";		
	public $lastModifiedMonth = "";
	public $lastModifiedDay = "";
	public $lastModifiedHours = "";

	//File Posted by User Image 
	public $postedPhoto = "";	
	
	public function __construct($fileId ) {
		$this->fileId = $fileId;
	}
	
	public function getFileInfo($fileId) {
		global $conn;
		$result = mysqli_query($conn,"SELECT * FROM files WHERE file_id = '$fileId' ");

		while($row = mysqli_fetch_array($result)) {		
			$this->masterSite 		= $row['master_site'];	
			$this->parentFolder 	= $row['parent_folder'];	
			$this->currentFolder 	= $row['current_folder'];	
			$this->groupID 			= $row['group_id'];	
			$this->postID 			= $row['post_id'];	
			$this->fileName 		= $row['file_name']; 			
			$this->fileImage		= $row['file_image']; 	
			$this->fileExtension	= $row['file_extension']; 	
			$this->fileNameServer 	= $row['file_name_server']; 	
			$this->userName			= $row['user_name']; 	
			$this->userID			= $row['user_id']; 
			$this->fileCaption		= $row['file_caption']; 
			$this->fileSeen			= $row['file_seen']; 
			$this->fileStatus		= $row['file_status']; 
			$this->recycleStatus	= $row['recycle_status']; 
			$this->uniqueID			= $row['unique_id']; 
			$this->fileNameDownload	= $row['file_name'] . $row['file_extension']; 
			
			//Date and Time Related 
			$this->fileCreated				 = $row['file_created']; 
			$this->fileLastModified			 = "Onid 24, 5:05pm";
			$this->fileLastModifiedFormatted = $row['file_seen']; 
			$dateArray 						 = date_parse($row['file_last_modified']); 
			$this->lastModifiedYear		     = $dateArray['year']; 
			$this->lastModifiedMonth	     = $dateArray['month']; 
			$this->lastModifiedDay			 = $dateArray['day'];
			$this->lastModifiedHours		 = $dateArray['hour'];; 
	
			/*
			//UNCOMMENT LIVE 
			$dateObj  			 	= DateTime::createFromFormat('!m', $modified_month);
			$monthName 				= $dateObj->format('F'); 
			$this->lastModifiedMonth = $monthName;
			$this->lastModifiedDay 	= $dateArray['day'];
			$posted_time_army 		= $dateArray['hour'] . ":" . $dateArray['minute'];
			$posted_time = date( 'g:i A', strtotime( $posted_time_army ) );
			$this->fileLastModifiedFormatted = $modified_day . "/"  . $modified_month . "/" . $modified_year . " " . $posted_time; //This will display February 24, 5:05pm
			*/
		  }	
		  
			//File Posted by User Image 	  
			if ($result = mysqli_prepare($conn, "SELECT image_name FROM user_profile WHERE user_name=?")) {
				$result -> bind_param("s", $userName);
				$result -> execute();
				$result -> bind_result($result_user_photo);
				$result -> fetch();
				$user_photo = $result_user_photo;
				//$this->postedPhoto = $user_photo; 		
				$this->postedPhoto = $user_photo; 
				$result -> close();
			} 	
	}
	
	
	public function renameFile($fileID, $newFileName) {
		global $conn;
		
		$sql = "UPDATE files SET file_name = ?, file_last_modified = NOW() WHERE file_id='$fileID'";
		$stmt = $conn->prepare($sql);
		$stmt->bind_param('s', $newFileName);
		if ($stmt->execute()) {
			echo $newFileName;
		} else {
			echo "error renaming";
		}	
	}
	
	
	public function deleteFile($file_id) {
		global $conn;
		$file_id = $file_id;
		//echo $file_id;
		mysqli_query($conn,"UPDATE files SET file_status=0, recycle_status = 1, file_last_modified = now() WHERE file_id = $file_id");
	}

		
	public function moveFile($fileID, $newPath) {
		global $conn;	
		$fileID = $fileID;
		$newPath = $newPath;
		$fileArray = explode("/",$newPath);
		$fileRoot = end($fileArray);	

		$sql = "UPDATE files SET file_path = ?, parent = ? WHERE file_id='$fileID'";
		$stmt = $conn->prepare($sql);
		$stmt->bind_param('ss', $newPath, $fileRoot);
			if ($stmt->execute()) {
			echo $newPath;
		}			
			
		function getFileRoot($newPath) {
			$fileArray = explode("/",$newPath);
			$fileRoot = end($fileArray);
			return $fileRoot;
		}
	}

	public function copyFile($file_id, $newPath) {
		global $conn;
		$file_id = $file_id;
		$newPath = $newPath;
		$fileArray = explode("/",$newPath);
		$fileRoot = end($fileArray);	
		
		$result = mysqli_query($conn,"SELECT * FROM files WHERE file_id = '$file_id'");

		while($row = mysqli_fetch_array($result)) {
			$group_id 		= 	$row['group_id'];
			$user_id 		=   $row['user_id'];
			$file_name 	 	= 	$row['file_name'];
			$server_name 	= 	$row['file_name_server'];
			$file_image 	= 	$row['file_image'];
			$file_location 	= 	$row['file_path_server'];
			//$row['parent'] . " " . $row['file_path'];
			$status 		= 	$row['status'];
		}

		$insert = $conn->prepare("INSERT INTO files (group_id, user_id, file_name, file_name_server, file_image, file_path_server, parent, file_path, status) VALUES (?,?,?,?,?,?,?,?,?) ");
		$insert->bind_param('iissssssi', $group_id, $user_id, $file_name, $server_name, $file_image, $file_location, $fileRoot, $newPath, $status);
		if ($insert->execute()) {
			echo "worked";
		} else {
			echo "Can not be processed";
		}
		
	}
}
/*

master_site	
current_folder
parent_folder
group_id
post_id
file_name
file_image
file_type
file_name_server
is_folder
folder_name
user_name
user_id
file_caption
file_seen
file_status
recycle_status
unique_id
file_created
file_last_modified		

*/
?>