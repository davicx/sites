<?php

	//CONNECTION
	global $conn; 
	$host		= "oniddb.cws.oregonstate.edu";
	$user_name	= "vasquezd-db";
	$password 	= "gCtLRbXMWWS2SwNg";
	$dbname 	= "vasquezd-db";	
	
	
	//Database Connection 
	$conn = mysqli_connect($host, $user_name, $password , $dbname);

	//Check connection
	if (mysqli_connect_errno()) {
	  echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}
?>