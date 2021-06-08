const express = require('express')
const app = express()
const morgan = require('morgan')
const mysql = require('mysql')
const posts = require('./application/posts/routes/posts.js');
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
