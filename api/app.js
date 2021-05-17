const express = require('express')
const app = express()
const morgan = require('morgan')
const mysql = require('mysql')
const router = require('./routes/post_routes.js');
app.use(express.json());
app.use(morgan('short'));
app.use(router);


//Home Route
app.listen(3003, () => {
  console.log("Server is up and listening on 3003...")
})


app.get("/", (req, res) => {
  console.log("Responding to root route");
    //let currentPost = new Post(1);
  //currentPost.postCaption;
  //var currentPost = new Post(1)
  //myInstance.test()
  //let currentPost = new Post(1)
  //console.log(currentPost.postCaption + " " + currentPost.postID)

    res.end()
})

/*
app.get("/groupusers/:group_id", (req, res) => {
  const groupID = req.body.group_id
  console.log(groupID);
 

    res.end()
})

*/

