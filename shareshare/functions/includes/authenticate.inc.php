<?php
require_once('connection.inc.php');
//$conn = dbConnect('read');

// get the username's details from the database
$sql = 'SELECT salt, password FROM user_login WHERE user_name = ?';
// initialize and prepare statement
$stmt = $conn->stmt_init();
$stmt->prepare($sql);
// bind the input parameter
$stmt->bind_param('s', $username);
// bind the result, using a new variable for the password
$stmt->bind_result($salt, $storedPwd);
$stmt->execute();
$stmt->fetch();
$stmt->close();
// encrypt the submitted password with the salt and compare with stored password


/*Security*/
if (sha1($password . $salt) == $storedPwd) {
	$_SESSION['authenticated'] = 'Jethro Tull';
	// get the time the session started
	$_SESSION['start'] = time();
	
	//Login tracking
	$result_test = mysqli_query($conn,"SELECT * FROM user_login WHERE user_name = '$username'");

	while($row_test = mysqli_fetch_array($result_test)) {	
		$login_total = $row_test['login_total'];
	}

	$login_total = $login_total + 1;

	$sql = "UPDATE user_login SET login_total = ? WHERE user_name = '$username'";
	$stmt = $conn->prepare($sql);
	$stmt->bind_param('i', $login_total);

	if ($stmt->execute()) {
		echo "success logging in";
	} else {
		echo "could not execute query";
	}

  session_regenerate_id();
  header("Location: $redirect");
  exit;
} else {
  // if no match, prepare error message
  $error = 'Invalid username or password';
	
	
}