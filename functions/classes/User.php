<?php
//Include Connection 
require_once('connection.inc.php');	

/*
FUNCTIONS A: USER RELATED
	1) Method A1: Get User Info 
	2) Method A2: Get List of all User Friends 
	3) Method A3: Get Pending Requests *Not Done 
	4) Method A4: Request a Friend	
	5) Method A5: Cancel a Sent Friend Request
	6) Method A6: Remove a Friend
	7) Method A7: Update User Info
	
FUNCTIONS B: REQUEST RELATED	
	1) Method B1: Accept Friend Request
	2) Method B2: Decline Friend Request
	3) Method B3: Accept Group Request
	4) Method B4: Decline Group Request
	5) Method B5: Accept List Request
	6) Method B6: Decline List Request
	
FUNCTIONS C: USER SITE ACTIVITY 
	1) Method C1: Get New Group Posts
	2) Method C2: Get New Groups Discussions
	3) Method C3: Get New File Activity
	4) Method C4: Update Group Posts to Seen	
	5) Method C5: Update Group Discussion to Seen
	6) Method C6: Update New File Activity to Seen		

FUNCTIONS D: USER ACCOUNT	
	1) Method D1: Register User
	2) Method D2: Register User API
	2) Method D3: Register User with Email
	3) Method D4: Delete User
	4) Method D5: Request Username *currently this happens in the user.php file 
	5) Method D6: Request Password Send Email (Part 1) *currently this happens in the user.php file 
	6) Method D7: Request Password Update to New Password (Part 2) *currently this happens in the user.php file 	

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
	public $totalFriends = 0;
	public $totalFollowers = 0;
	public $totalFollowing = 0;
	public $totalGroups = 0;	
	public $totalPosts = 0;	
	public $totalLists = 0;
	public $friendListID = array();
	public $friendListUserNames = array();
	
	/* Notifications and Requests */
	public $pendingRequests = array();
	public $pendingRequestsID = array();
	public $totalPendingRequests = array();

	/* User Address Info */
	public $birthday = "";	
	public $streetAddressLineOne = "";	
	public $streetAddressLineTwo = "";	
	public $addressCity = "";
	public $addressState = "";	
	public $addressZipCode = "";
	public $addressCountry = "";	
	public $fullAddressLineOne = "";	
	public $fullAddressLineTwo = "";
	
	/* Clothing Info */
	public $userShirt = ""; 
	public $userSweater = "";    
	public $userCoat = ""; 
	public $userJeans = "";   
	public $userPants = ""; 
	public $userDressSize = ""; 
	public $userShoeSize = "";
	public $userInfo = "";	 
	
	//Constructor: Instantiate User
	public function __construct($userName ) {
		$this->userName = $userName;
	}

	
	//METHODS A: USER RELATED
	//Method A1: Get User Info 
	public function getUserInfo($userName) {
			global $conn;
			$result = mysqli_query($conn,"SELECT * FROM user_profile WHERE user_name = '$userName' ");

			while($row = mysqli_fetch_array($result)) {		
				$this->userID 		= $row['user_id']; 
				$user_name          = $row['user_name']; 
				$first_name 		= $row['first_name'];	
				$last_name 			= $row['last_name'];	
				
				//Check if they have a first or last name that is set 
				if((isset($first_name)) && !empty($first_name) || (isset($last_name)) && !empty($last_name) ) {
					$this->firstName 	= $first_name; 			
					$this->lastName 	= $last_name;
					$first_name_internal = $first_name;		
				} else {
					$this->firstName 	= $user_name; 
					$first_name_internal = $user_name;					
				}	
				
				//Get Full User user name and format 
				if((isset($first_name)) && !empty($first_name) || (isset($last_name)) && !empty($last_name) ) {
					$this->fullUserName 	=  ucfirst(strtolower($first_name)) . " " .  ucfirst(strtolower($last_name)); 			
				} else {
					$this->fullUserName 	= ucfirst(strtolower($user_name)); 	
				}	

				//Get current user image and make sure that it exists 	
				$user_image 		= $row['image_name'];	
				$this->userImage 	= $user_image; 				
				
				/*
				$file_exists_test = "../../user_uploads/user_image/" . $user_image;
				if(file_exists($file_exists_test)==1) {
					$this->userImage 	= $user_image; 			
				} else {
					$this->userImage 	= "default.png"; 	
				}
				
				*/
				$this->email 		= $row['email']; 
				$this->biography 	= $row['biography'];		
			  }
			  
			//Get total groups user is in    
			$result_groups = mysqli_query($conn, "SELECT * FROM group_users WHERE user_name = '$userName'");
			$user_groups = mysqli_num_rows($result_groups);
			$this->totalGroups = $user_groups;

			//Get total posts user has made     
			$result_posts = mysqli_query($conn, "SELECT * FROM posts WHERE post_to = '$userName' AND post_status = '1'");
			$user_posts = mysqli_num_rows($result_posts);
			$this->totalPosts = $user_posts;
			
			$result_clothes = mysqli_query($conn,"SELECT * FROM user_size WHERE user_name = '$userName' ");

			while($row_clothes = mysqli_fetch_array($result_clothes)) {		
					
					/* User Info */
					$this->gender 	= $row_clothes['gender'];	
					$this->birthday = $row_clothes['birthday'];	
					$this->streetAddressLineOne = $row_clothes['street_address_line_one'];
					$this->streetAddressLineTwo = $row_clothes['street_address_line_two'];	
					$this->addressCity = $row_clothes['address_city'];	
					$this->addressState = $row_clothes['address_state'];	
					$this->addressZipCode = $row_clothes['address_zip_code'];	
					$this->addressCountry = $row_clothes['address_country'];	
					$street_address_one		= $row_clothes['street_address_line_one'];
					$street_address_two		= $row_clothes['street_address_line_two'];
					$address_city			= $row_clothes['address_city'];	
					$address_state			= $row_clothes['address_state'];
					$address_zip_code		= $row_clothes['address_zip_code'];
					$address_country		= $row_clothes['address_country'];			
					
					//Determine Address based on what user has filled in. 
					if($street_address_one . $street_address_two . $address_city . $address_state . $address_zip_code . $address_country == '') {
						$this->fullAddressLineOne = "<b>" . $first_name_internal . "</b> " . " hasn't entered their address yet!"; 
						$this->fullAddressLineTwo 	= ""; 
					} else {
						$this->fullAddressLineOne = $street_address_one . " " . $street_address_two; 
						if ($address_city . $address_state . $address_zip_code != '') {
							$this->fullAddressLineTwo = $address_city . ", " . $address_state. " ". $address_zip_code; 
						} else {
							$this->fullAddressLineTwo = "";
						}	
					}

					/* Clothing Info */
					$this->userShirt = $row_clothes['user_shirt'];	
					$this->userSweater = $row_clothes['user_sweater']; 
					$this->userCoat = $row_clothes['user_coat']; 
					$this->userJeans = $row_clothes['user_jeans']; 		 
					$this->userPants = $row_clothes['user_pants'];	
					$this->userDressSize = $row_clothes['user_dress_size'];	
					$this->userShoeSize = $row_clothes['user_shoes'];		
					$this->userInfo = $row_clothes['user_info'];	
			 }
		} 	
	

	//Method A2: Get List of all User Friends 
	public function getFriendList($userName) {
		global $conn;
		
		//Create array to hold all friends and their IDs 
		$friend_count = 0;
		$friend_user_id_array = array();
		$friend_user_name_array = array();	
		
		$result_friends = mysqli_query($conn,"SELECT friends.user_name, friends.friend_user_name, friends.friend_id, friends.request_pending, user_login.user_name, 
			user_login.user_id, user_login.account_deleted
			FROM user_login INNER JOIN friends
			ON user_login.user_name = friends.friend_user_name
			WHERE friends.user_name = '$userName'
			AND friends.request_pending = 0
			AND user_login.account_deleted = 0");

		while($row_friends = mysqli_fetch_array($result_friends)) {		
			$friend_user_name_array[$friend_count] = $row_friends['friend_user_name'];	
			$friend_user_id_array[$friend_count] = $row_friends['friend_id'];			
			$friend_count = $friend_count + 1;		
			$friend_user_id_array = array_unique($friend_user_id_array); 
			$friend_user_id_array = array_values($friend_user_id_array);		
			$friend_user_name_array = array_unique($friend_user_name_array); 
			$friend_user_name_array = array_values($friend_user_name_array);	

			$this->friendListID			= $friend_user_id_array;
			$this->friendListUserNames  = $friend_user_name_array;
			$this->totalFriends         = $friend_count;
		}
	} 
		
		
	//Method A3: Get Pending Requests (Friend, Group, List)
	public function getPendingRequests($userName) {
		global $conn;	
		
		//Type 1: Friend Request
		
		//Type 2: Group Request
		
		//Type 3: List Request 
		
		//Type 4: Add More Here
		
		//Type 5: Total Pending Requests 

	} 	
 
	
	//Method A4: Request a Friend
	public function addFriend($requestFrom, $requestTo) {
		global $conn;
		$request_type			= "friend";
		$request_type_text		= "Wants to be Friends";
		$request_sent_from 		= $requestFrom;
		$request_sent_from_id 	= getUserID($requestFrom);
		
		$request_sent_to 		= $requestTo;
		$request_sent_to_id 	= getUserID($requestTo);
		$request_key 			= $request_sent_from . $request_sent_to;
		$request_status 		= 1;
		$add_friend_status  	= 0;

		//STEP 1: Check if these users are already friends (1 they are friends, 0 they are not)
		$friendship_status = checkUserFriendshipStatus($request_sent_from, $request_sent_to);

		//They are friends		
		if($friendship_status > 0) {
			$add_friend_status  = $add_friend_status + 1;
		} 
		
		//STEP 2: Check that a request is not already pending
		$check = mysqli_query($conn,"SELECT * FROM pending_requests WHERE request_key = '$request_key' AND request_is_pending = 1 ");
		$request_sent_count = $check->num_rows; 
	
		//Request was already sent and is pending 	
		if($request_sent_count > 0) {
			$add_friend_status  = $add_friend_status + 1;
		} 

		//STEP 3: Request is not pending and they are not friends already so create request 
		if($add_friend_status == 0) {
			
			//Part 1: Add Request to Pending Table
			$insert = $conn->prepare("INSERT INTO pending_requests (request_type, request_type_text, sent_by, sent_to, request_key, request_is_pending) 
				VALUES (?,?,?,?,?,?) ");
			$insert->bind_param('sssssi', $request_type, $request_type_text, $request_sent_from, $request_sent_to, $request_key, $request_status);
			
			//Part 2: Add Friendship to Friendship table with Pending Status
			if ($insert->execute()) {
							
				//Insert Friendship 1	
				$insert_friend_one = $conn->prepare("INSERT INTO friends(user_name, user_id, friend_user_name, friend_id, request_pending, friend_key) VALUES (?, ?,?,?,?,?) ");
				$insert_friend_one->bind_param('sisiis', $request_sent_from, $request_sent_from_id, $request_sent_to, $request_sent_to_id, $request_status, $request_key);
				if ($insert_friend_one->execute()) {
					echo "success f1";
				} else {
					echo "fail f1";		
				}

				//Insert Friendship 2			
				$request_key_two = $request_sent_to . $request_sent_from;
				$insert_friend_one = $conn->prepare("INSERT INTO friends(user_name, user_id, friend_user_name, friend_id, request_pending, friend_key) VALUES (?, ?,?,?,?,?) ");
				$insert_friend_one->bind_param('sisiis', $request_sent_to, $request_sent_to_id, $request_sent_from, $request_sent_from_id, $request_status, $request_key_two);
				if ($insert_friend_one->execute()) {
					echo "success f2";
				} else {
					echo "fail f2";		
				}
							
			//Handle Error						
			} else {
				echo "error";
			}	
			
		//Handle Error	
		} else {
			echo "Request already exists or you are friends";	
		}
	} 

	
	//Method A5: Cancel a Sent Friend Request
	public function cancelPendingRequest($requestFrom, $requestTo) {
		global $conn;
		$sql = "DELETE FROM friends WHERE user_name='$requestFrom' and friend_user_name = '$requestTo'";

		//Step 1: Delete both Pending Friends Records 
		if ($conn->query($sql) === TRUE) {
			echo "Record deleted successfully";
		} else {
			echo "Error deleting record: " . $conn->error;
		}
		
		$sql = "DELETE FROM friends WHERE user_name='$requestTo' and friend_user_name = '$requestFrom'";

		if ($conn->query($sql) === TRUE) {
			echo "Record deleted successfully";
		} else {
			echo "Error deleting record: " . $conn->error;
		}
				
		//Step 2: Delete Pending Request 		
		$sql = "DELETE FROM pending_requests WHERE sent_by='$requestFrom' AND sent_to = '$requestTo' AND request_type = 'friend'";

		if ($conn->query($sql) === TRUE) {
			echo "Record deleted successfully";
		} else {
			echo "Error deleting record: " . $conn->error;
		}
		
		//Step 3: Delete Notification 
		$sql = "DELETE FROM notifications WHERE notification_type='friend_request' AND notification_from = '$requestFrom' AND notification_to = '$requestTo'";

		if ($conn->query($sql) === TRUE) {
			echo "Record deleted successfully";
		} else {
			echo "Error deleting record: " . $conn->error;
		}		
		
			
	} 
	
	
	//Method A6: Remove a Friend
	public function removeFriend($logged_in_user, $remove_friend_name) {
		global $conn;
		$sql = "DELETE FROM friends WHERE user_name='$logged_in_user' and friend_user_name = '$remove_friend_name'";

		if ($conn->query($sql) === TRUE) {
			echo "Record deleted successfully";
		} else {
			echo "Error deleting record: " . $conn->error;
		}
		
		$sql = "DELETE FROM friends WHERE user_name='$remove_friend_name' and friend_user_name = '$logged_in_user'";

		if ($conn->query($sql) === TRUE) {
			echo "Record deleted successfully";
		} else {
			echo "Error deleting record: " . $conn->error;
		}
	} 
	
	
	//Method A7: Update User Info
	public function updateUserInfo($newFirstName, $newLastName, $newEmail, $newBiography, $primary_id) {
		global $conn;
		$sql = "UPDATE user_profile SET first_name = ?, last_name = ?, email = ?, biography= ?, image_name=? WHERE primary_id = ?";
		$stmt = $conn->prepare($sql);
		$stmt->bind_param('sssssi', $newFirstName, $newLastName, $newEmail, $newBiography, $userImage, $primary_id);
		$stmt->execute();	
	}	
	
	
	//FUNCTIONS B: Request Related 	
	//Method B1: Accept Friend Request
	public function acceptFriendRequest($request_from, $logged_in_user) {
		global $conn;
		$new_status 				= 0;
		
		//Update Pending Requests
		if (!($stmt = $conn->prepare("UPDATE pending_requests SET request_is_pending = ? 
			WHERE sent_by = '$request_from' AND sent_to = '$logged_in_user' AND request_type = 'friend'"))) {
			echo "Prepare failed: (" . $conn->errno . ") " . $conn->error;
		}
				
		if (!$stmt->bind_param('i', $new_status)) {
			echo "Binding parameters failed: (" . $stmt->errno . ") " . $stmt->error;
		}
		
		if (!$stmt->execute()) {
			echo "Execute failed: (" . $stmt->errno . ") " . $stmt->error;
		}			
		
		//Update Friendship 1
		if (!($stmt = $conn->prepare("UPDATE friends SET request_pending = ? 
			WHERE user_name = '$request_from' AND friend_user_name = '$logged_in_user'"))) {
			echo "Prepare failed: (" . $conn->errno . ") " . $conn->error;
		}
				
		if (!$stmt->bind_param('i', $new_status)) {
			echo "Binding parameters failed: (" . $stmt->errno . ") " . $stmt->error;
		}
		
		if (!$stmt->execute()) {
			echo "Execute failed: (" . $stmt->errno . ") " . $stmt->error;
		}		
		
		//Update Friendship 2
		if (!($stmt = $conn->prepare("UPDATE friends SET request_pending = ? 
			WHERE user_name = '$logged_in_user' AND friend_user_name = '$request_from'"))) {
			echo "Prepare failed: (" . $conn->errno . ") " . $conn->error;
		}
				
		if (!$stmt->bind_param('i', $new_status)) {
			echo "Binding parameters failed: (" . $stmt->errno . ") " . $stmt->error;
		}
		
		if (!$stmt->execute()) {
			echo "Execute failed: (" . $stmt->errno . ") " . $stmt->error;
		}	
	}		
	

	//Method B2: Decline Friend Request
	public function declineFriendRequest($request_from, $logged_in_user) {
		global $conn;
		$new_status 				= 0;
		
		//Update Pending Requests
		if (!($stmt = $conn->prepare("UPDATE pending_requests SET request_is_pending = ? 
			WHERE sent_by = '$request_from' AND sent_to = '$logged_in_user' AND request_type = 'friend'"))) {
			echo "Prepare failed: (" . $conn->errno . ") " . $conn->error;
		}
				
		if (!$stmt->bind_param('i', $new_status)) {
			echo "Binding parameters failed: (" . $stmt->errno . ") " . $stmt->error;
		}
		
		if (!$stmt->execute()) {
			echo "Execute failed: (" . $stmt->errno . ") " . $stmt->error;
		}			

		//Update Friendship 1
		$sql = "DELETE FROM friends WHERE user_name='$request_from' and friend_user_name = '$logged_in_user'";

		if ($conn->query($sql) === TRUE) {
			echo "Record deleted successfully";
		} else {
			echo "Error deleting record: " . $conn->error;
		}

		//Update Friendship 2			
		$sql = "DELETE FROM friends WHERE user_name='$logged_in_user' and friend_user_name = '$request_from'";

		if ($conn->query($sql) === TRUE) {
			echo "Record deleted successfully";
		} else {
			echo "Error deleting record: " . $conn->error;
		}

	}		
		
	
	//Method B3: Accept Group Request
	public function acceptGroupRequest($accept_group_request_id, $group_id, $logged_in_user) {
		global $conn;
		
		$request_pending 			 = 0;
		$active_member  			 = 1;

		//STEP 1: Update Pending Request to Not Pending
		if (!($stmt = $conn->prepare("UPDATE pending_requests SET request_is_pending = ? 
			WHERE primary_id = '$accept_group_request_id' AND (request_type = 'new_group' OR request_type = 'group_invite')"))) {
			echo "Prepare failed: (" . $conn->errno . ") " . $conn->error;
		}
				
		if (!$stmt->bind_param('i', $request_pending)) {
			echo "Binding parameters failed: (" . $stmt->errno . ") " . $stmt->error;
		}

		if (!$stmt->execute()) {
			echo "Execute failed: (" . $stmt->errno . ") " . $stmt->error;
		}	

		//STEP 2: Make User Not Pending in Group
		if (!($stmt = $conn->prepare("UPDATE group_users SET active_member = ? 
			WHERE group_id = '$group_id' AND user_name = '$logged_in_user'"))) {
			echo "Prepare failed: (" . $conn->errno . ") " . $conn->error;
		}
				
		if (!$stmt->bind_param('i', $active_member)) {
			echo "Binding parameters failed: (" . $stmt->errno . ") " . $stmt->error;
		}

		if (!$stmt->execute()) {
			echo "Execute failed: (" . $stmt->errno . ") " . $stmt->error;
		}	
	}			
	
		
	//Method B4: Decline Group Request
	public function declineGroupRequest($decline_group_request_id, $group_id, $logged_in_user) {
		global $conn;
		$request_pending 			 = 0;
		$active_member  			 = 1;
	 
		if (!($stmt = $conn->prepare("UPDATE pending_requests SET request_is_pending = ? 
			WHERE primary_id = '$decline_group_request_id' AND request_type = 'new_group'"))) {
			echo "Prepare failed: (" . $conn->errno . ") " . $conn->error;
		}
				
		if (!$stmt->bind_param('i', $request_pending)) {
			echo "Binding parameters failed: (" . $stmt->errno . ") " . $stmt->error;
		}

		if (!$stmt->execute()) {
			echo "Execute failed: (" . $stmt->errno . ") " . $stmt->error;
		}	
		
		//Step 2: Delete User From Group
		$sql = "DELETE FROM group_users WHERE user_name='$logged_in_user' and group_id = '$group_id'";

		if ($conn->query($sql) === TRUE) {
			echo "Record deleted successfully";
		} else {
			echo "Error deleting record: " . $conn->error;
		}		
	}			
	

	//Method B5: Accept List Request
	//* Need to Write 
	
	//Method B6: Decline List Request
	//* Need to Write 
	
	
	//FUNCTIONS C: USER SITE ACTIVITY 	
	//Method C1: Get New Group Posts
	public function getNewGroupPosts($logged_in_user, $group_id) {
		global $conn;
		
		if($group_id != 0 ) { 
			$result = mysqli_query($conn,"SELECT * FROM group_users WHERE group_id = '$group_id' ");

			while($row = mysqli_fetch_array($result)) {		
				$last_visit = $row['last_visit_posts']; 	
			}	

			$result_posts = mysqli_query($conn, "SELECT * FROM posts WHERE post_to = '$group_id' 
				AND post_status = '1' 
				AND post_type = 'post' 
				AND created > '$last_visit'");	
			$new_group_post_count = mysqli_num_rows($result_posts);
			echo $new_group_post_count;
		}
	}		
	
	//Method C2: Get New Groups Discussions
	public function getNewDiscussionPosts($logged_in_user, $group_id) {
		global $conn;

		if($group_id != 0 ) { 		
			$result = mysqli_query($conn,"SELECT * FROM group_users WHERE group_id = '$group_id' AND post_status = '1' ");

			while($row = mysqli_fetch_array($result)) {		
				$last_visit          = $row['last_visit_posts']; 	
			}	

			$result_posts = mysqli_query($conn, "SELECT * FROM posts WHERE post_to = '$group_id' 
				AND post_status = '1' 
				AND post_type = 'discussion' 			
				AND created > '$last_visit'");	
			$new_group_post_count = mysqli_num_rows($result_posts);
			echo $new_group_post_count;
		}
	}			
	
	//Method C3: Get New File Activity
	//* Need to Write 

	//Method C4: Update Group Posts to Seen	
	public function setGroupPostsLastSeen($logged_in_user, $group_id) {
		global $conn;
		
		if (!($stmt = $conn->prepare("UPDATE group_users SET last_visit_posts = NOW() WHERE user_name = ? AND group_id = ?"))) {
			echo "Prepare failed: (" . $conn->errno . ") " . $conn->error;
		}
				
		if (!$stmt->bind_param('si', $logged_in_user, $group_id)) {
			echo "Binding parameters failed: (" . $stmt->errno . ") " . $stmt->error;
		}
		if (!$stmt->execute()) {
			echo "Execute failed: (" . $stmt->errno . ") " . $stmt->error;
		}	
	}	
	
	//Method C5: Update Group Discussion to Seen
	public function setGroupDiscussionLastSeen($logged_in_user, $group_id) {
		global $conn;
	
		if (!($stmt = $conn->prepare("UPDATE group_users SET last_visit_discussion = NOW() WHERE user_name = ? AND group_id = ?"))) {
			echo "Prepare failed: (" . $conn->errno . ") " . $conn->error;
		}
				
		if (!$stmt->bind_param('si', $logged_in_user, $group_id)) {
			echo "Binding parameters failed: (" . $stmt->errno . ") " . $stmt->error;
		}
		if (!$stmt->execute()) {
			echo "Execute failed: (" . $stmt->errno . ") " . $stmt->error;
		}	
	}		
	
	//Method C6: Update New File Activity to Seen
	public function setGroupFilesLastSeen($logged_in_user, $group_id) {
		global $conn;
	
		if (!($stmt = $conn->prepare("UPDATE group_users SET last_visit_files = NOW() WHERE user_name = ? AND group_id = ?"))) {
			echo "Prepare failed: (" . $conn->errno . ") " . $conn->error;
		}
				
		if (!$stmt->bind_param('si', $logged_in_user, $group_id)) {
			echo "Binding parameters failed: (" . $stmt->errno . ") " . $stmt->error;
		}
		if (!$stmt->execute()) {
			echo "Execute failed: (" . $stmt->errno . ") " . $stmt->error;
		}	
	}			
	

	//FUNCTIONS U: USER ACCOUNT	
	//Method D1: Register User
	public function registerUser($user_name, $first_name, $last_name, $email, $pword) {
		global $conn;
		
		//Create a salt using the current timestamp and encrypt the password and salt with SHA1
		$salt = time();
		$pwd = sha1($pword . $salt);
		$username =  $user_name;
		
		//Insert into User Login Table 
		$sql = 'INSERT INTO user_login (user_name, user_email, salt, password) VALUES (?, ?, ?, ?)';
		$stmt = $conn->stmt_init();
		$stmt = $conn->prepare($sql);
		$stmt->bind_param('ssis', $username, $email, $salt, $pwd);
		$stmt->execute();
		$stmt->close();

		//Pull user_id and update user_profile table with this id 
		if ($result_id = mysqli_prepare($conn, "SELECT user_id FROM user_login WHERE user_name=?")) {
			$result_id -> bind_param("s", $username);
			$result_id -> execute();
			$result_id -> bind_result($result_user_id);
			$result_id -> fetch();
			$user_id = $result_user_id;
			$result_id -> close();
		} 
		
		//Insert user data into User Profile 
		$default_image = "david.jpg";
		$biography = "They are (or were) a little people, about half our height, and smaller than the bearded dwarves. 
		Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps 
		them to disappear quietly and quickly when large stupid folk like you and me come blundering along, 
		making a noise like elephants which they can hear a mile off ";
		
		$sql = "INSERT INTO user_profile (user_name, user_id, image_name, root_folder, biography, first_name, last_name, email) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";		  
		$stmt = $conn->stmt_init();
		$stmt = $conn->prepare($sql);
		
		$stmt->bind_param('sissssss', $username, $user_id, $default_image, $username, $biography, $first_name, $last_name, $email);
		$stmt->execute();
		$stmt->close();
		
		//Insert into User Size (*If needed)
		$sql = "INSERT INTO user_size (user_name, user_id) VALUES (?, ?)";		  
		$stmt = $conn->stmt_init();
		$stmt = $conn->prepare($sql);
		$stmt->bind_param('si', $username, $user_id);
		$stmt->execute();
		$stmt->close();

		//Create new folder on server for new user creation (*If needed)
		/*
		if (!file_exists('user_files/user_uploads/'.$username.'')) {
			mkdir('user_files/user_uploads/'.$username.'', 0777, true);
		}
		
		//Insert folder details 
		*if you create a folder this is now in the files table 
		$sql = "INSERT INTO folders (folder_name, user_name) VALUES (?, ?)";		  
		$stmt = $conn->stmt_init();
		$stmt = $conn->prepare($sql);
		$stmt->bind_param('ss', $username, $username);
		$stmt->execute();
	
		
		//Check if item was inserted and output message 	
		if ($stmt->affected_rows == 1) {    
			$success = "you have been registered. You may now log in.";
		} else {
			$errors[] = 'Sorry, there was a problem with the database.';
		}	
		*/
	}
	
	
	//Method D2: Register User API
	public function registerUserAPI($user_name, $first_name, $last_name, $email, $pword, $user_key) {
		global $conn;
		
		//Create a salt using the current timestamp and encrypt the password and salt with SHA1
		$salt = time();
		$pwd = sha1($pword . $salt);
		$username =  $user_name;
		
		//Insert into User Login Table 
		$sql = 'INSERT INTO user_login (user_name, user_email, salt, password, user_key) VALUES (?, ?, ?, ?, ?)';
		$stmt = $conn->stmt_init();
		$stmt = $conn->prepare($sql);
		$stmt->bind_param('ssiss', $username, $email, $salt, $pwd, $user_key);
		$stmt->execute();
		$stmt->close();

		//Pull user_id and update user_profile table with this id 
		if ($result_id = mysqli_prepare($conn, "SELECT user_id FROM user_login WHERE user_name=?")) {
			$result_id -> bind_param("s", $username);
			$result_id -> execute();
			$result_id -> bind_result($result_user_id);
			$result_id -> fetch();
			$user_id = $result_user_id;
			$result_id -> close();
		} 
		
		//Insert user data into User Profile 
		$default_image = "david.jpg";
		$biography = "They are (or were) a little people, about half our height, and smaller than the bearded dwarves. 
		Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps 
		them to disappear quietly and quickly when large stupid folk like you and me come blundering along, 
		making a noise like elephants which they can hear a mile off ";
		
		$sql = "INSERT INTO user_profile (user_name, user_id, image_name, root_folder, biography, first_name, last_name, email) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";		  
		$stmt = $conn->stmt_init();
		$stmt = $conn->prepare($sql);
		
		$stmt->bind_param('sissssss', $username, $user_id, $default_image, $username, $biography, $first_name, $last_name, $email);
		$stmt->execute();
		$stmt->close();
		
		//Insert into User Size (*If needed)
		$sql = "INSERT INTO user_size (user_name, user_id) VALUES (?, ?)";		  
		$stmt = $conn->stmt_init();
		$stmt = $conn->prepare($sql);
		$stmt->bind_param('si', $username, $user_id);
		$stmt->execute();
		$stmt->close();

	}
	
	
	//Method D3: Register User with Email
	public function registerUserEmail($user_name, $first_name, $last_name, $email, $pword, $hash, $request_from_friend) {
		global $conn;
		
		//STEP 1: Create a salt using the current timestamp and encrypt the password and salt with SHA1
		$salt = time();
		$pwd = sha1($pword . $salt);
		$username =  $user_name;
		
		//STEP 2: Insert into User Login Table 
		$sql = 'INSERT INTO user_login (user_name, user_email, salt, password) VALUES (?, ?, ?, ?)';
		$stmt = $conn->stmt_init();
		$stmt = $conn->prepare($sql);
		$stmt->bind_param('ssis', $username, $email, $salt, $pwd);
		$stmt->execute();
		$stmt->close();

		//STEP 3: Pull user_id and update user_profile table with this id 
		if ($result_id = mysqli_prepare($conn, "SELECT user_id FROM user_login WHERE user_name=?")) {
			$result_id -> bind_param("s", $username);
			$result_id -> execute();
			$result_id -> bind_result($result_user_id);
			$result_id -> fetch();
			$user_id = $result_user_id;
			$result_id -> close();
		} 
		
		//STEP 4: Insert user data into User Profile 
		$default_image = "david.jpg";
		$biography = "They are (or were) a little people, about half our height, and smaller than the bearded dwarves. 
		Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps 
		them to disappear quietly and quickly when large stupid folk like you and me come blundering along, 
		making a noise like elephants which they can hear a mile off <- Not your bio change it here";
		
		$sql = "INSERT INTO user_profile (user_name, user_id, image_name, root_folder, biography, first_name, last_name, email) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";		  
		$stmt = $conn->stmt_init();
		$stmt = $conn->prepare($sql);
		
		$stmt->bind_param('sissssss', $username, $user_id, $default_image, $username, $biography, $first_name, $last_name, $email);
		$stmt->execute();
		$stmt->close();
		
		//STEP 5: Insert into User Size (*If needed)
		$sql = "INSERT INTO user_size (user_name, user_id) VALUES (?, ?)";		  
		$stmt = $conn->stmt_init();
		$stmt = $conn->prepare($sql);
		$stmt->bind_param('si', $username, $user_id);
		$stmt->execute();
		$stmt->close();

		//STEP 6: Create new folder on server (*If needed)
		/*
		if (!file_exists('user_files/user_uploads/'.$username.'')) {
			mkdir('user_files/user_uploads/'.$username.'', 0777, true);
		}

		$sql = "INSERT INTO folders (folder_name, user_name) VALUES (?, ?)";		  
		$stmt = $conn->stmt_init();
		$stmt = $conn->prepare($sql);
		$stmt->bind_param('ss', $username, $username);
		$stmt->execute();
		*/

		//STEP 6: Add both users as Friends
	
		//Pull user_id and update user_profile table with this id 
		if ($result_id_friend = mysqli_prepare($conn, "SELECT user_id FROM user_login WHERE user_name=?")) {
			$result_id_friend -> bind_param("s", $request_from_friend);
			$result_id_friend -> execute();
			$result_id_friend -> bind_result($result_user_id_friend);
			$result_id_friend -> fetch();
			$user_id_friend = $result_user_id_friend;
			$result_id_friend -> close();
		} 
		
		$friend_one = $user_name;
		$friend_one_id = $user_id;
		$friend_two = $request_from_friend;
		$friend_two_id = $user_id_friend;
			
		//Create Friendship one		
		$friend_key_one = $friend_one_id . $friend_two_id;	
			
		$sql = "INSERT INTO friends (user_name, user_id, friend_user_name, friend_id, friend_key) VALUES (?, ?, ?, ?, ?)";		  
		$stmt = $conn->stmt_init();
		$stmt = $conn->prepare($sql);
		$stmt->bind_param('sisii', $friend_one, $friend_one_id, $friend_two, $friend_two_id, $friend_key_one);
		$stmt->execute();
		$stmt->close();
		
		//Create Friendship key two 
		$friend_key_two = $friend_two_id . $friend_one_id;	
		
		$sql = "INSERT INTO friends (user_name, user_id, friend_user_name, friend_id, friend_key) VALUES (?, ?, ?, ?, ?)";		  
		$stmt = $conn->stmt_init();
		$stmt = $conn->prepare($sql);
		$stmt->bind_param('sisii', $friend_two, $friend_two_id, $friend_one, $friend_one_id, $friend_key_two);
		$stmt->execute();
				
		//Check if item was inserted and output message 	
		if ($stmt->affected_rows == 1) {    
			$success = "you have been registered. You may now log in.";
		} else {
			$errors[] = 'Sorry, there was a problem with the database.';
		}	
	}
	
	//Method D5: Delete User	
	public function deleteUser() {
		//Update on Client Side 
		echo "Delete User";
	} 		

}
?>