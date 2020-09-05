<?php
require_once('connection.inc.php');	
require_once('Notifications.php');

/*
METHODS A: USER RELATED
	1) Method G1: Get Group Users 
	2A) Method 2A: Get Current Users Friends who Can be Invited to Group 
	2) Method G2: Create Group from Existing User 
	3) Method G3: Add Existing User to Group 
	4) Method G4: Add User to Group through Email 
	5) Method G5: Rename Group
	6) Method G6: Leave Group 
	7) Method G7: Get Group Parent and Group Type (Group, Category, List)
	8) Method G8: Get an Associate Array of Users to Display 
	9) Method G9: Get Group Created 
	10) Method G10: Get Group Activity  
	11) Method G11: Follow Group 
	12) Method G12: UnFollow Group 
	13) Method G13: Delete Group 
	14) Method G14: Get Group Last Visit  

	
METHODS B: GROUP ACTIVITY 


*/

class Group {
	public $groupID 					= "";
	public $groupName 					= "";
	public $groupImage 					= "";
	public $hasGroupImage 				= "";
	public $groupCreatedBy 				= "";
	public $groupCreatedByLoggedinUser  = ""; //1 created by logged in user 0 any other user
	public $groupStatus 				= ""; //0 is pending 1 is not pending 
	public $groupStatusBinary			= ""; 
	public $totalUsersCount				= "";
	public $groupCreatedDay				= "";
	public $groupCreatedMonth			= "";	
	public $groupCreatedYear			= "";
	public $groupParent					= "";
	public $projectParent				= "";

	//Groups Users
	public $totalGroupUsers 			= array();	
	public $groupUsers 					= array();
	public $activeGroupUsers 			= array();
	public $pendingGroupUsers 			= array();
	public $activeGroupUsersID 			= array();
	public $pendingGroupUsersID 		= array();
	public $totalGroupUsersWithStatus 	= array();

	//User Friends to Invite 
	public $groupFriendDisplay 			= array();
	public $GroupInvitableFriendsArray 	= array();
	public $activeGroupUsersImage		= array();	

	//Group Followers
	public $loggedInUserCurrentlyFollowing	= "";	
	public $loggedInUserFollowingText   	= "";	
	public $groupFollowersArray				= array();	
	public $groupFollowersCount				= "";	
	
	//Group Activity: Stats and Information
	public $groupWallPosts	 			= "";	
	public $groupWallPostsUnseen 		= "";	
	public $groupTotalDiscussions		= "";	
	public $groupTotalUnseenDiscussion 	= "";	
	public $groupFiles		 			= "";	
	public $groupFilesUnseen 			= "";		
	public $groupLinks		 			= "";	
	public $groupLinksUnseen 			= "";	
	
	public $groupListPosts	 			= "";	
	public $groupListPostsUnseen		= "";	
 
	public $totalUnseenActivity			= "";
	public $groupNewMembers		 		= ""; //New Members since last login 
	public $groupLastVisit		 		= ""; //New Members since last login 

	public $total_notifications = "";	
		
	public function __construct($groupId ) {
		$this->groupID = $groupId;
	}
	

