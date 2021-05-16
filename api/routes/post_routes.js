const express = require('express')
const mysql = require('mysql')
const router = express.Router();
let postController = require('./../controllers/postController');
let notifications = require('./../functions/notifications');
const Post = require('./../models/Post.js')


//Dev: Temp
var cors = require('cors')
router.use(cors())

//GET ROUTES
//Route 1: Get a Single Post by ID
router.route("/post/:post_id").get(postController.getSinglePost);

//Route 2: Get all Posts to a User 
router.route("/posts/user/:post_to").get(postController.getUserPosts);

//Route 3: Get all Posts to a Group 
router.route("/posts/group/:group_id").get(postController.getGroupPosts);

//Route 4: Get all Posts 
router.route("/posts/all").get(postController.getAllPosts);

 
//POST ROUTES
//post/user
//post/group

//Route 5: Make a Post 
router.post('/new_post', function(req, res, next) {

    //STEP 1: Insert into posts table 
    const connection = getConnection();
    const postType = req.body.postType
    const postStatus = req.body.postStatus 
    const groupID = req.body.groupID 
    const postFrom = req.body.postFrom 
    const postTo = req.body.postTo 
    const postCaption = req.body.postCaption 
    const notificationFrom = req.body.postFrom 
    const notificationTo = req.body.postTo 
    const notificationMessage = req.body.notificationMessage 
    const notificationType = req.body.notificationType 
    const notificationLink = req.body.notificationLink 
 

    console.log(postType + " " + postStatus + " " + groupID + " " + postFrom + " " + postTo + " " + postCaption);

    const queryString = "INSERT INTO posts (post_type, post_status, group_id, post_from, post_to, post_caption) VALUES (?, ?, ?, ?, ?, ?)"
    
    connection.query(queryString, [postType, postStatus, groupID, postFrom, postTo, postCaption], (err, results, fields) => {
        if (err) {
            console.log("Failed to insert new Post: " + err)
            res.sendStatus(500)
            return
        } else {
            console.log("You created a new Post with ID " + results.insertId);
            res.send("It worked ");
        } 
    }) 

    //STEP 2: Add New Notifications  
    notifications.createNotification(notificationFrom, notificationTo, notificationMessage, notificationLink, notificationType);
    


})

/*
		if(isset($_POST['master-site'])){ $master_site = $_POST['master-site']; }else { $master_site = "shareshare"; }	 		
		if(isset($_POST['logged-in-user'])){ $logged_in_user = $_POST['logged-in-user']; } else { $logged_in_user = "error"; }	
		if(isset($_POST['redirect'])){ $redirect = $_POST['redirect']; } else { $redirect = "#"; }			
		if(isset($_POST['notification-message'])){ $notification_message = $_POST['notification-message']; } else { $notification_message = ""; }
		if(isset($_POST['notification-type'])){ $notification_type = $_POST['notification-type']; } else { $notification_type = "new_file"; }
		if(isset($_POST['notification-link'])){ $notification_link = $_POST['notification-link']; } else { $notification_link = $page_redirect; }	
*/


//USE CONTROLLER
//router.route("/post").get(postController.getSinglePost);

//FUNCTIONS
const pool = mysql.createPool({
    connectionLimit: 10,
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'shareshare'
})

//Functions: Get Connection
function getConnection() {
    return pool;
}

module.exports = router;