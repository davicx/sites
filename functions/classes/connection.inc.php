<?php
//Development
//require_once('../../functions/includes/constants.inc.php');
//require_once('../functions/includes/constants.inc.php');
/*
if(!@include("../functions/includes/constants.inc.php")) {
	include('../../functions/includes/constants.inc.php');
} else if (!@include('../../functions/includes/constants.inc.php')) {
	include('../includes/constants.inc.php');
}
*/

//include('../../functions/includes/constants.inc.php');

//LOCAL HOST
/*
$host		= "localhost";
$user_name	= "root";
$password 	= "";
$dbname 	= "shareshare";
*/

//GO DADDY
/*
$host		= "localhost";
$user_name	= "charles-db";
$password 	= "gCtLRbXMWWS2SwNg";
$dbname 	= "shareshare";
*/

//ONID
$host		= "oniddb.cws.oregonstate.edu";
$user_name	= "vasquezd-db";
$password 	= "gCtLRbXMWWS2SwNg";
$dbname 	= "vasquezd-db";

//Live 
global $conn; 

//CONNECTION
//Database Connection 
$conn = mysqli_connect($host, $user_name, $password , $dbname);

//Check connection
if (mysqli_connect_errno()) {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

?>