<?php 
//$app = new \Slim\App;
//

//CONNECTION
//Database Connection 

$host		= "localhost";
$user_name	= "root";
$password 	= "";
$dbname 	= "shareshare";

$conn = mysqli_connect($host, $user_name, $password , $dbname);

//Check connection
if (mysqli_connect_errno()) {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

//
//$app->get('/api/books', function () {
$app->get('/api/books/{id}', function ($request) {
	global $conn; 

    $userID = $request->getAttribute('id');
	
	$result = mysqli_query($conn,"SELECT * FROM user_profile WHERE user_id = '$userID' ");

	while($row = mysqli_fetch_array($result)) {		
		$this->userID 		= $row['user_id']; 
		$user_name          = $row['user_name']; 
		$first_name 		= $row['first_name'];	
		$last_name 			= $row['last_name'];	
		echo $first_name; 
	}
});

