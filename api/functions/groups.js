const db = require('./conn');
const Group = require('./classes/Group')

/*
FUNCTIONS A: All Functions Related to Groups
	1) Function A1: Create a New Group
	2) Function A2: Invite User to a Group 
	3) Function A3: Leave a Group 


FUNCTIONS B: All Functions Related to Groups
	1) Function A1: Create a New Group
	1) Function A2: Invite User to a Group 

*/

//Function A1: Create a New Group
async function newGroup(req, res) {
	var groupOutcome = {}
	var groupUsersOutcome = {}

	//STEP 1: Create the Group and Add the New Users
	try {
		groupOutcome = await Group.createGroup(req);
		groupUsersOutcome = await Group.addGroupUsers(groupOutcome.groupID, req.body.groupUsers, req.body.currentUser);


	} catch(err) {
		console.log("were in the catch now!!");
	}
	
     
	if(groupOutcome.outcome == 1) {
		console.log("worked!")
		res.json(groupOutcome);
	} else {
		console.log("no worked!")
		res.json(groupOutcome)
	}
	
	/*

	var postOutcome = {};
	
	//STEP 1: Create Post
	postOutcome = await Post.createPostText(req);
	console.log("YOUR NEW POST ID! " + postOutcome.postID)

	//STEP 2: Create Notification
	if(postOutcome.outcome == 1) {
		Notification.createGroupNotification(req);
		Requests.createGroupRequest(req);
		res.json(postOutcome);
	} else {
		console.log(postOutcome);
		res.sendStatus(500);
		return 
	}
	 */

	/*
	async function fetchAndUpdatePosts() {
	const posts = await fetchPosts().catch(() => {
		console.log('error in fetching posts');
	});
	
	if (posts) {
		doSomethingWithPosts(posts);
	}
	} 
	*/


	//WORKS NEED TO MOVE 
	/*



	//Part 2: Select group ID and use this to populate the rest of the fields		


	//Part 3: Create a Class and Add all Users to this Group

	//STEP 2: Create Requests 

		
	//STEP 3: Create Notifications 
	*/

}

/*
	$logged_in_user 		= $_POST["logged_in_user"];	
	$master_site 			= $_POST["master_site"];	
	$group_name 			= $_POST["group_name"]; 
	$notification_message 	= $_POST["notification_message"];	
	$notification_link 		= $_POST["notification_link"];	
	$notification_type 		= $_POST["notification_type"];	
	$notification_from 		= $_POST["notification_from"];	
	$selected_friends 		= $_POST["selected_friends"];	
	$selected_friends_count = count($selected_friends);	
	$group_key				= uniqid(microtime(),1);
	$request_type			= "new_group";

	//STEP 1: Create New Group 
	//Part 1: Create new group and insert into groups table 
	$insert = $conn->prepare("INSERT INTO groups (group_type, created_by, group_key, group_name) VALUES (?,?,?,?) ");
	$insert->bind_param('ssss', $request_type, $logged_in_user, $group_key, $group_name);
	
	//Part 2: Select group ID and use this to populate the rest of the fields		
	if ($insert->execute()) {
		$query = "SELECT group_id FROM groups WHERE group_key ='$group_key' AND created_by = '$logged_in_user' LIMIT 1";
		$result = mysqli_query($conn, $query);
		$row = mysqli_fetch_assoc($result);
		$new_group_id = $row['group_id'];
		$group_id = $row['group_id'];
	}

	//Part 3: Create a Class and Add all Users to this Group
	$Current_Group = new Group($new_group_id);
	$Current_Group->createGroupExistingUsers($request_type, $logged_in_user, $selected_friends, $new_group_id, $group_key);	

	//STEP 2: Create Requests 
	for($x = 0; $x < $selected_friends_count; $x++) {
		$friend_invited_current = $selected_friends[$x];
		$Current_Request = new Requests($logged_in_user);	
		echo $Current_Request->createGroupPendingRequest($master_site, $group_id, $logged_in_user, $friend_invited_current);			
	}
		
	//STEP 3: Create Notifications 
	$Current_Notification = new Notifications($logged_in_user);
	for($x = 0; $x < $selected_friends_count; $x++) {
		$notification_to = $selected_friends[$x];
		echo $Current_Notification->createGroupInviteNotification($master_site, $notification_from, $notification_to, $notification_message, $notification_link, $notification_type, $group_id);
	}	

	*/


//Function A2: Invite User to a Group 
function addGroupUser(req, res) {

}

//Function A3: Leave a Group 
function leaveGroup(req, res) {

}


