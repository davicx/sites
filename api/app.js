const express = require('express')
const app = express()
const morgan = require('morgan')
const mysql = require('mysql')
const posts = require('./application/posts/routes/posts.js');
const User = require('./classes/user');
app.use(express.json());
app.use(morgan('short'));
app.use(posts);


//Home Route
app.listen(3003, () => {
  console.log("Server is up and listening on 3003...")
})

app.get("/", (req, res) => {
  console.log("Responding to root route");

  res.end()
})

app.get("/friends", (req, res) => {
  console.log("Responding to root route");
  let userName = "davey";
  let currentUser = new User(userName);
  console.log(currentUser.userName);
  currentUser.getUserInfo(userName);
  currentUser.getFriendList(userName);
  let myFriends = currentUser.getFriendList(userName);
  res.send(myFriends);

  res.send()
})
