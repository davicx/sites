<?php
//Include Connection 
require_once('connection.inc.php');	

/*
FUNCTIONS A: USER RELATED
	1) Method A1: Get Event Info 


*/

class Events {
	public $eventID = "";
	public $eventName = "";
	public $eventDescription = "";

	
	//Constructor: Instantiate User
	public function __construct($eventID ) {
		$this->eventID = $eventID;
	}

	
	//METHODS A: USER RELATED
	//Method A1: Get Event Info 
	public function getEventInfo($eventID) {
		global $conn;
		$result = mysqli_query($conn,"SELECT * FROM events WHERE event_id = '$eventID' ");

		while($row = mysqli_fetch_array($result)) {		
			$this->eventName 		= $row['event_name']; 
			$this->eventDescription = $row['event_description'];		
		}
	
	} 	
	
}
?>