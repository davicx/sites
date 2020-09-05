<?php 
header('Content-Type: application/json');

$app->get('/api/genres', function () {
    
	//Action on Going to URL 
	//$name = $args['name'];
    //$response->getBody()->write("Hello, $name");
	$users_array = '{ "users": [
		{ "id": 1, "name": "david vasquez", "user_image": "11.jpg"},
		{"id": 2, "name": "matt ", "user_image": "12.jpg"},
		{"id": 3, "name": "brian ", "user_image": "13.jpg"}
	]}';
	
	//echo json_encode($users_array);	
	
   //return $response;
	
});

