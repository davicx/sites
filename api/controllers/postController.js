const mysql = require('mysql')
//const Notification = require('./../models/Notification.js')

function getSinglePost(req, res) {
    const post_id = req.params.post_id;

    //Create Query 
    const connection = getConnection();
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
}

function getUserPosts(req, res) {
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
}

function getGroupPosts(req, res) {
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
}

function getAllPosts(req, res) {

    //Create Query 
    const connection = getConnection();
    const queryString = "SELECT post_id, post_from, post_to, post_caption FROM posts LIMIT 20";

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
}

//POST: 
app.post('/post', (req, res) => {
    console.log("Trying to create a new user...")
  
    const firstName = req.body.create_first_name
    const lastName = req.body.create_last_name
  
    const queryString = "INSERT INTO user_profile (user_name, first_name, last_name) VALUES (?, ?, ?)"
    getConnection().query(queryString, [firstName, firstName, lastName], (err, results, fields) => {
      if (err) {
        console.log("Failed to insert new user: " + err)
        res.sendStatus(500)
        return
      }
      var newUserID = results.insertId;
      console.log("Inserted a new user with id: ", results.insertId);
  
      res.end()
    })
  })

module.exports = { getSinglePost, getUserPosts, getGroupPosts, getAllPosts };

//Create Connection Pool 
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