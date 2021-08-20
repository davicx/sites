const db = require('./conn');
//const Notification = require('./classes/Notifications');
//const Post = require('./classes/Post')

/*
FUNCTIONS A: All Functions Related to a User 
	1) Function A1: Post Text  

FUNCTIONS B: All Functions Related to Getting Posts
	1) Function B1: Get Posts to a Group

*/

//FUNCTIONS A: All Functions Related to a User 
//Function A1: Post Text

 
function addFriend(req, res) {
    console.log(req.body.currentUser);
    console.log(req.body.friend);
	res.json({addFriend: "you added a friend"});
}

function getUserProfile(req, res) {
    const userID = req.params.user_id;
	res.json({userProfile: "you got your info " + userID});
}


module.exports = { addFriend, getUserProfile};




