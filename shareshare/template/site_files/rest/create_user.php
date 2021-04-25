<?php
//Include Page Header 
//require_once('../../../../functions/page_header.php');
header('Content-Type: application/json');

//http://people.oregonstate.edu/~vasquezd/sites/template/site_files/rest/create_user.php?user_name=vasquezd

if (isset($_GET["user_name"]) && (!empty($_GET["user_name"]))) { 
	
	$user_name = $_GET["user_name"];
	$user_email = $_GET["user_email"];
	$user_password = $_GET["user_password"];
		
	$user->user_name = $user_name;
	$user->user_email = $user_email;
	$user->user_password = $user_password;

	$userObject = json_encode($user);

	echo $userObject;
		
	/*
	$user_name = $_GET["user_name"];
	$user->name = $user_name;
	$user->last_name = "Vasquez";
	$user->city = "Victoria";
	$userObject = json_encode($user);

	echo $userObject;
	*/
} else {
	$user->name = "Didnt work";
	$user->last_name = "Didnt";
	$user->city = "work";
	$userObject = json_encode($user);

	echo $userObject;
	
}


/*
$user->name = "David";
$user->last_name = "Vasquez";
$user->city = "Victoria";

$userObject = json_encode($user);

echo $userObject;
*/
//JSON 1
/*
$users_array = '{ "users": [
	{ "id": 1, "first_name": "david", "last_name": "vasquez", "user_image": "david.jpg"},
	{"id": 2, "first_name": "frodo", "last_name": "baggins.jpg", "user_image": "frodo.jpg"},
	{"id": 3, "first_name": "bilbo ", "last_name": "baggins.jpg", "user_image": "bilbo.jpg"}
]}';


$user_one->user_id = 1;
$user_one->first_name = "David";
$user_one->last_name = "Vasquez";
$user_one->user_image = "New York";

$user_two->user_id = 2;
$user_two->first_name = "Frodo";
$user_two->last_name = "Baggins";
$user_two->user_image = "frodo.jpg";

$user_three->user_id = 3;
$user_three->first_name = "Bilbo";
$user_three->last_name = "Baggins";
$user_three->user_image = "bilbo.jpg";

$users_array = array("user_one"=>$user_one, "user_two"=>$user_two, "user_three"=>$user_three);
$users_array = json_encode($users_array);

echo $users_array;
*/

//JSON 2

/*
$users_array = '{ "users": [ {
	["user_1": { "id": 1, "first_name": "david", "last_name": "vasquez", "user_image": "david.jpg"}],
	["user_1": {"id": 2, "first_name": "frodo", "last_name": "baggins.jpg", "user_image": "frodo.jpg"}],
["user_1": {"id": 3, "first_name": "bilbo ", "last_name": "baggins.jpg", "user_image": "bilbo.jpg"}] }
]}';
*/

/*
//$users_array = json_encode($users_array);
echo $users_array;
*/

//JSON 3
/*
$users_array = '{ "users": [
	{ "id": 1, "first_name": "david", "last_name": "vasquez", "user_image": "david.jpg"},
	{"id": 2, "first_name": "frodo", "last_name": "baggins.jpg", "user_image": "frodo.jpg"},
	{"id": 3, "first_name": "bilbo ", "last_name": "baggins.jpg", "user_image": "bilbo.jpg"}
]}';
*/

/*
//http://people.oregonstate.edu/~vasquezd/sites/template/site_files/rest_api.php?user_id=2
//http://people.oregonstate.edu/~vasquezd/sites/template/site_files/rest/user.php

\\onid-fs\Vasquezd\public_html\sites\template\site_files\rest

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
*/





//print_r($users_array);
//echo "<br />";
//print_r($users_array_works);


?>