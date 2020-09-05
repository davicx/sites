<?php
//http://people.oregonstate.edu/~vasquezd/sites/template/site_files/rest/current_user.php

require_once('database_conn.php');
header('Content-Type: application/json');

$user_id = 1;

$result = mysqli_query($conn,"SELECT * FROM user_profile WHERE user_id = '$user_id'");
$user_id_array = array();
$users = array();

while($row = mysqli_fetch_array($result)) {		
	$user_id = $row['user_id'];
	$user_name = $row['user_name'];
	$image_name = $row['image_name'];
	$first_name = $row['first_name'];
	$last_name = $row['last_name'];
	
	$current_user->user_id = $user_id;
	$current_user->user_name = $user_name;
	$current_user->image_name = $image_name;
	$current_user->first_name = $first_name;
	$current_user->last_name = $last_name;	
}

$current_user_json = json_encode($current_user);
echo $current_user_json;


?>