	//METHOD 11: Get New Group Discussion Total 
	//Step 1: Find Last Time Logged in User Visited this page

	
	//METHOD 10: Get Group Activity  
	public function getGroupActivity($loggedInUser, $group_id) {
		global $conn;

		//TYPE 1: WALL
		
		//PART 1: Get Total Wall Posts 
		$sql = "SELECT post_id FROM posts WHERE post_to = '$group_id' 
			AND post_status = '1' 
			AND (post_type = 'photo' OR post_type = 'video' OR post_type = 'file' OR post_type = 'text' OR post_type = 'article')";

		$result_wall_posts = $conn->query($sql) or die(mysqli_error());	
		$group_wall_post_count = 0;
		
		//Create an array with the returned Query of active users 
		while($row_wall_posts = mysqli_fetch_array($result_wall_posts)) {
			$current_post = $row_wall_posts['post_id'];
			$group_wall_post_count = $group_wall_post_count + 1;
		}		
	
		$this->groupWallPosts = $group_wall_post_count;
		
		//PART 2: Get Total Unviewed Wall Posts
		$sql = "SELECT * FROM user_analytics WHERE page_url = 'group_posts.php' 		
			AND group_id = '$group_id' 
			AND user_name = '$loggedInUser'";
		
		$result_wall_analytics = $conn->query($sql) or die(mysqli_error());	
		
		while($row_wall_analytics = mysqli_fetch_array($result_wall_analytics)) {
			$last_page_visit = $row_wall_analytics['last_visit'];
		}
		
		//Handle user having not visited this group
		if(!isset($last_page_visit)) { 
			$last_page_visit = "2000-01-01 12:00:00 ";
		} 
		
		//Get Total Unviewed Posts 
		$sql = "SELECT post_id FROM posts WHERE post_to = '$group_id' 
		AND post_status = '1' 
		AND list_id = 0
		AND post_from != '$loggedInUser'
		AND (post_type = 'photo' OR post_type = 'video' OR post_type = 'file' OR post_type = 'text' OR post_type = 'article')
		AND created >= '$last_page_visit' ";

		$result_wall_posts_unseen = $conn->query($sql) or die(mysqli_error());	

		$group_wall_post_count_unseen = 0;
		
		//Create an array with the returned Query of active users 
		while($row_wall_posts_unseen = mysqli_fetch_array($result_wall_posts_unseen)) {
			$current_post = $row_wall_posts_unseen['post_id'];
			$group_wall_post_count_unseen = $group_wall_post_count_unseen + 1;
		}		
			$this->groupWallPostsUnseen = $group_wall_post_count_unseen;		
				
			
		//TYPE 2: DISCUSSION
			//PART 1: Get Total Discussion
			$sql = "SELECT post_id FROM posts WHERE post_to = '$group_id' 
				AND post_status = '1' 
				AND post_type = 'discussion'";

			$result_discussion_total = $conn->query($sql) or die(mysqli_error());	
			$discussion_total_posts = mysqli_num_rows($result_discussion_total);

		//TYPE 3: FILES 	
			//PART 1: Get Total Files	
			$sql = "SELECT file_id FROM files WHERE group_id = '$group_id' 
				AND file_status = '1' 
				AND recycle_status = '0'";

			$result_files = $conn->query($sql) or die(mysqli_error());	

			$group_files_count = 0;
			
			//Create an array with the returned Query of active users 
			while($row_files = mysqli_fetch_array($result_files)) {
				$current_files = $row_files['file_id'];
				$group_files_count = $group_files_count + 1;
			}		
		
			$this->groupFiles = $group_files_count;		
		
			//PART 2: Get Total Unviewed Files
			//Get last page view 
			$sql = "SELECT * FROM user_analytics WHERE page_url = 'group_files.php' 		
				AND group_id = '$group_id' 
				AND user_name = '$loggedInUser'";

			$result_files_analytics = $conn->query($sql) or die(mysqli_error());	
			
			while($row_files_analytics = mysqli_fetch_array($result_files_analytics)) {
				$last_files_page_view = $row_files_analytics['last_visit'];
			}		
			
			//Get Total Unviewed Posts 
			if(isset($last_files_page_view)) {
				$sql = "SELECT file_id FROM files WHERE group_id = '$group_id' 
				AND file_status = '1' 
				AND recycle_status = '0'
				AND file_created >= '$last_files_page_view' ";

				$result_files_posts_unseen = $conn->query($sql) or die(mysqli_error());	

				$group_files_post_count_unseen = 0;
				
				//Create an array with the returned Query of active users 
				while($row_files_posts_unseen = mysqli_fetch_array($result_files_posts_unseen)) {
					$current_post = $row_files_posts_unseen['file_id'];
					$group_files_post_count_unseen = $group_files_post_count_unseen + 1;
				}		
			
				$this->groupFilesUnseen = $group_files_post_count_unseen;		
			}	

		
		//TYPE 4: LINKS
			//PART 1: Get Total Files	
			$sql = "SELECT link_id FROM links WHERE group_id = '$group_id' 
				AND link_status = '1' 
				AND recycle_status = '0'";

			$result_links = $conn->query($sql) or die(mysqli_error());	

			$group_links_count = 0;
			
			//Create an array with the returned Query of active users 
			while($row_links = mysqli_fetch_array($result_links)) {
				$current_files = $row_links['link_id'];
				$group_links_count = $group_links_count + 1;
			}		
		
			$this->groupLinks = $group_links_count;				
		
		
			//PART 2: Get Total Unviewed Files
			//Get last page view 
			$sql = "SELECT * FROM user_analytics WHERE page_url = 'group_links.php' 		
				AND group_id = '$group_id' 
				AND user_name = '$loggedInUser'";

			$result_links_analytics = $conn->query($sql) or die(mysqli_error());	
			
			while($row_links_analytics = mysqli_fetch_array($result_links_analytics)) {
				$last_links_page_view = $row_links_analytics['last_visit'];
			}		
			
			//Get Total Unviewed Posts 
			if(isset($last_links_page_view)) {
				$sql = "SELECT link_id FROM links WHERE group_id = '$group_id' 
				AND link_status = '1' 
				AND recycle_status = '0'
				AND created >= '$last_links_page_view' ";

				$result_links_posts_unseen = $conn->query($sql) or die(mysqli_error());	

				$group_links_post_count_unseen = 0;
				
				//Create an array with the returned Query of active users 
				while($row_links_posts_unseen = mysqli_fetch_array($result_links_posts_unseen)) {
					$current_post = $row_links_posts_unseen['link_id'];
					$group_links_post_count_unseen = $group_links_post_count_unseen + 1;
				}		
			
				$this->groupLinksUnseen = $group_links_post_count_unseen;		
			}
			

	//LISTS
		//PART 1: Get Total Wall Posts that were made to a list in this group	
		$sql = "SELECT post_id FROM posts WHERE post_to = '$group_id' 
			AND list_id != '0'
			AND post_status = '1' 
			AND (post_type = 'photo' OR post_type = 'video' OR post_type = 'file' OR post_type = 'text' OR post_type = 'article' OR post_type = 'link')";

		$result_wall_lists = $conn->query($sql) or die(mysqli_error());	
		$group_wall_list_count = 0;
		
		//Create an array with the returned Query of active users 
		while($row_wall_lists = mysqli_fetch_array($result_wall_lists)) {
			$current_post = $row_wall_lists['post_id'];
			$group_wall_list_count = $group_wall_list_count + 1;
		}		
	
		$this->groupListPosts = $group_wall_list_count;
		
		//PART 2: Get Total Unviewed Wall Posts
		$sql = "SELECT * FROM user_analytics WHERE page_url = 'group_lists.php' 		
			AND group_id = '$group_id' 
			AND user_name = '$loggedInUser'";
		
		$result_wall_lists_analytics = $conn->query($sql) or die(mysqli_error());	
		
		while($row_wall_lists_analytics = mysqli_fetch_array($result_wall_lists_analytics)) {
			$last_page_visit = $row_wall_lists_analytics['last_visit'];
		}
		
		//public $groupListPosts	 			= "";	
		//public $groupListPostsUnseen		= "";	
		//Get Total Unviewed Posts 
		$sql = "SELECT post_id FROM posts WHERE post_to = '$group_id' 
			AND post_status = '1' 
			AND list_id != 0
			AND (post_type = 'photo' OR post_type = 'video' OR post_type = 'file' OR post_type = 'text' OR post_type = 'article' OR post_type = 'link')
			AND created >= '$last_page_visit' ";

		$result_wall_lists_unseen = $conn->query($sql) or die(mysqli_error());
		$group_wall_lists_count_unseen = 0;
		
		//Create an array with the returned Query of active users 
		while($row_wall_lists_unseen = mysqli_fetch_array($result_wall_lists_unseen)) {
			$current_post = $row_wall_posts_unseen['post_id'];
			$group_wall_lists_count_unseen = $group_wall_lists_count_unseen + 1;
		}		
		$this->groupListPostsUnseen = $group_wall_lists_count_unseen;	


		
		//ACTIVITY: First Time (Handle user having not visited this group) 
		if(!isset($last_page_visit)) { 
		
			if(!isset($group_wall_post_count_unseen)) {
				$group_wall_post_count_unseen = 0;
			}

			if(!isset($group_discussion_post_count_unseen)) {
				$group_discussion_post_count_unseen = 0;
			}

			if(!isset($group_files_post_count_unseen)) {
				$group_files_post_count_unseen = 0;
			}

			if(!isset($group_links_post_count_unseen)) {
				$group_links_post_count_unseen = 0;
			}
				
		
			$this->groupListPostsUnseen = $group_wall_lists_count_unseen;		

			
			$total_unseen_activity = $group_wall_lists_count_unseen + $group_wall_post_count_unseen + $group_discussion_post_count_unseen + $group_files_post_count_unseen + $group_links_post_count_unseen;
			$this->totalUnseenActivity = $total_unseen_activity;
						
		}
	}
	
	
	//METHOD: Get Current Users Friends who Can be Invited to Group	
	public function getGroupInvitableUsers($logged_in_user, $logged_in_users_friends_array, $total_group_users_array) {
		global $conn;
		
		//STEP 2: Find Invitable Friends 
		//$invitable_friends = array_diff($logged_in_users_friends_array, $total_group_users_array);	
		$invitable_friends = array_udiff($logged_in_users_friends_array, $total_group_users_array, 'strcasecmp');	
		$invitable_friends = array_unique($invitable_friends); 
		$invitable_friends = array_values($invitable_friends);	
		$this->GroupInvitableFriendsArray = $invitable_friends;

	}	

	
	//METHOD 1: Get Group Users 
	public function getGroupUsers($loggedInUser, $group_id) {
		global $conn;
			
			
		//PART 2: Get all active members (This may not need to limit to active member in this query, you can also use groupStatus to check)
		$sql = "SELECT group_users.user_name, group_users.active_member, user_login.user_name, user_login.account_deleted
				FROM group_users INNER JOIN user_login
				ON group_users.user_name = user_login.user_name
				WHERE group_id = '$group_id' 
				AND active_member = '1' 
				AND account_deleted = '0'";
		
		$result_group_friend = $conn->query($sql) or die(mysqli_error());	
		
		//Declare array to hold all users in each square
		$active_group_users = array();
		$active_group_users_image = array();
		$active_group_users_id = array();
		$active_user_count = 0;
		
		//Create an array with the returned Query of active users 
		while($row_group_friend = mysqli_fetch_array($result_group_friend)) {
			$user_name = $row_group_friend['user_name'];
			
			//Get User Image Name 	
			if ($result = mysqli_prepare($conn, "SELECT image_name FROM user_profile WHERE user_name=?")) {
				$result -> bind_param("s", $user_name);
				$result -> execute(); 
				$result -> bind_result($result_image);
				$result -> fetch();
				$user_image = $result_image;
				$result -> close();
			} 

			$active_group_users_image[$active_user_count] = $user_image;

			//$active_group_users[$active_user_count] = $row_group_friend['user_name'];	
			$active_group_users[$active_user_count] = strtolower($row_group_friend['user_name']);
			//Get User ID 
			if ($result = mysqli_prepare($conn, "SELECT user_id FROM user_profile WHERE user_name=?")) {
				$result -> bind_param("s", $user_name);
				$result -> execute();
				$result -> bind_result($result_user_id);
				$result -> fetch();
				$user_id = $result_user_id;
				$result -> close();
			} 
				
			$user_id = getUserID($user_name);
			$active_group_users_id[$active_user_count] = $user_id;
			$active_user_count = $active_user_count + 1;
		}
		
		//Remove any potential duplicates
		$active_group_users 	= array_unique($active_group_users); 
		$active_group_users 	= array_values($active_group_users);
		$active_group_users_id  = array_unique($active_group_users_id); 
		$active_group_users_id  = array_values($active_group_users_id);
		
		$this->activeGroupUsers= $active_group_users;
		$this->activeGroupUsersID= $active_group_users_id;			
		$this->activeGroupUsersImage= $active_group_users_image;			
			
		//PART 3: Get all pending members	
		/*
		$sql = "SELECT group_users.user_name, group_users.active_member, user_login.user_name, user_login.user_id, user_login.account_deleted
				FROM group_users INNER JOIN user_login
				ON group_users.user_name = user_login.user_name
				WHERE group_id = '$group_id' 
				AND active_member = '0' 
				AND account_deleted = '0'";

		$result_group_pending= $conn->query($sql) or die(mysqli_error());	

		//Declare array to hold all users in each square
		$pending_group_users = array();
		$pending_group_users_id = array();
		$pending_user_count = 0;

		while($row_group_pending = mysqli_fetch_array($result_group_pending)) {
			$user_name = strtolower($row_group_pending['user_name']);
			
			$user_id= $row_group_pending['user_id'];
			$pending_group_users[$pending_user_count] = $user_name;		
			$pending_group_users_id[$pending_user_count] = $user_id;		
			$pending_user_count = $pending_user_count + 1;
		}				
			
		$pending_group_users = array_unique($pending_group_users); 
		$pending_group_users = array_values($pending_group_users);		
		$pending_group_users_id = array_unique($pending_group_users_id); 
		$pending_group_users_id = array_values($pending_group_users_id);	
		
		$this->pendingGroupUsers= $pending_group_users;
		$this->pendingGroupUsersID= $pending_group_users_id;		
		*/
		/*		
		*backup this works but doesn't filter out missing requests 
		//PART 3: Get all pending members			
		$sql = "SELECT group_users.user_name, group_users.active_member, user_login.user_name, user_login.user_id, user_login.account_deleted
				FROM group_users INNER JOIN user_login
				ON group_users.user_name = user_login.user_name
				WHERE group_id = '$group_id' 
				AND active_member = '0' 
				AND account_deleted = '0'";

		$result_group_pending= $conn->query($sql) or die(mysqli_error());	

		//Declare array to hold all users in each square
		$pending_group_users = array();
		$pending_group_users_id = array();
		$pending_user_count = 0;

		while($row_group_pending = mysqli_fetch_array($result_group_pending)) {
			$user_name = strtolower($row_group_pending['user_name']);
			
			$user_id= $row_group_pending['user_id'];
			$pending_group_users[$pending_user_count] = $user_name;		
			$pending_group_users_id[$pending_user_count] = $user_id;		
			$pending_user_count = $pending_user_count + 1;
		}				
			
		$pending_group_users = array_unique($pending_group_users); 
		$pending_group_users = array_values($pending_group_users);		
		$pending_group_users_id = array_unique($pending_group_users_id); 
		$pending_group_users_id = array_values($pending_group_users_id);	
		
		$this->pendingGroupUsers= $pending_group_users;
		$this->pendingGroupUsersID= $pending_group_users_id;		
		*/

		//PART 4: Get all group members
		//$sql = "SELECT user_name FROM group_users WHERE group_id = '$group_id'";
		$sql = "SELECT group_users.user_name, group_users.active_member, user_login.user_name, user_login.user_id, user_login.account_deleted
				FROM group_users INNER JOIN user_login
				ON group_users.user_name = user_login.user_name
				WHERE group_id = '$group_id' 
				AND account_deleted = '0'";		
		
		$result_total = $conn->query($sql) or die(mysqli_error());	
		
		//Declare array to hold all users in each square
		$total_group_users = array();
		$total_group_users_with_status = array();
		$total_user_count = 0;
		
		//Create an array with the returned Query of active users 
		while($row_total = mysqli_fetch_array($result_total )) {
			$current_group_member = $row_total['user_name'];
			$total_group_users[$total_user_count] = strtolower($row_total['user_name']);
			$total_group_users_with_status[$current_group_member] = $row_total['active_member'];
			$total_user_count = $total_user_count + 1;
		}
		$this->totalUsersCount = $total_user_count;
		
		//Remove any potential duplicates
		$total_group_users = array_unique($total_group_users); 
		$total_group_users = array_values($total_group_users);				
		
		//Remove any potential duplicates
		//$total_group_users_with_status = array_unique($total_group_users_with_status); 
		//$total_group_users_with_status = array_values($total_group_users_with_status);		
		
		$this->totalGroupUsers= $total_group_users;
		$this->totalGroupUsersWithStatus= $total_group_users_with_status;

		
		//PART 6: Get Group Name 	
		if ($result_name = mysqli_prepare($conn, "SELECT group_name FROM groups WHERE group_id=?")) {
			$result_name -> bind_param("i", $group_id);
			$result_name -> execute(); 
			$result_name -> bind_result($result_group_name);
			$result_name -> fetch();
			$group_name = $result_group_name;
			$result_name -> close();

			if(empty($group_name)) {
				$group_name = "Name Me =)";
			} 
			$this->groupName = $group_name;
		} 
		
		//Get Group Image		
		$sql = "SELECT * FROM groups WHERE group_id = '$group_id' ";
		$result_group_image = $conn->query($sql) or die(mysqli_error());	

		while($row_group_image = mysqli_fetch_array($result_group_image)) { 
		
			$group_image = $row_group_image['group_image'];			
			$file_exists_test = "../../user_uploads/group_image/" . $group_image;

			if(file_exists($file_exists_test)==1) {
				$this->groupImage = $group_image;					
			} else {
				$this->groupImage 	= "group_default_image.png"; 	
			}
			//Check if a group image exists
			if($group_image !== '') {
				$this->hasGroupImage = 1; 
			} else {
				$this->hasGroupImage = 0; 				
			}
			
			//Group Created By
			$this->groupCreatedBy = $row_group_image['created_by'];	
			$created_by = $row_group_image['created_by'];			
			if(strcasecmp($created_by,$loggedInUser)==0) {
				$this->groupCreatedByLoggedinUser = 1;
			} else {
				$this->groupCreatedByLoggedinUser = 0;			
			}

		} 
		
		//Get status of Logged in User (Do not display if member is not active yet: Also this current is filtered out in the originial query) 
		$sql = "SELECT * FROM group_users WHERE group_id = '$group_id' AND user_name = '$loggedInUser'";
		$result_pending_status = $conn->query($sql) or die(mysqli_error());		

		$pending = "";
		$pending_status = "";
		
		while($row_pending_status = mysqli_fetch_array($result_pending_status)) {
			$pending_status =  $row_pending_status['active_member'];
		}	
		
		if($pending_status == 1) {
			$pending = "not pending";
		} else {
			$pending = "pending";	
		}

		//Get status of square if it has pending person or not
		$this->groupStatus = $pending;
		$this->groupStatusBinary = $pending_status;
		
		
		//PART 6: Get Group Followers 
		$sql = "SELECT group_followers.user_name, group_followers.active_member, user_login.user_name, user_login.user_id, user_login.account_deleted
				FROM group_followers INNER JOIN user_login
				ON group_followers.user_name = user_login.user_name
				WHERE group_id = '$group_id' 
				AND account_deleted = '0'";		
		
		$result_followers = $conn->query($sql) or die(mysqli_error());	
		
		//Declare array to hold all users in each square
		$total_group_followers_array = array();
		$total_followers_count = 0;
		
		//Create an array with the returned Query of active users 
		while($row_followers = mysqli_fetch_array($result_followers )) {
			$total_group_followers_array[$total_followers_count] = strtolower($row_followers['user_name']);
			$total_followers_count = $total_followers_count + 1;
		}
		$this->groupFollowersCount = $total_followers_count;
		
		//Remove any potential duplicates
		$total_group_followers_array = array_unique($total_group_followers_array); 
		$total_group_followers_array = array_values($total_group_followers_array);		
		
		$this->groupFollowersArray= $total_group_followers_array;
	
	}
	

	
	//METHOD XX: Get Pending Group Users 
	public function getPendingGroupUsers($loggedInUser, $group_id) {
		global $conn;
			
		//PART 1: Clean Data between three database tables 	
		//Step 1: Create an Array of All Pending Group Members 
		$sql = "SELECT group_users.user_name, group_users.active_member, user_login.user_name, user_login.user_id, user_login.account_deleted
				FROM group_users INNER JOIN user_login
				ON group_users.user_name = user_login.user_name
				WHERE group_id = '$group_id' 
				AND active_member = '0' 
				AND account_deleted = '0'";

		$result_group_pending= $conn->query($sql) or die(mysqli_error());	

		//Add all the Current Pending Members to an Array 
		$pending_group_users_array = array();
		$pending_user_count = 0;

		while($row_group_pending = mysqli_fetch_array($result_group_pending)) {
			$user_name = strtolower($row_group_pending['user_name']);
			$user_id= $row_group_pending['user_id'];
			$pending_group_users_array[$pending_user_count] = $user_name;		
			$pending_user_count = $pending_user_count + 1;
		}			
			
		$pending_group_users_array = array_unique($pending_group_users_array); 
		$pending_group_users_array = array_values($pending_group_users_array);		
		$pending_group_users_count = count($pending_group_users_array);
		
		//Step 2: Create an Array of All Active Pending Group Invite Requests
		$pending_group_requests_array = array();
		$pending_group_requests_count = 0;
		
		$sql_pending = $sql = "SELECT * FROM pending_requests WHERE request_is_pending = 1 
			AND group_id = '$group_id' 
			AND (request_type = 'group_invite' OR request_type = 'new_group') ";
			
		$result_pending_member= $conn->query($sql_pending) or die(mysqli_error());	

		while($row_pending_member = mysqli_fetch_array($result_pending_member)) {
			$pending_group_requests_array[$pending_group_requests_count] = strtolower($row_pending_member['sent_to']);		
			$pending_group_requests_count = $pending_group_requests_count + 1;		
		}	
		
		//Step 3: Get All the Matching Requests that are an active invite and active request 
		$actual_pending_group_requests_array = array_intersect($pending_group_users_array,$pending_group_requests_array);
		$actual_pending_group_requests_array = array_values($actual_pending_group_requests_array);		
		$actual_pending_group_requests_count = count($actual_pending_group_requests_array);
		
		//Step 4: Remove Users who have no Request
		$remove_no_request_array = array_diff($pending_group_requests_array, $actual_pending_group_requests_array);
		
		$remove_no_group_count = count($remove_no_request_array);
		for($x = 0; $x < $remove_no_group_count; $x++) {
			$user_to_remove = $remove_no_request_array[$x];
			$sql = "DELETE FROM pending_requests WHERE group_id = '$group_id' 
				AND sent_to = '$user_to_remove'";

			if ($conn->query($sql) === TRUE) {
				//echo "Record deleted successfully";
			} else {
				//echo "Error deleting record: " . $conn->error;
			}
		}
	 
		//Step 5: Remove Users who have no Group
		$remove_no_group_array = array_diff($pending_group_users_array, $actual_pending_group_requests_array);
		$remove_no_group_count = count($remove_no_group_array);
		
		for($x = 0; $x < $remove_no_group_count; $x++) {
			$user_to_remove = $remove_no_group_array[$x];
			$sql = "DELETE FROM group_users WHERE group_id = '$group_id' 
				AND user_name = '$user_to_remove'
				AND active_member = 0";

			if ($conn->query($sql) === TRUE) {
				//echo "Record deleted successfully";
			} else {
				//echo "Error deleting record: " . $conn->error;
			}
		}		
		

		//PART 3: Get all pending members			
		$sql = "SELECT group_users.user_name, group_users.active_member, user_login.user_name, user_login.user_id, user_login.account_deleted
				FROM group_users INNER JOIN user_login
				ON group_users.user_name = user_login.user_name
				WHERE group_id = '$group_id' 
				AND active_member = '0' 
				AND account_deleted = '0'";

		$result_group_pending= $conn->query($sql) or die(mysqli_error());	

		//Declare array to hold all users in each square
		$pending_group_users = array();
		$pending_group_users_id = array();
		$pending_user_count = 0;

		while($row_group_pending = mysqli_fetch_array($result_group_pending)) {
			$user_name = strtolower($row_group_pending['user_name']);
			
			$user_id= $row_group_pending['user_id'];
			$pending_group_users[$pending_user_count] = $user_name;		
			$pending_group_users_id[$pending_user_count] = $user_id;		
			$pending_user_count = $pending_user_count + 1;
		}				
			
		$pending_group_users = array_unique($pending_group_users); 
		$pending_group_users = array_values($pending_group_users);		
		$pending_group_users_id = array_unique($pending_group_users_id); 
		$pending_group_users_id = array_values($pending_group_users_id);	
		
		$this->pendingGroupUsers= $pending_group_users;
		$this->pendingGroupUsersID= $pending_group_users_id;		
		
	
	}
	
	
	
