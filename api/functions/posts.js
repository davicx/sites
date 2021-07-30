
const db = require('./conn');
const Notification = require('./classes/Notifications');
//const groupFunctions = require('./groups')

/*
FUNCTIONS A: All Functions Related to Making a Post
	1) Function A1: Post Text  
	2) Function A2: Post a Photo
	3) Function A3: Post a Video
	4) Function A4: Post an Article
	5) Function A5: Post a File 
*/

//Function A1: Post Text
async function postText(req, res) {
	const connection = db.getConnection(); 
	console.log("DV: postText Called")
	//Logic Flow
	/*
	Insert the post 
	If it works then create a notification 
	1) Get all the group users it goes to
	2) Post the notification to them
	*/

    //STEP 1: Insert into posts table
	const masterSite = req.body.masterSite 
    const postType = req.body.postType 
    const groupID = req.body.groupID 
    const listID = req.body.listID 
    const postFrom = req.body.postFrom 
    const postTo = req.body.postTo 
    const postCaption = req.body.postCaption 
	const postStatus = 1;


	//STEP 2: Add New Text Notifications 
	const notificationMessage = req.body.notificationMessage;
	const notificationLink = req.body.notificationLink;
	const notificationType = req.body.notificationType;
	
	const newNotification = {
		masterSite: masterSite,
		notificationFrom: postFrom,
		notificationTo: postTo,
		notificationMessage: notificationMessage,
		notificationLink: notificationLink,
		notificationType: notificationType,
		groupID: groupID,
	}
	//Notification.createPostNotification(newNotification);

	res.send(newNotification);
	

}

module.exports = { postText, postLearning };

//LEARNING
//Function A2: Post Learning 
async function postLearning(req, res) {
    const connection = db.getConnection(); 
	const postCaption = req.body.postCaption 
	
	createMyNotification();
	//console.log("DV: postLearning Called");
	//let users = await createNotification();
	//console.log(users.data);
	
	res.json("hi")
}

////

async function createMyNotification() {
  try {
    let userObject = await getUsers();
	console.log("USER")
	console.log("_________________________")
    console.log(userObject);
	console.log("_________________________")
} catch (err) {
    console.log('Opps, an error occurred', err);
  }
}


async function getUsers() {
  let matty = await getMatt();

  //DATABASE
  return new Promise(async function(resolve, reject) {
    const connection = db.getConnection(); 

	try {
		const queryString = "SELECT user_name, first_name, last_name FROM user_profile WHERE user_id = '1'";

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
			
			let hiyaUsers = {
				dv: davey,
				mv: matty
			}
			resolve(hiyaUsers);
		})  

	} catch(err) {
		console.log("error " + err)

	} finally {
		console.log("finally")
	}

  });
}



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
  
  




///
/*

function createNotification() {
	const connection = db.getConnection(); 
	const groupID = 77;
	getGroupUsers(groupID);


	const queryString = "SELECT user_name, first_name, last_name FROM user_profile WHERE user_id = '1'";

	return new Promise(resolve => {
		const response = {}

		connection.query(queryString, (err, rows) => {

			//SUCCESS
			if (!err) {
				const users = rows.map((row) => {
					return {
						userName: row.user_name,
						firstName: row.first_name,
						lastName: row.last_name
					}
				});
				console.log(users)
				
				const currentUser = users[0].userName;

		
				response.status = 200
				response.data = currentUser;
			
			//FAILURE
			} else {
				console.log("Failed to Select Users from this Group " + err)
				response.status = 500
				response.data = groupUsers;
			}	
			resolve(response);	
			//console.log(groupUsers);
		})
	});	

 */
///