//Function B1: Get All Groups 
function getAllGroups(req, res) {

}


//Function B2: Get Single Group by ID 
function getGroup(req, res) {

}


//Function B3: Get Group Users
function getGroupUsers(groupID) {
	console.log("get group users for " + groupID);
	const connection = db.getConnection(); 
	const queryString = "SELECT user_name FROM group_users WHERE group_id = ? AND active_member = '1'";
	
	var groupUsersSet = new Set();
	var groupUsersResponse = {
		outcome: 0,
		groupUsers: [],
		errors: [],
	}
	
	//GET GROUP USERS
	return new Promise(async function(resolve, reject) {
		try {
			connection.query(queryString, [groupID], (err, rows) => {
				if (!err) {
					rows.map((row) => {
						groupUsersSet.add(row.user_name) 
					}); 
					groupUsersResponse.outcome = 1;
					groupUsersResponse.groupUsers = Array.from(groupUsersSet);    
				} else {
					console.log("error getting group users")    
					groupUsersResponse.outcome = "no worky"
					groupUsersResponse.errors.push(err);
				} 
				resolve(groupUsersResponse);
			}) 
			
		} catch(err) {
			groupUsersResponse.outcome = "rejected";
			console.log("REJECTED ");
			reject(groupUsersResponse);
		} 
	});

}

module.exports = { newGroup, getGroupUsers };




































//APPENDIX

/*
	//PROMISE RETURN
	return new Promise((resolve, reject) => {
		
		//Make Query 
		connection.query(queryString,[groupID], (err, rows) => {

			if (!err) {
				console.log("No error")
				rows.map((row) => {
					groupUsersSet.add(row.user_name) 
				});
				groupUsersResponse.groupUsers = Array.from(groupUsersSet);;

			} else {
				//console.log("Failed to Select Users from this Group " + err)
				groupUsersResponse.outcome = 0;
				groupUsersResponse.errors.push("Failed to Select Users from this Group " + err);
			}	

			//Resolve Promise
			if(groupUsersResponse.outcome != 0) {
				resolve(groupUsersResponse); 
			} else {
				reject(groupUsersResponse);
			}

		})  

	})  
*/
	





/*
function simpleGetGroupUsers(groupID) {
	console.log("get group users for " + groupID);
	var groupUsersResponse = {
		outcome: 1,
		groupUsers: ["davey"],
		errors: [],
	}

	return new Promise((resolve, reject) => {
		if(groupID == 77) {
			resolve(groupUsersResponse); 
		} else {
			groupUsersResponse.outcome = 0;
			reject(groupUsersResponse);
		}
	})  
}
function simpleGET() { 
	//WORKS
	const connection = db.getConnection(); 
	const queryString = "SELECT user_name FROM group_users WHERE group_id = ? AND active_member = '1'";
	var groupUsersSet = new Set();
	const groupID = 77;
		
	var groupUsersResponse = {
		outcome: 1,
		groupUsers: [],
		errors: [],
	}

	connection.query(queryString,[groupID], (err, rows) => {
		if (!err) {
			console.log("No error")
			rows.map((row) => {
				groupUsersSet.add(row.user_name) 
			});
			groupUsersResponse.groupUsers = Array.from(groupUsersSet);;

		} else {
			//console.log("Failed to Select Users from this Group " + err)
			groupUsersResponse.outcome = 0;
			groupUsersResponse.errors.push("Failed to Select Users from this Group " + err);
		}	
		res.json(groupUsersResponse);
	})  
}
*/