	//METHOD 2: Create Group from Existing User 
	public function createGroupExistingUsers($request_type, $logged_in_user, $selected_friends, $new_group_id, $group_key) {
		global $conn;	
		
		//STEP 1: Insert Group Users into New Group
		$selected_friends_count = sizeof($selected_friends);		
		$status 				= 1;
		$status_pending 		= 0;
		
		for($x = 0; $x < $selected_friends_count; $x++) {
			$friend_invited_current = $selected_friends[$x];
			
			//Execute SQL for each friend 
			$sql = 'INSERT INTO group_users (group_id, user_name, active_member) VALUES (?, ?, ?)';			  
			$stmt = $conn->stmt_init();
			$stmt = $conn->prepare($sql);
			$stmt->bind_param('isi', $new_group_id, $friend_invited_current, $status_pending);
			$stmt->execute();		
			$stmt->close();	
		}			
		
		//Make Group Creator an Active Member
		mysqli_query($conn,"UPDATE group_users SET active_member ='1' WHERE user_name = '$logged_in_user' AND group_id = '$new_group_id'");
			
	}
	
	
	//METHOD 3: Add Existing User to Group 
	public function addUserExisting($group_id, $selected_friends, $logged_in_user) {
		global $conn;
		
		$request_type 		= "group_invite";
		$request_type_text  = "Invited you to a Group";
		$request_is_pending = 1;
		$active_member 		= 0;

		//Step 1: Insert into Group Users 
		$total_new_friends = count($selected_friends);	
		
		//Loop through each invited friend and add to database 
		for($x = 0; $x < $total_new_friends; $x++) {
			$friend_invited_current = $selected_friends[$x];
		
			$sql = 'INSERT INTO group_users (group_id, user_name, active_member) VALUES (?, ?, ?)';			  
			$stmt = $conn->stmt_init();
			$stmt = $conn->prepare($sql);
			// bind parameters and insert the details into the database
			$stmt->bind_param('isi', $group_id, $friend_invited_current, $active_member);
			//$stmt->execute();
			if ($stmt->execute()) {
				echo "New record created successfully";
			} else {
				echo "Error: <br>" . mysqli_error($conn);
			}			
			$stmt->close();	
		}


		//Step 2: Add Pending Requests- Insert into pending users 
		for($x = 0; $x < $total_new_friends; $x++) {
			$friend_invited_current = $selected_friends[$x];
			$sql = 'INSERT INTO pending_requests (request_type, request_type_text, request_is_pending, sent_by, sent_to, group_id, updated, created) 
				VALUES (?,?,?,?,?,?, NOW(), NOW())';			  
			$stmt = $conn->stmt_init();
			$stmt = $conn->prepare($sql);
			// bind parameters and insert the details into the database
			$stmt->bind_param('ssissi', $request_type, $request_type_text, $request_is_pending, $logged_in_user, $friend_invited_current, $group_id);
			$stmt->execute();				
		}
	}	

	
	//METHOD 4: Add User to Group through Email 
	public function addUserExistingEmail($group_id, $friend_email, $logged_in_user, $site_url) {
		global $conn;
	
		$request_type  = "new_group";
		$status = 1;
		$active_member = 0;
		$group_key = uniqid(microtime(),1);
		
		//Create Email Link 
		$part_one = "<a href=";
		$part_two = $site_url;
		$part_three = "?hash=";
		
		//$link_part_one = "<a href=\"http://people.oregonstate.edu/~vasquezd/sites/shareshare/site_files/register_email.php\">Join ShareShare</a>"; 		

		//Step 1: Send Email to Person 
		$hash = sha1(mt_rand(10000,99999).time().$friend_email);
		//$link_part_one = $part_one . $part_two . $part_three; 


		$link_part_one = $part_one . $part_two . $part_three;
		$link_part_two = $hash;
		$link_part_three = "&useremail=";
		$link_part_four = $friend_email;
		$link_part_five = "&friendname=";
		$link_part_six = $logged_in_user;
		$link_part_seven = "&groupid=";
		$link_part_eight = $group_id;
		$link_part_nine = "\">Join Shareshare</a></p>";
		
		$link = $link_part_one . $link_part_two . $link_part_three . $link_part_four . $link_part_five . $link_part_six . $link_part_seven . $link_part_eight . $link_part_nine;
		
		//Email Contents 
	
		$to = $friend_email;
		/*
		$subject = $logged_in_user . ' wants to share files on ShareSquare ';
		$message = "hello, your friend wants you to join a group with him on Shareshare!" . $link. " If you follow the link and sign up you will have access to the group!" ;
			
		$headers = 'From: david.vasquez@oregonstate.edu' . "\r\n" .
			'Reply-To: david.vasquez@oregonstate.edu' . "\r\n" .
			'X-Mailer: PHP/' . phpversion();
		$headers = "Content-Type: text/html; charset=ISO-8859-1\r\n";
		mail($to, $subject, $message, $headers);
		
		*/
		//Step 2: Create Pending Request
		$stmt = $conn->prepare("INSERT INTO pending_email(codehash, request_from, request_to, email, group_id) VALUES (?, ?, ?, ?, ?)");
		$stmt->bind_param("ssssi", $hash, $logged_in_user, $link, $friend_email, $group_id);

		
		if ($stmt->execute()) {
			//echo "New record created successfully";
			echo $link_part_one;
		} else {
			echo "Error: " . $sql . "<br>" . mysqli_error($conn);
		}
		$stmt->close();
	}

		
	//METHOD 5: Rename Group
	public function updateGroupName($group_id, $new_group_name, $logged_in_user) {
		global $conn;
		
		$sql = "UPDATE groups SET group_name = ? WHERE group_id='$group_id'";
		$stmt = $conn->prepare($sql);
		$stmt->bind_param('s', $new_group_name);
		if ($stmt->execute()) {
			echo $new_group_name . " " . $group_id;
		}
	}	

	
	//METHOD 6: Leave Group 
	public function leaveGroup($loggedInUser, $group_id) {
		global $conn;
		$user_name = $loggedInUser;
		
		$sql = "DELETE FROM group_users WHERE group_id = '$group_id' and user_name = '$user_name'";

		if (mysqli_query($conn, $sql)) {
			return "Record deleted successfully";
		} else {
			return "Error deleting record: " . mysqli_error($conn);
		}
	}	
	
