<?php
header('Content-Type: application/json');

//Simple User
$user = new stdClass();
$user->name = "David";
$user->last_name = "Vasquez";
$user->city = "Victoria";

$userJSON = json_encode($user);

//echo $userJSON;

//Simple Users
$user_one = new stdClass();
$user_one->user_id = 1;
$user_one->first_name = "David";
$user_one->last_name = "Vasquez";
$user_one->user_image = "david.jpg";

$user_two = new stdClass();
$user_two->user_id = 2;
$user_two->first_name = "Frodo";
$user_two->last_name = "Baggins";
$user_two->user_image = "frodo.jpg";

$user_three = new stdClass();
$user_three->user_id = 3;
$user_three->first_name = "Bilbo";
$user_three->last_name = "Baggins";
$user_three->user_image = "bilbo.jpg";

$users_array = array("user_one"=>$user_one, "user_two"=>$user_two, "user_three"=>$user_three);
$usersArrayJSON = json_encode($users_array);

echo $usersArrayJSON;


?>