/*
const oracledb = require('oracledb');        
const dbConfig = require('./db-config.js');      
const employees = require('./employees.js');

async function startApp() {
  try {
    await oracledb.createPool(dbConfig);

    let emp = await employees.getEmployee(101);

    console.log(emp);
  } catch (err) {
    console.log('Opps, an error occurred', err);
  }
}

startApp();

const oracledb = require('oracledb');

function getEmployee(empId) {
  return new Promise(async function(resolve, reject) {
    let conn; // Declared here for scoping purposes.

    try {
      conn = await oracledb.getConnection();

      console.log('Connected to database');

      let result = await conn.execute(
        `select *
        from employees
        where employee_id = :emp_id`,
        [empId],
        {
          outFormat: oracledb.OBJECT
        }
      );

      console.log('Query executed');

      resolve(result.rows[0]);
    } catch (err) {
      console.log('Error occurred', err);

      reject(err);
    } finally {
      // If conn assignment worked, need to close.
      if (conn) {
        try {
          await conn.close();

          console.log('Connection closed');
        } catch (err) {
          console.log('Error closing connection', err);
        }
      }
    }
  });
}

module.exports.getEmployee = getEmployee;

*/
////
/*
function createNotification() {
	const connection = db.getConnection(); 
	const groupID = 77;
	getGroupUsers(groupID);


	const queryString = "SELECT user_name, first_name, last_name FROM user_profile WHERE user_id = '1'";

	return new Promise(resolve => {
		const response = {}

		connection.query(queryString, (err, rows) => {

			//SUCCESS
			if (!err) {
				const users = rows.map((row) => {
					return {
						userName: row.user_name,
						firstName: row.first_name,
						lastName: row.last_name
					}
				});
				console.log(users)
				
				const currentUser = users[0].userName;

		
				response.status = 200
				response.data = currentUser;
			
			//FAILURE
			} else {
				console.log("Failed to Select Users from this Group " + err)
				response.status = 500
				response.data = groupUsers;
			}	
			resolve(response);	
			//console.log(groupUsers);
		})
	});	
*/

	/*
	//const groupID = 77;
	console.log("createNotification");
	//getGroupUsers(groupID);
	const connection = db.getConnection(); 
	//const notification = { notificationCaption: "hiya"}
	
	
	//Select User
	const queryString = "SELECT user_name, first_name, last_name FROM user_profile WHERE user_id = '1'";
	connection.query(queryString, (err, rows, fields) => {
	
		//Handle Error 
		if (err) {
			console.log("Failed to query for users: " + err);
			res.sendStatus(500);
			res.end();
		}
	 
		//Format data
		const users = rows.map((row) => {
			return {
				userName: row.user_name,
				firstName: row.first_name,
				lastName: row.last_name
			}
		});
		
		const currentUser = users.userName;
		console.log(currentUser);
		//let users = "davey"
		//return users;
	
	})  	
	*/ /*

}
*/
/*

function getGroupUsers(groupID) {
	console.log("getGroupUsers " + groupID)	

}
*/

//APP

//Function A1: Post Text 
/*
async function postText(req, res) {
    const connection = db.getConnection(); 
	console.log("DV: postText Called")

    //STEP 1: Insert into posts table
	const masterSite = req.body.masterSite 
    const postType = req.body.postType 
    const groupID = req.body.groupID 
    const listID = req.body.listID 
    const postFrom = req.body.postFrom 
    const postTo = req.body.postTo 
    const postCaption = req.body.postCaption 
	const postStatus = 1;


	//STEP 2: Add New Text Notifications 
	const notificationMessage = req.body.notificationMessage;
	const notificationLink = req.body.notificationLink;
	const notificationType = req.body.notificationType;
	
	const newNotification = {
		masterSite: masterSite,
		notificationFrom: postFrom,
		notificationTo: postTo,
		notificationMessage: notificationMessage,
		notificationLink: notificationLink,
		notificationType: notificationType,
		groupID: groupID,
	}
	Notification.createPostNotification(newNotification);

	res.send(newNotification);
	
*/
	//WORKS
	/*
    const queryString = "INSERT INTO posts (master_site, post_type, post_from, post_to, post_caption) VALUES (?, ?, ?, ?, ?)"
    
    connection.query(queryString, [masterSite, postType, postFrom, postTo, postCaption], (err, results, fields) => {
        if (!err) {
			
			//STEP 2: Create Notifications
			const newNotification = {
				masterSite: masterSite,
				notificationFrom: postFrom,
				notificationTo: postTo,
				notificationMessage: notificationMessage,
				notificationLink: notificationLink,
				notificationType: notificationType,
				groupID: groupID,
			}
			console.log(newNotification)

			//Notification.createNotification(newNotification);
			//res.send("POST DATA: " + postFrom + " " + postTo + " " + postCaption)

			//Send Response
			console.log("You created a new Post with ID " + results.insertId);
			res.send("LAST: It worked " + results.insertId);
        } else {
			console.log("Failed to insert new Post: " + err)
            res.sendStatus(500)
            return
        } 
    }) 
	*/
	/*
}

module.exports = { postText, postLearning };

/*
	//STEP 2: Add New Text Notifications 
	$notification_message = $_POST["notification_message"];
	$notification_link    = $_POST["notification_link"];	
	$notification_type    = $_POST["notification_type"];	
	$notification_from    = $post_from;
	
	$Current_Notification = new Notifications($logged_in_user);
	$notification_to_array = getActiveGroupMembers($group_id);
	$notification_to_count = count($notification_to_array);

	//Loop Through all Group Member and Send them a Notification 
	for($x = 0; $x < $notification_to_count; $x++) {
		$notification_to = $notification_to_array[$x];				
		$Current_Notification->createGroupNotification($master_site, $notification_from, $notification_to, $notification_message, $notification_link, $notification_type, $group_id);
	}		
	
*/







/*
function getGroupUsers(groupID) {
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
				response.data = groupUsers;
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
