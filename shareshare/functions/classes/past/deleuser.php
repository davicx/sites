<?php
//Include Connection 
require_once('connection.inc.php');	

/*
FUNCTIONS U: USER RELATED
	1) Method U1: Get User Info 
	2) Method U2: Get User Lists 
	3) Method U3: Get Pending Friend Requests 
	4) Method U4: Get all Pending Friend Requests by Friend ID 
	5) Method U5: Update User Information 
	6) Method U6: Delete User 
	7) Method U7: Register User
	8) Method U8: Register User from an Email Invite
	9) Method U9: Reset Password
	10) Method U10: Request Username
	
FUNCTIONS F: FRIEND RELATED 
	1) Method F1: Cancel Pending Request 
	2) Method F2: Get list of friends- including friend user name, user id and total number of friends
	3) Method F3: Request friend and add to pending table 
	4) Method F4: Delete friend from database
*/

class User{
	public $userID = "";
	public $userName = "";
	public $firstName = "";
	public $lastName = "";
	public $gender = "";
	public $fullUserName = "";
	public $email = "";
	public $biography = "";
	public $userImage = "";
	public $totalFriends = "";
	public $totalFollowers = "";
	public $totalFollowing = "";
	public $totalGroups = "";	
	public $totalPosts = "";	
	public $totalLists = "";
	public $friendListID = array();
	public $friendListUserNames = array();
	
	/* Notifications and Requests */
	public $pendingRequests = array();
	public $pendingRequestsID = array();
	public $totalPendingRequests = array();
	
	/* User Info */
	public $birthday = "";	//birthday
	public $streetAddressLineOne = "";	//street_address
	public $streetAddressLineTwo = "";	//street_address
	public $addressCity = "";	//state-address
	public $addressState = "";	//state-address
	public $addressZipCode = "";	//state-address
	public $addressCountry = "";	//state-address
	public $fullAddressLineOne = "";	//street_address
	public $fullAddressLineTwo = "";	//street_address
	
	/* Clothing Info */
	public $userShirt = "";	//user_shirt
	public $userSweater = ""; //user_sweater
	public $userCoat = ""; //user_coat
	public $userJeans = ""; //user_jeans		 
	public $userPants = "";	//user_pants
	public $userDressSize = "";	//user_dress_size
	public $userShoeSize = "";	//user_shoes	
	public $userInfo = "";	//user_shoes	

		
	//Instantiate: Instantiate User
	public function __construct($userName ) {
		$this->userName = $userName;
	}


	//USER RELATED METHODS 
	//METHOD U1: Get User Info 
	

	//METHOD U2: Get User Lists 
	public function getUserListTotal($userName, $masterListType) {			 
		global $conn;

		$list_status = 1;
 		$result_lists = mysqli_query($conn,"SELECT * FROM list WHERE 
			user_name = '$userName' 
			AND active_status = '$list_status' 
			AND list_type = '$masterListType'");
		
		$list_count = 0;
		
		while($row_lists = mysqli_fetch_array($result_lists)) {		
			 
			$list_count = $list_count + 1;
		 }
		 
		$this->totalLists = $list_count;
	}
	
	//METHOD U3: Get Pending Friend Requests
	public function getPendingRequests($userName) {
		global $conn;	

		//Total Pending Requests
		$result_pending_requests = mysqli_query($conn,"SELECT * FROM pending_requests WHERE sent_to = '$userName' AND status = '1'");
		$total_pending_requests = 0;
		$total_pending_requests_array = array();
	
		while($row_pending_requests = mysqli_fetch_array($result_pending_requests)) {	
			$total_pending_requests_array= $row_pending_requests['primary_id'];

			$total_pending_requests = $total_pending_requests + 1;	
		}				
				
		$this->totalPendingRequests = $total_pending_requests;		
			
		//Total Pending Friend Requests	
		$result_pending_friends = mysqli_query($conn,"SELECT * FROM pending_requests WHERE sent_by = '$userName' and request_type = 'friend' and status = '1'");
		$pendingRequestCount = 0;	
		
		while($row_friends = mysqli_fetch_array($result_pending_friends)) {				
			$this->pendingRequests[$pendingRequestCount] = $row_friends['sent_to'];
			$pendingRequestCount = $pendingRequestCount + 1;	
		}	
	} 
	
	//METHOD U4: Get all Pending Friend Requests by Friend ID 
	public function getPendingRequestsID($userName) {
		$pendingRequestCount = 0;	
		global $conn;	

		$sql = "SELECT * FROM pending_requests WHERE sent_by = '$userName' and request_type = 'friend' and status = '1'";
		$result_pending = $conn->query($sql) or die(mysqli_error());
			
		while($row = mysqli_fetch_array($result_pending)) {	
			$user_name = $row['sent_to'];
			if ($stmt_one = mysqli_prepare($conn, "SELECT user_id FROM user_profile WHERE user_name=?")) {
				$stmt_one -> bind_param("s", $user_name);
				$stmt_one -> execute();
				$stmt_one -> bind_result($result_one);
				$stmt_one -> fetch();
				$user_id = $result_one;
				$stmt_one -> close();
			}
		
			$this->pendingRequestsID[$pendingRequestCount] = $user_id;
			
			$pendingRequestCount = $pendingRequestCount + 1;	
		}		
	} 
	

	
	//METHOD U7: Register User

	
	//METHOD U8: Register User from an Email Invite

	//METHOD U9: Reset Password
	//$password_reset_token = getToken($length=32);
	//$password_reset_token = getToken($length=32);
			
	//METHOD U10: Request Username
	
	
	//FRIEND RELATED METHODS 
	//Method F1: Cancel Pending Request 
	public function cancelPendingRequest($requestKey) {
		global $conn;	
		
		$sql = "DELETE FROM pending_requests WHERE request_key ='$requestKey' ";

		if ($conn->query($sql) === TRUE) {
			echo "Record deleted successfully";
		} else {
			echo "Error deleting record: " . $conn->error;
		}
	} 
		

	
	//Method F3: Request Friend and Add to Pending Table 

	
	//Method F4: Delete friend from database

	
}

?>

