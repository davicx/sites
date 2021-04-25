<?php
//require_once('classes/User.php');
require_once('classes/Activity.php');
require_once('functions.php');
require_once('includes/connection.inc.php');
require_once('includes/constants.inc.php');

/*
FUNCTIONS A: ACTIVITY RELATED 

FUNCTIONS B: USER ACTION RELATED 
	1) Function B1: Update Notfication Icon to Clicked (by ID) 
	2) Function B2: Update Group Header Icon to Clicked (by ID) 
*/

//FUNCTIONS A: ACTIVITY RELATED 

//FUNCTIONS B: USER ACTION RELATED  
//Function B1: Update Notfication Icon to Clicked (by ID) 
if (isset($_POST["update_icon_click_id"]) && (!empty($_POST["logged_in_user"]))) {	
	global $conn;
	$logged_in_user     = $_POST["logged_in_user"];
	$icon_id   			= $_POST["update_icon_click_id"];
	
	$Current_Activity = new Activity($logged_in_user);
	$Current_Activity->updateIconClick($logged_in_user, $icon_id);	
	$Current_Activity->getTotalHeaderActivity($logged_in_user);		
	$total_header_new_activity = $Current_Activity->totalHeaderActivity;	
	echo $total_header_new_activity;
}

//Function B2: Update Group Header Icon to Clicked (by ID) 
if (isset($_POST["update_group_icon_click_id"]) && (!empty($_POST["logged_in_user"]))) {	
	global $conn;
	$logged_in_user     = $_POST["logged_in_user"];
	$group_icon_id   	= $_POST["update_group_icon_click_id"];

	$Current_Activity = new Activity($logged_in_user);
	echo $Current_Activity->updateGroupHeaderIconClicked($logged_in_user, $group_icon_id);	
	
}































	
?>