const db = require('./conn');

/*
FUNCTIONS A: All Functions Related to Making a Post
	1) Function A1: Get Group Users
	2) Function A2: Get all Groups a User is in 

*/

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

module.exports = { getGroupUsers };

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


