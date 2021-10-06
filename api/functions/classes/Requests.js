const db = require('./../conn');

class Requests {
    constructor(requestID) {
        this.requestID = requestID;
    }
    
    //METHODS A: REQUEST RELATED
    //Method A1: Create a Request 
    
    //Method A2: Create a Group Request 
    static async newGroupRequest(newRequest)  {
        const connection = db.getConnection(); 
        const groupUsers = newRequest.sentTo;
        const requestFrom = newRequest.sentBy;
        console.log("REQUEST");

        //Create request adn Loop over members
        for(let i = 0; i < groupUsers.length; i++) {
			let requestTo =  groupUsers[i];
            const queryString = "SELECT COUNT(*) AS requestCount FROM pending_requests WHERE request_type = ? AND sent_by = ? AND sent_to = ?"
           
            connection.query(queryString, [newRequest.requestType, requestFrom, requestTo], (err, rows) => {
                if (!err) {
                    console.log(requestTo + " " + rows[0].requestCount);
                } else {
                    console.log("Failed to Select Requests: " + err);
                }
              
            })
                     /*

			AND request_is_pending = '1' 
			AND group_id = '$group_id' 
			AND friend_id = '0'");	
            //            
            $result_request = mysqli_query($conn, "SELECT * FROM pending_requests WHERE request_type = 'new_group' 
			AND sent_by = '$logged_in_user' 
			AND sent_to = '$friend_invited_current' 
			AND request_is_pending = '1' 
			AND group_id = '$group_id' 
			AND friend_id = '0'");	
            */
            
            /*
            	const queryString = "SELECT first_name, last_name FROM user_profile WHERE user_name = ?";

	connection.query(queryString, [userName], (err, rows) => {
		if (!err) {
			const firstName = rows[0].first_name
			const lastName = rows[0].last_name

			const currentUser = {
				userName: userName,
				firstName: firstName,
				lastName: lastName
			}
			res.json(currentUser);
		} else {
			console.log("Failed to Select User: " + err);
		}
	  
	})
     */
   
            /*
            //WORKS
            if(requestTo != requestFrom) {
                console.log("request to " + requestTo);

            } else {
                console.log("No need request " + requestTo);
            }
            */
        }
        /*	const newRequest = {
		requestType: "new_group",
		requestTypeText: "invited you to join a group",
		sentBy: req.body.currentUser,
		sentTo: req.body.groupUsers,
		groupID: groupOutcome.groupID
	    }
	
        */
        //If they are found then don't add 
        
        //request_type, request_type_text, request_is_pending, sent_by, sent_to, group_id, updated, created
    
    }
}

module.exports = Requests;

/*
		global $conn;
	
		$request_type 		= "new_group";
		$request_type_text  = "New Group Invite";
		$request_is_pending = 1;
	
		//STEP 1: Make sure Notification is not a duplicate
		$result_request = mysqli_query($conn, "SELECT * FROM pending_requests WHERE request_type = 'new_group' 
			AND sent_by = '$logged_in_user' 
			AND sent_to = '$friend_invited_current' 
			AND request_is_pending = '1' 
			AND group_id = '$group_id' 
			AND friend_id = '0'");	
		
		$pending_request_found_count = mysqli_num_rows($result_request);

		if($pending_request_found_count < 1) {
			
			//STEP 2: Only Create a Request for Users who were just invited 
			if (strcasecmp($friend_invited_current, $logged_in_user) !=0) {
				$sql = 'INSERT INTO pending_requests (master_site, request_type, request_type_text, request_is_pending, sent_by, sent_to, group_id, updated, created) 
					VALUES (?,?,?,?,?,?,?, NOW(), NOW())';			  
				$stmt = $conn->stmt_init();
				$stmt = $conn->prepare($sql);
				// bind parameters and insert the details into the database
				$stmt->bind_param('sssissi', $master_site, $request_type, $request_type_text, $request_is_pending, $logged_in_user, $friend_invited_current, $group_id);
				//$stmt->execute();	
				if ($stmt->execute()) {
					echo "New record created successfully";
				} else {
					echo "Error: <br>" . mysqli_error($conn);
				}	
			}
		}

	}	

//Step 2: Add Pending Requests- Insert into pending users 
for($x = 0; $x < $total_new_friends; $x++) {
    $friend_invited_current = $selected_friends[$x];
    $sql = 'INSERT INTO pending_requests (request_type, request_type_text, request_is_pending, sent_by, sent_to, group_id, updated, created) 
        VALUES (?,?,?,?,?,?, NOW(), NOW())';			  
    $stmt = $conn->stmt_init();
    $stmt = $conn->prepare($sql);
    // bind parameters and insert the details into the database
    $stmt->bind_param('ssissi', $request_type, $request_type_text, $request_is_pending, $logged_in_user, $friend_invited_current, $group_id);
    $stmt->execute();				
}
*/