/*
	return new Promise((resolve, reject) => {
		const connection = db.getConnection(); 
		const queryString = "SELECT user_name FROM group_users WHERE group_id = ? AND active_member = '1'";
	
		var groupUsersResponse = {
			outcome: 1,
			groupUsers: ["davey"],
			errors: [],
		}
*/
		
  //DATABASE
  /*
  return new Promise(async function(resolve, reject) {
    const connection = db.getConnection(); 
	
	//SUCCESS
	try {
		const queryString = "SELECT user_name, first_name, last_name FROM user_profile WHERE user_id = '1'";
		
		//catch error err!
		connection.query(queryString, (err, rows, fields) => {
			const users = rows.map((row) => {
				return {
					userName: row.user_name,
					firstName: row.first_name,
					lastName: row.last_name
				}
			});

			//Get 
			let davey = users[0].userName;
			let allUsers = [davey];
			let outcome = "success";
			let final = {
				users: allUsers,
				outcome: outcome
			}
			resolve(final);	
	
		})  

	//FAILURE
	} catch(err) {
		console.log("error " + err)
		let allUsers = [];
		let outcome = "failure";
		let final = {
			users: allUsers,
			outcome: outcome
		}
		reject(final);	
	} 
	*/

		/*

		//Outcome
		if(groupUsersResponse.outcome = 1) {
			resolve(groupUsersResponse)    
		} else {
			reject(err)
		}

		//Try to Fetch the Data Here
		connection.query(queryString, [userId], (err, rows, fields) => {
			if (!err) {
				console.log("worked!");
		
			} else {
				console.log("Failed to query for users: " + err);
			}

		}) 
		*/
	
		/*
			var userResponse = {
		userOutcome: 0,
		errors: [],
		userData: {}
	}

	//Create Query 
	let userId = req.params.id;
	const queryString = "SELECT user_name, email, first_name, last_name FROM user_profile WHERE user_id = '1'";
	connection.query(queryString, [userId], (err, rows, fields) => {

		if (!err) {
			console.log("worked!");

			//Format data
			const users = rows.map((row) => {
			return {
				userName: row.user_name,
				email: row.email,
				firstName: row.first_name,
				lastName: row.last_name
				}
			});

			userResponse.userOutcome = 1;
			userResponse.userData = users;

		} else {
			console.log("Failed to query for users: " + err);
			userResponse.errors.push("Failed to query for users: " + err)
			//res.sendStatus(500);
			//res.end();
		}
	   res.json(userResponse)
   
	}) 
		
		*/
		/*
		
	const connection = db.getConnection(); 
	const queryString = "SELECT user_name FROM group_users WHERE group_id = ? AND active_member = '1'";

	connection.query(queryString,[groupID], (err, rows) => {
		if (err) {
			console.log("Failed to Select Users from this Group " + err)
			res.sendStatus(500)
			return
		}
		const groupUsers = new Set()

		rows.map((row) => {
			groupUsers.add(row.user_name)  

		});
		//console.log(groupUsers);
		return groupUsers;
	})  
		*/
		/*
		const groupUsers = new Set()
		groupUsers.add("davey")  
		groupUsers.add("sam")
		groupUsersOutcome.outcome = 1;
		groupUsersOutcome.groupUsers = groupUsers;
		*/



/*

function getGroupUsersORIGINAL(groupID) {
	console.log("get group users for " + groupID)
	
	const connection = db.getConnection(); 
	const queryString = "SELECT user_name FROM group_users WHERE group_id = ? AND active_member = '1'";
	console.log("calling");

	return new Promise(resolve => {
		const response = {}
		const groupUsers = new Set();

		connection.query(queryString,[groupID], (err, rows) => {
			if (!err) {
				rows.map((row) => {
					groupUsers.add(row.user_name)  
				});
				response.status = 200
				//let array = Array.from(mySet);
				response.data = Array.from(groupUsers);
			} else {
				console.log("Failed to Select Users from this Group " + err)
				//res.sendStatus(500)
				response.status = 500
				response.data = groupUsers;
			}	
			resolve(response);	
			//console.log(groupUsers);
		})
	});	
	
}
*/

/*

function getMatt() {
	return new Promise(async function(resolve, reject) {
	  const connection = db.getConnection(); 
  
	  try {
		  const queryString = "SELECT user_name, first_name, last_name FROM user_profile WHERE user_id = '2'";
  
		  connection.query(queryString, (err, rows, fields) => {
			  const users = rows.map((row) => {
				  return {
					  userName: row.user_name,
					  firstName: row.first_name,
					  lastName: row.last_name
				  }
			  });

			  resolve(users[0].userName);
		  })  
  
	  } catch(err) {
		  console.log("error " + err)
  
	  } finally {
		  console.log("finally")
	  }
  
	});
  }
  */

/*
// Function A1: Get Group Users (Make Async)
function getGroupUsers(groupID) {

	const connection = db.getConnection(); 
	const queryString = "SELECT user_name FROM group_users WHERE group_id = ? AND active_member = '1'";

	connection.query(queryString,[groupID], (err, rows) => {
		if (err) {
			console.log("Failed to Select Users from this Group " + err)
			res.sendStatus(500)
			return
		}
		const groupUsers = new Set()

		rows.map((row) => {
			groupUsers.add(row.user_name)  

		});
		//console.log(groupUsers);
		return groupUsers;
	})  
	
	const groupUsers = new Set()
	groupUsers.add("davey")  
	groupUsers.add("sam")
	

	//return groupUsers;
}
*/


