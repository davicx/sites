const db = require('./conn');

/*
FUNCTIONS A: All Functions Related to Making a Post
	1) Function A1: Get Group Users
	2) Function A2: Get all Groups a User is in 

*/



// Function A1: Get Group Users (Make Async)
function getGroupUsers(groupID) {
	    //const connection = getConnection();
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
			console.log(groupUsers);
			return groupUsers;
		})  
}


module.exports = { getGroupUsers };
