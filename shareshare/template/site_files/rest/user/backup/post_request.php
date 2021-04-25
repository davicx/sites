<?php
//Include Page Header 
header('Content-Type: application/json');
require_once('../../../../functions/rest_header.php');
require_once('../../../../functions/classes/User.php');

//http://people.oregonstate.edu/~vasquezd/sites/template/site_files/rest/user/post_request.php?user_name=vasquezd&user_biography=hiya

//JSON POST REQUEST
$json = file_get_contents('php://input');
$post_object = json_decode($json);

$responsePost->returned_from_server = "Success";
$responsePost->user_name = $post_object->user_name;
$responsePost->user_biography = $post_object->user_biography;
$responsePost->full_name = $post_object->full_name;

$responsePostJSON = json_encode($responsePost);		

echo $responsePostJSON;	



//USER POST REQUEST 
/*
if (isset($_POST["user_name"]) && (!empty($_POST["user_name"]))) { 	
	if(isset($_POST['user_name'])){ $user_name = $_POST['user_name']; } else { $user_name = "error"; }
	if(isset($_POST['user_biography'])){ $user_biography = $_POST['user_biography']; } else { $user_biography = "null"; }

	$loggedInUser->returned_from_server = "Success";
	$loggedInUser->user_name = $user_name . "NEW";
	$loggedInUser->user_biography = $user_biography . "NEW";

	$loggedInUserJSON = json_encode($loggedInUser);		
	
	echo $loggedInUserJSON;	

//REQUEST: Didn't work
} else {
	if(isset($_POST['user_name'])){ $user_name = $_POST['user_name']; } else { $user_name = "error"; }
	if(isset($_POST['user_biography'])){ $user_biography = $_POST['user_biography']; } else { $user_biography = "null"; }
	
	$loggedInUser->returned_from_server = "Success Sorta Else Statement";
	$loggedInUser->user_name = $user_name;
	$loggedInUser->user_biography = $user_biography;

	$loggedInUserJSON = json_encode($loggedInUser);		
	
	echo $loggedInUserJSON;	
	
}
*/
/*

//USER GET REQUEST 
if (isset($_GET["user_name"]) && (!empty($_GET["user_name"]))) { 	
	if(isset($_GET['user_name'])){ $user_name = $_GET['user_name']; } else { $user_name = "error"; }
	if(isset($_GET['user_biography'])){ $user_biography = $_GET['user_biography']; } else { $user_biography = "null"; }

	$loggedInUser->returned_from_server = "Success";
	$loggedInUser->user_name = $user_name;
	$loggedInUser->user_biography = $user_biography;

	$loggedInUserJSON = json_encode($loggedInUser);		
	
	echo $loggedInUserJSON;	

//REQUEST: Didn't work
} else {
	$loggedInUser->returned_from_server = "Success Sorta Else Statement";
	$loggedInUser->user_name = $user_name;
	$loggedInUser->user_biography = $user_biography;

	$loggedInUserJSON = json_encode($loggedInUser);		
	
	echo $loggedInUserJSON;	
	
}
*/




























?>