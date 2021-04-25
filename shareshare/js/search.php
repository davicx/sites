<?php
require_once('functions.php');
require_once('includes/connection.inc.php');
require_once('includes/constants.inc.php');
require_once('classes/User.php');
require_once('classes/Notifications.php');
/*
FUNCTIONS A: AUTOCOMPLETE RELATED
	1) Function A1: Autocomplete 


*/


//Function A1: Search and Autocomplete for User 
if (isset($_POST["logged_in_user"]) && (!empty($_POST["logged_in_user"]))) {
	$search_input 	= $_POST["search_input"];	
	$logged_in_user = $_POST["logged_in_user"];	
	
	echo "Output " . $search_input;
	/*
	$master_autocomplete_array = array();

	//Step 1: Select all Fields that match the given input string
	$sql = "SELECT * FROM user_profile WHERE user_name LIKE '$search_input%' 
		OR first_name LIKE '$search_input%' OR last_name LIKE  '$search_input%'
		ORDER BY user_name ASC LIMIT 0, 10";

	$result = mysqli_query($conn, $sql);
	
	//Step 2: Loop through and add each part to a sub array then add this to the master array holding all results
	while($row = mysqli_fetch_array($result)) {	
		$user_id = $row['user_id'];	
		$user_name = $row['user_name'];
		$user_image = $row['image_name'];		
		$user_page_link = "friend_profile.php?friend_id=" . $user_id;						
		
		//Check User Image
		
		if(file_exists("../user_uploads/user_image/" . $auto_complete_user_image_temp)) {
			$auto_complete_user_image = $auto_complete_user_image_temp;
		} else {
			$auto_complete_user_image = "default_user_image.png"; 	
		}
		
		//Check if User is Active 
		$user_active_test = checkUserActive($user_id);

		$current_array = array(
				"user_id" => $user_id,
				"user_name" => $user_name,
				"user_image" => $user_image,
				"user_page_link" => $user_page_link
		);
		
		//Push to Master Array if this is an Active User (1)
		if ($user_active_test == 1) {
			array_push($master_autocomplete_array, $current_array);
		}
	}
	*/
	//echo json_encode($master_autocomplete_array);	
} else {
	echo "else";
}


?>