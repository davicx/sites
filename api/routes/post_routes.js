const express = require('express')
const mysql = require('mysql')
const router = express.Router();
let postController = require('./../controllers/postController');
const Post = require('./../models/Post.js')

//Dev: Temp
var cors = require('cors')
router.use(cors())

//GET ROUTES
//Route 1: Get a Single Post by ID
router.get("/post/:post_id", (req, res) => {
    const post_id = req.params.post_id;

    //Create Query 
    const connection = getConnection();
    //const queryString = "SELECT post_from, post_to, post_caption FROM posts WHERE LIMIT 10";
    const queryString = "SELECT post_id, post_from, post_to, post_caption FROM posts WHERE post_id = ?";

    connection.query(queryString, [post_id], (err, rows, fields) => {
        if (err) {
            console.log("Failed to Select Posts" + err)
            res.sendStatus(500)
            return
        }
        //TEMP
        res.setHeader('Access-Control-Allow-Origin', '*');
        //TEMP      
        res.json(rows);

    }) 
})


//Route 2: Get all Posts to a User 
router.get("/posts/user/:post_to", (req, res) => {
    const post_to = req.params.post_to;

    //Create Query 
    const connection = getConnection();
    const queryString = "SELECT post_id, post_from, post_to, post_caption FROM posts WHERE post_to = ?";

    connection.query(queryString, [post_to], (err, rows, fields) => {
        if (err) {
            console.log("Failed to Select Posts" + err)
            res.sendStatus(500)
            return
        }
        //TEMP
        res.setHeader('Access-Control-Allow-Origin', '*');
        //TEMP
        res.json(rows);

    })
})


//Route 3: Get all Posts to a Group 
router.get("/posts/group/:group_id", (req, res) => {
    const group_id = req.params.group_id;

    //Create Query 
    const connection = getConnection();
    const queryString = "SELECT post_id, post_from, post_to, post_caption FROM posts WHERE group_id = ?";

    connection.query(queryString, [group_id], (err, rows) => {
        if (err) {
            console.log("Failed to Select Posts" + err)
            res.sendStatus(500)
            return
        }
        //TEMP
        res.setHeader('Access-Control-Allow-Origin', '*');
        //TEMP
        res.json(rows);

    })
})


//Route 4: Get all Posts 
router.get("/posts/all", (req, res) => {

    let currentPost = new Post(1)
    console.log(currentPost.postCaption + " " + currentPost.postID)

    //Create Query 
    const connection = getConnection();
    const queryString = "SELECT post_id, post_from, post_to, post_caption FROM posts LIMIT 5";

    connection.query(queryString, (err, rows, fields) => {
        if (err) {
            console.log("Failed to Select Posts" + err)
            res.sendStatus(500)
            return
        }
        
        //TEMP
        res.setHeader('Access-Control-Allow-Origin', '*');
        //TEMP

        res.json(rows);

    })
})


//POST ROUTES
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



		
 
	
	

})

//TEMP: Local Post
router.post('/temp', function(req, res, next) {
    const connection = getConnection();
    const postType = req.body.postType
    const postStatus = req.body.postStatus 
    const groupID = req.body.groupID 
    const postFrom = req.body.postFrom 
    const postTo = req.body.postTo 
    const postCaption = req.body.postCaption 

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
 
})


//USE CONTROLLER
router.route("/post").get(postController.getSinglePost);

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