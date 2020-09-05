<?php	

//include '../functions/includes/connect.php';
require_once('connection.inc.php');	

class Folder {
	public $folderId = "";
	public $groupID = "";
	public $parentFolder = "";	
	public $folderName = "";
	public $userName = "";
	public $userID = "";
	public $folderImage = "";
	public $folderSeen = "";
	public $folderStatus = "";
	public $recycleStatus = "";
	public $folderCreated = "";	
	public $folderLastModified = "";	
	public $folderLastModifiedFormatted = "";	

	public function __construct($folderId ) {
		$this->folderId = $folderId;
	}
	
	public function getFolderInfo($folderId) {
		global $conn;
		$result = mysqli_query($conn,"SELECT * FROM folders WHERE folder_id = '$folderId' ");

		while($row = mysqli_fetch_array($result)) {		
			$this->groupID 			= $row['group_id'];
			$this->parentFolder 	= $row['parent_folder'];
			$this->folderName 		= $row['folder_name'];
			$this->userName 		= $row['user_name'];
			$this->userID 			= $row['user_id'];
			$folderImage	 		= $row['folder_image'];
			if($folderImage == '')  { $folderImage = "folder.png"; } 
			$this->folderImage 		= $folderImage;
			$this->folderSeen 		= $row['folder_seen'];
			$this->folderStatus 	= $row['folder_status'];
			$this->folderCreated 	= $row['recycle_status'];
			$this->groupID 			= $row['folder_created'];

			/*
			//UNCOMMENT LIVE 
			$dateObj  			 	= DateTime::createFromFormat('!m', $modified_month);
			$monthName 				= $dateObj->format('F'); 
			$this->lastModifiedMonth = $monthName;
			$this->lastModifiedDay 	= $dateArray['day'];
			$posted_time_army 		= $dateArray['hour'] . ":" . $dateArray['minute'];
			$posted_time = date( 'g:i A', strtotime( $posted_time_army ) );
			$this->folderLastModifiedFormatted = $modified_day . "/"  . $modified_month . "/" . $modified_year . " " . $posted_time; //This will display February 24, 5:05pm
			*/
			$this->folderLastModified = "Onid 24, 5:05pm";
			$this->folderLastModifiedFormatted = "Onid 24, 5:05pm";
			
		  }	
	}
	
	public function renameFolder($folder_id, $new_folder_name) {
		global $conn;
		
		$sql = "UPDATE folders SET folder_name = ?, folder_last_modified = NOW() WHERE folder_id='$folder_id'";
		$stmt = $conn->prepare($sql);
		$stmt->bind_param('s', $new_folder_name);
		if ($stmt->execute()) {
			echo $new_folder_name;
		} else {
			echo "error renaming";
		}	

	}
	
	public function deleteFolder($folder_id) {
		global $conn;
		/*
		$file_id = $file_id;
		//echo $file_id;
		mysqli_query($conn,"UPDATE files SET file_status=0, recycle_status = 1, file_last_modified = now() WHERE file_id = $file_id");
		*/
	}

		
	public function moveFolder($folder_id, $newPath) {
		global $conn;	
		
		/*
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
		
		*/
	}

	public function copyFolder($folder_id, $newPath) {
		global $conn;
		/*
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
		*/
		
	}
}

?>