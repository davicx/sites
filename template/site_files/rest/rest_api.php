<?php
//Include Page Header 
require_once('../../functions/page_header.php');
header('Content-Type: application/json');

//http://people.oregonstate.edu/~vasquezd/sites/template/site_files/rest_api.php?user_id=2
if(isset($_GET["user_id"])) {
	$user_id = ($_GET['user_id']);

} else {
	$user_id = 1;
}

$result = mysqli_query($conn,"SELECT * FROM user_profile WHERE user_id = '$user_id'");
$user_id_array = array();
$users = array();

while($row = mysqli_fetch_array($result)) {		
	$temp_user_array = array();
	$user_id = $row['user_id'];
	$user_name = $row['user_name'];
	$image_name = $row['image_name'];
	
	$temp_user_array['id'] = $user_id; 
	$temp_user_array['name'] = $user_name;
	$temp_user_array['user_image'] = $image_name;
	
	array_push($users, $temp_user_array);
	array_push($user_id_array, $user_id);
}


$users_array['users'] = $users;
$users_array = json_encode($users_array);
echo $users_array;




/*
	//This one works but the above doesn't I Think it is because the data is slightly differnt this one has a users holder 
	//JSON 1
	$users_array_works = '{ "users": [
		{ "id": 1, "name": "david vasquez", "user_image": "10.jpg"},
		{"id": 2, "name": "matt ", "user_image": "matt.jpg"},
		{"id": 3, "name": "brian ", "user_image": "brian.jpg"}
	]}';
*/	
//echo $users_array;	

//print_r($users_array);
//echo "<br />";
//print_r($users_array_works);


?>