const express = require('express')
const app = express()
const morgan = require('morgan')
const posts = require('./application/routes/posts.js');
app.use(morgan('short'));
app.use(posts);

//Home Route
app.listen(3003, () => {
  console.log("Server is up and listening on 3003...")
})

app.get("/", (req, res) => {
  console.log("Responding to root route");
  res.send("hiya")
  res.end()
})











//ORGANIZE
//const mysql = require('mysql')

//const User = require('./classes/user');
//app.use(posts);
//app.use(express.json());

/*
//TYPE 5: Simple POST request 
app.post('/post', function(req, response) {
  response.send(req.body);

  //console.log(req.body.postFrom + " " + req.body.postTo + " " + req.body.postCaption);
    const postType = req.body.postType
  const postStatus = req.body.postStatus
  const groupID = req.body.groupID
  const postFrom = req.body.postFrom
  const postTo = req.body.postTo
  const postCaption = req.body.postCaption
  const notificationMessage = req.body.notificationMessage
  const notificationType = req.body.notificationType
  const notificationLink = req.body.notificationLink

  console.log(postType + " " + postFrom + " " + postTo + " " + postCaption + " " + notificationMessage + " " + notificationType + " " + notificationLink);

  const queryString = "INSERT INTO posts (post_type, post_status, group_id, post_from, post_to, post_caption) VALUES (?, ?, ?, ?, ?, ?)"
  getConnection().query(queryString, [postType, postStatus, groupID, postFrom, postTo, postCaption], (err, results, fields) => {
    if (err) {
      console.log("Could not insert the post " + err)
      response.sendStatus(500)
      return
    }
    var newPostID = results.insertId;
    console.log("Inserted a new post with id: ", newPostID);
    const post_outcome = "Inserted a new post with id: " + newPostID;
    response.setHeader('Content-Type', 'application/json');

    const outcome = {"post_outcome": post_outcome};
    response.write(JSON.stringify(outcome));
    response.end();
  })
})

//ROUTE 4: Simple Post Response from Database
app.get("/posts", (req, res) => {

  //Create Query 
  const connection = getConnection();
  const queryString = "SELECT post_id, post_from, post_to, post_caption FROM posts LIMIT 5";

  connection.query(queryString, (err, rows) => {
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


//Functions: Get Connection
function getConnection() {
  return mysql.createConnection({
    host: 'shareshare.c3itguipg2wt.us-west-2.rds.amazonaws.com',
    user: 'admin',
    password: 'gCtLRbXMWWS2SwNg',
    database: 'shareshare'
    //host: 'localhost',
    //user: 'root',
    //password: '',
    //database: 'shareshare'
  })
}



app.get("/friends", (req, res) => {
  let userName = "davey";
  let currentUser = new User(userName);
  console.log(currentUser.userName);
  currentUser.getUserInfo(userName);
  currentUser.getFriendList(userName);
  let myFriends = currentUser.getFriendList(userName);
  res.send(myFriends);

  res.send()
})


 



  /*
  //Create Query 
  const queryString = "SELECT host FROM mysql.user WHERE User = 'root';";

  getConnection().query(queryString, (err, rows) => {
      if (err) {
          console.log("Failed to Select New User: " + err)
          res.sendStatus(500)
          return
      }

      //Output Data
      const posts = rows.map((row) => {
          return {
              postFrom: row.post_from,
              postTo: row.post_to,
              postCaption: row.post_caption
          }      
      }); 
      res.json(posts);
      //res.json(rows);  
      res.end()
  })

  */