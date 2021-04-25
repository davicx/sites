<?php	
	header('Content-Type: application/json');

	//JSON 1
	$users_array = '{ "users": [
		{ "id": 1, "name": "david vasquez", "user_image": "11.jpg"},
		{"id": 2, "name": "matt ", "user_image": "12.jpg"},
		{"id": 3, "name": "brian ", "user_image": "13.jpg"}
	]}';
	
	echo $users_array;	
	
	//Server Method
	/*
	if ($_SERVER['REQUEST_METHOD'] === 'POST') {
		// …
	}
	*/
?>		