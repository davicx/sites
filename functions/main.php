<?php
require_once('functions.php');
require_once('includes/connection.inc.php');
require_once('includes/constants.inc.php');
require_once('classes/User.php');
require_once('classes/Notifications.php');
/*
FUNCTIONS A: AUTOCOMPLETE RELATED
	1) Function A1: Autocomplete 

FUNCTIONS B: All Global Functions
	1) Function B1: Validate Email	
*/


//Function A1: Autocomplete 
if (isset($_POST["auto_complete_input_u_g"]) && (!empty($_POST["auto_complete_input_u_g"]))) {
	$auto_complete_input_string = $_POST["auto_complete_input_u_g"];	
	$logged_in_user 		    = $_POST["logged_in_user"];	
	$auto_complete_output_array = array();
	$master_autocomplete_array = array();
	$master_autocomplete_array_count = 0;

	//PART 1: Request all Users
	//Step 1: Select all Fields that match the given input string
	$sql = "SELECT * FROM user_profile WHERE user_name LIKE '$auto_complete_input_string%' 
		OR first_name LIKE '$auto_complete_input_string%' OR last_name LIKE  '$auto_complete_input_string%'
		ORDER BY user_name ASC LIMIT 0, 10";

	$result = mysqli_query($conn, $sql);
	$user_array_count = 1;
	
	//Step 2: Loop through and add each part to a sub array then add this to the master array holding all results
	while($row = mysqli_fetch_array($result)) {	
		$auto_complete_type = "user";
		$user_id = $row['user_id'];
		$auto_complete_page_link = "user_profile.php?friend_id=" . $user_id;						
		$auto_complete_user_image_temp = $row['image_name'];	
		$auto_complete_user_name = $row['user_name'];	
		
		//Check User Image
		if(file_exists("../user_uploads/user_image/" . $auto_complete_user_image_temp)) {
			$auto_complete_user_image = $auto_complete_user_image_temp;
		} else {
			$auto_complete_user_image = "default_user_image.png"; 	
		}
		
		//Check if User is Active 
		$user_active_test = checkUserActive($user_id);

		$current_array = array(
				"type" => $auto_complete_type,
				"page_link" => $auto_complete_page_link,
				"user_image" => $auto_complete_user_image,
				"user_name" => $auto_complete_user_name
		);
		
		//Push to Master Array if this is an Active User (1)
		if ($user_active_test == 1) {
			array_push($master_autocomplete_array, $current_array);
			$user_array_count = $user_array_count + 1;
			$master_autocomplete_array_count = $master_autocomplete_array_count + 1;			
		}
	}
	
	//PART 2: Request All Groups 
	//Step 1: Select all Fields that match the given input string					
	$sql = "SELECT groups.group_id, groups.group_name, group_users.active_member, group_users.user_name, group_users.group_id
		FROM groups INNER JOIN group_users
		ON groups.group_id = group_users.group_id
		WHERE groups.group_name LIKE '%$auto_complete_input_string%' 
		AND group_users.active_member = '1'
		AND group_users.user_name = '$logged_in_user' LIMIT 0, 10";

	$result_groups = mysqli_query($conn, $sql);
	$group_array_count = 1;
	
	//Step 2: Loop through and add each part to a sub array then add this to the master array holding all results
	while($row_groups = mysqli_fetch_array($result_groups)) {	
		$auto_complete_type = "group";
		$group_id = $row_groups['group_id'];
		$auto_complete_page_link = "groups_individual.php?group_id=" . base64_encode($group_id);						
		$auto_complete_user_image = "group_default_image.jpg";						
		$auto_complete_user_name = $row_groups['group_name'];	
				
		$current_array = array(
				"type" => $auto_complete_type,
				"page_link" => $auto_complete_page_link,
				"user_image" => $auto_complete_user_image,
				"user_name" => $auto_complete_user_name
		);
		array_push($master_autocomplete_array, $current_array);

		$group_array_count = $group_array_count + 1;
		$master_autocomplete_array_count = $master_autocomplete_array_count + 1;
		//echo $auto_complete_type . ":  " . $auto_complete_page_link . "  " . $auto_complete_user_image . "  " . $auto_complete_user_name;	 
		//echo $master_autocomplete_array_count . "<br />";
	}	
	
	//Return output (Array of Associative Arrays)
	echo json_encode($master_autocomplete_array);		
	
	
}
	
	
	
	/*
	$auto_complete_output_array['user_id_one'] = 0;
	$auto_complete_output_array['user_id_two'] = 5;
	$auto_complete_output_array['user_three'] = 7;
	$auto_complete_output_array['user_four'] = 7;
	$auto_complete_output_array['user_five'] = 7;
	$auto_complete_output_array['group_id_one'] = 3;	
	$auto_complete_output_array['group_id_two'] = 1;	
	$auto_complete_output_array['group_id_three'] = 1;	
	*/
	
	
	/*
	//Part 1: Request all Users
	$sql = "SELECT * FROM user_profile WHERE user_name LIKE '$auto_complete_input_string%' 
		OR first_name LIKE '$auto_complete_input_string%' OR last_name LIKE  '$auto_complete_input_string%'
		ORDER BY user_name ASC LIMIT 0, 5";

	$result = mysqli_query($conn, $sql);
	$user_array_count = 1;
	
	while($row = mysqli_fetch_array($result)) {	
		$array_row_position = "user_name_" . $user_array_count;
		$temp_user_name = $row['user_name'];
		$auto_complete_output_array[$array_row_position] = $temp_user_name;
		$user_array_count = $user_array_count + 1;
	}
	
	//Part 2: Request All Groups 
	$sql = "SELECT groups.group_id, groups.group_name, group_users.active_member, group_users.user_name, group_users.group_id
		FROM groups INNER JOIN group_users
		ON groups.group_id = group_users.group_id
		WHERE groups.group_name LIKE '%$auto_complete_input_string%' 
		AND group_users.active_member = '1'
		AND group_users.user_name = '$logged_in_user' LIMIT 0, 5";

	$result_groups = mysqli_query($conn, $sql);
	$group_array_count = 1;

	while($row_groups = mysqli_fetch_array($result_groups)) {	
		$array_row_position_group = "group_id_" . $group_array_count;
		$temp_group_name = $row_groups['group_id'];
		$auto_complete_output_array[$array_row_position_group] = $temp_group_name;
		$group_array_count = $group_array_count + 1;
	}	


	$arr = array(
		array(
			"type" => "user",
			"page_link" => "user_profile",
			"user_image" => "david.jpg",
			"user_name" => "david"
		),
		array(
			"type" => "user",
			"page_link" => "user_profile",
			"user_image" => "david.jpg",
			"user_name" => "david"
		),
		array(
			"type" => "group",
			"page_link" => "group_profile",
			"user_image" => "group.jpg",
			"user_name" => "david"
		)
	);
	*/
	/*
	
						
					$master_autocomplete_array = array();
					$master_autocomplete_array_count = 0;
			
				
					//Part 1: Request all Users
					$sql = "SELECT * FROM user_profile WHERE user_name LIKE '$auto_complete_input_string%' 
						OR first_name LIKE '$auto_complete_input_string%' OR last_name LIKE  '$auto_complete_input_string%'
						ORDER BY user_name ASC LIMIT 0, 25";

					$result = mysqli_query($conn, $sql);
					$user_array_count = 1;
					
					while($row = mysqli_fetch_array($result)) {	
						$auto_complete_type = "user";
						$user_id = $row['user_id'];
						$auto_complete_page_link = "user_profile.php?friend_id=" . $user_id;						
						$auto_complete_user_image = $row['image_name'];						
						$auto_complete_user_name = $row['user_name'];	
						
						$current_array = array(
								"type" => $auto_complete_type,
								"page_link" => $auto_complete_page_link,
								"user_image" => $auto_complete_user_image,
								"user_name" => $auto_complete_user_name
						);
						//Instantiate Class
						//Create Method Is Active 
						//print_r($current_array);
						array_push($master_autocomplete_array, $current_array);
						//echo "<hr />";
						$array_row_position = "user_name_" . $user_array_count;
						
						$temp_user_name = $row['user_name'];
						$auto_complete_output_array[$array_row_position] = $temp_user_name;
						$user_array_count = $user_array_count + 1;
						$master_autocomplete_array_count = $master_autocomplete_array_count + 1;
						//echo $auto_complete_type . ": " . $auto_complete_page_link . " " . $auto_complete_user_image . " " . $auto_complete_user_name;
						//echo "<br />";		
						//echo $master_autocomplete_array_count . "<br />";
					}
					
					//Part 2: Request All Groups 
					$sql = "SELECT groups.group_id, groups.group_name, group_users.active_member, group_users.user_name, group_users.group_id
						FROM groups INNER JOIN group_users
						ON groups.group_id = group_users.group_id
						WHERE groups.group_name LIKE '%$auto_complete_input_string%' 
						AND group_users.active_member = '1'
						AND group_users.user_name = '$logged_in_user' LIMIT 0, 25";

					$result_groups = mysqli_query($conn, $sql);
					$group_array_count = 1;

					while($row_groups = mysqli_fetch_array($result_groups)) {	
						$auto_complete_type = "group";
						$group_id = $row_groups['group_id'];
						$auto_complete_page_link = "groups_individual.php?group_id=" . base64_encode($group_id);						
						$auto_complete_user_image = "auto_complete_group_default_image.jpg";						
						$auto_complete_user_name = $row_groups['group_name'];	
								
						$current_array = array(
								"type" => $auto_complete_type,
								"page_link" => $auto_complete_page_link,
								"user_image" => $auto_complete_user_image,
								"user_name" => $auto_complete_user_name
						);
						//Instantiate Class
						//Create Method Is Active 
						//print_r($current_array);
						array_push($master_autocomplete_array, $current_array);
						//echo "<hr />";		

						$array_row_position_group = "group_id_" . $group_array_count;
						$temp_group_name = $row_groups['group_id'];
						$auto_complete_output_array[$array_row_position_group] = $temp_group_name;
						$group_array_count = $group_array_count + 1;
						$master_autocomplete_array_count = $master_autocomplete_array_count + 1;
						//echo $auto_complete_type . ":  " . $auto_complete_page_link . "  " . $auto_complete_user_image . "  " . $auto_complete_user_name;	 
						//echo $master_autocomplete_array_count . "<br />";
						
					}	
	*/


}

?>