<?php
//http://people.oregonstate.edu/~vasquezd/sites/template/site_files/include_components/rest/events_api.php?user_name=vasquezd
	//STEP 1: Include Files
	header("Content-Type: application/json; charset=UTF-8");

	$REST_CODE_ROOT = "../../../../";
	//require_once($REST_CODE_ROOT . 'functions/includes/constants.inc.php'); 
	
	$host		= "oniddb.cws.oregonstate.edu";
	$user_name	= "vasquezd-db";
	$password 	= "gCtLRbXMWWS2SwNg";
	$dbname 	= "vasquezd-db";

	//require_once($REST_CODE_ROOT . 'functions/includes/session_timeout.inc.php');
	global $conn; 

	//CONNECTION
	//Database Connection 
	$conn = mysqli_connect($host, $user_name, $password , $dbname);

	//Check connection
	if (mysqli_connect_errno()) {
	  echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}	
	
	//USER INFORMATION 
	if(isset($_GET["user_name"])) {
		$username = ($_GET['user_name']);
	} else {
		$username = "not found";
		$username = "vasquezd";
	}
	
	
	//PART 1: Get All The Groups I follow
	$sql = "SELECT group_name FROM group_followers WHERE user_name = '$username'";
	$result_groups_followed = $conn->query($sql) or die(mysqli_error());	
	$groups_followed_array = array();
	
	//Create an array with the returned Query of active users 
	while($row_groups_followed = mysqli_fetch_array($result_groups_followed)) {
		$group_name = $row_groups_followed['group_name'];
		array_push($groups_followed_array, $group_name);
	}		
	//print_r($groups_followed_array);
	
	//PART 2: Get all the Events being hosted by the Groups I Follow 
	$events_array = array();
	$groups_followed_count = count($groups_followed_array);
	
	for($x = 0; $x < $groups_followed_count; $x++) {
		$sql = "SELECT * FROM events WHERE event_owner = '$groups_followed_array[$x]'";
		$result = $conn->query($sql) or die(mysqli_error());	

		//Create an array with the returned Query of active users 
		while($row = mysqli_fetch_array($result)) {
			$event_id = $row['event_id'];
			$event_name = $row['event_name'];
			$event_description = $row['event_description'];
			$event_category = $row['event_category'];
			$event_location = $row['event_location'];
			$current_event = array("id"=>$event_id, "event_name"=>$event_name, "event_description"=>$event_description,"event_category"=>$event_category, "event_location"=>$event_location);
			array_push($events_array, $current_event);
			$event_count = $event_count + 1;
			
		}		
	}
	
	//print_r($events);
	$event_master = array("title"=>"This is my title", "description"=>"All Events Happening", "movies"=>$events_array);
	$events_json = json_encode($event_master);
	echo $events_json;
	

 
 /*
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
 */
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
?>