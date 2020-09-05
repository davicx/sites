<?php
require_once('connection.inc.php');

		$sql = "UPDATE user_login SET last_login = NOW() WHERE user_name= '$username'";

		if ($conn->query($sql) === TRUE) {
			//echo "Record updated successfully";
		} else {
			//echo "Error updating record: " . $conn->error;
		}	
?>