	//METHOD G13: Delete Group 
	
		
	//METHOD 7: Get Group Parent and Group Type (Group, Category, List)
	public function getGroupParent($loggedInUser, $group_id) {
		global $conn;
		$logged_in_user = $loggedInUser;
		
		$sql = "SELECT * FROM groups WHERE group_id = '$group_id'";
		$result_group = $conn->query($sql) or die(mysqli_error());	
		
		//Create an array with the returned Query of active users 
		while($row_group = mysqli_fetch_array($result_group)) {
			$this->groupParent 			= $row_group['group_parent'];	
			$this->projectParent		= $row_group['project_parent'];	
			//$this->categoryParent	 	= $row_group['is_list'];	
		}
	}
	

	//METHOD 8: Get an Associate Array of Users to Display 
	public function getGroupUserDisplayInformation($group_id, $max_user_display) {
		global $conn;
		//$group_users = array("david"=>"1", "Ben"=>"0", "Joe"=>"1");
		
		//Create a variable of total users that have been added to array
		$total_square_user_count = 0; 
		$group_friend_display = array();
		
		//Part 1: Get all active members (This may not need to limit to active member in this query, you can also use groupStatus to check)
		$sql = "SELECT user_name FROM group_users WHERE group_id = '$group_id' AND active_member = '1'";
		$result_group_friend = $conn->query($sql) or die(mysqli_error());	
		
		//Declare array to hold all users in each square
		$active_group_users = array();
		$active_user_count = 0;
		
		//Create an array with the returned Query of active users 
		while($row_group_friend = mysqli_fetch_array($result_group_friend)) {
			$active_group_users[$active_user_count] = $row_group_friend['user_name'];
			$active_user_count = $active_user_count + 1;
		}
		
		//Remove any potential duplicates
		$active_group_users = array_unique($active_group_users); 
		$active_group_users = array_values($active_group_users);
		$array_length_active = count($active_group_users);
		
		
		//Part 2: Get all pending members
		$sql = "SELECT user_name FROM group_users WHERE group_id = '$group_id' AND active_member = '0'";
		$result_pending = $conn->query($sql) or die(mysqli_error());	
		
		//Declare array to hold all users in each square
		$pending_group_users = array();
		$pending_user_count = 0;
		
		//Create an array with the returned Query of active users 
		while($row_pending  = mysqli_fetch_array($result_pending )) {
			$pending_group_users[$pending_user_count] = $row_pending ['user_name'];
			$pending_user_count = $pending_user_count + 1;
		}
		
		//Remove any potential duplicates
		$pending_group_users = array_unique($pending_group_users); 
		$pending_group_users = array_values($pending_group_users);		
		$array_length_pending = count($pending_group_users);	
		
		//Start adding Users who are active and break if it goes over the $max_user_display
		for($x = 0; $x < $array_length_active; $x++) { 	
			if ($total_square_user_count > $max_user_display) {
				break;   
			}
			
			$group_friend_display[$active_group_users[$x]] = 1;
		}
		
		//If total array users is not over $max_user_display then add pending users 
		for($x = 0; $x < $array_length_pending; $x++) { 						
			$total_square_user_count = $total_square_user_count + 1;		
			if ($total_square_user_count > $max_user_display) {
				break;   
			}
			$group_friend_display[$pending_group_users[$x]] = 0;	
		}	
	
		$this->groupFriendDisplay= $group_friend_display;		
		
	}	
	
	
	//METHOD 9: Get Group Created 
	public function groupCreated($loggedInUser, $group_id) {
		global $conn;
		$user_name = $loggedInUser;
		
		$sql = "SELECT * FROM groups WHERE group_id = '$group_id' ";
		$result = $conn->query($sql) or die(mysqli_error());	
		
		while($row = mysqli_fetch_array($result)) {
			$group_created = $row['created'];
			$dateArray = date_parse($row['created']);
			$monthNum  = $dateArray['month'];
			
			//Check for Version 
			if (version_compare(phpversion(), '5.3.10', '<')) {
				//$dateObj   = DateTime::createFromFormat('!m', $monthNum);
				//$monthName = $dateObj->format('F'); 
				$this->groupCreatedMonth = "April";
				$this->groupCreatedDay = 1;
			} else {
				$dateObj   = DateTime::createFromFormat('!m', $monthNum);
				$monthName = $dateObj->format('F'); 
				$this->groupCreatedMonth = $monthName;
				$this->groupCreatedDay = $dateArray['day'];
			}


		}	
	}
	

	//METHOD 11: Get Group Users 
	public function getGroupFollowStatus($loggedInUser, $group_id) {
		global $conn;
		
		$logged_in_user = $loggedInUser;
		$sql = "SELECT primary_id FROM group_followers WHERE group_id = '$group_id' AND user_name = '$logged_in_user'";
		$result_followers = $conn->query($sql) or die(mysqli_error());	

		//Following
		if(mysqli_num_rows($result_followers) > 0){
			$this->loggedInUserCurrentlyFollowing = 1;
			$this->loggedInUserFollowingText     = "yes";

		//Not Following
		}else{
			$this->loggedInUserCurrentlyFollowing = 0;
			$this->loggedInUserFollowingText     = "no";
		}		
	}	
		
	//METHOD G14: Get Group Last Visit 		
	public function getGroupLastVisit($logged_in_user, $group_id) {
		global $conn;
		
		$result_last_visit = mysqli_query($conn,"SELECT * FROM group_users WHERE 
			group_id = '$group_id' 
			AND user_name = '$logged_in_user' ");		

		while($row_last_visit = mysqli_fetch_array($result_last_visit)) {			
			$group_last_visit = $row_last_visit['group_last_visit'];
		}	
		$this->groupLastVisit = $group_last_visit;
	}	

}