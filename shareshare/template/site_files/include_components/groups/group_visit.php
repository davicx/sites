<?php 
if (!($stmt = $conn->prepare("UPDATE group_users SET group_last_visit=NOW() WHERE group_id = ? AND user_name=?"))) {
	echo "Prepare failed: (" . $conn->errno . ") " . $conn->error;
}
		
if (!$stmt->bind_param('is', $group_id, $logged_in_user)) {
	echo "Binding parameters failed: (" . $stmt->errno . ") " . $stmt->error;
}
if (!$stmt->execute()) {
	echo "Execute failed: (" . $stmt->errno . ") " . $stmt->error;
}	

?>