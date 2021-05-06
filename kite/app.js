const express = require('express')
const app = express()
//const morgan = require('morgan')
//const mysql = require('mysql')
//const bodyParser = require('body-parser')
//app.use(bodyParser.urlencoded({extended: false}))
//app.use(morgan('short'))


//Home Route
app.listen(3003, () => {
  console.log("Server is up and listening on 3003...")
})

app.get("/", (req, res) => {
  console.log("Responding to root route");
    res.end()
})

//Users
app.get("/users", (req, res) => {
  const user1 = {firstName: "David", lastName: "V"}
  const user2 = {firstName: "Frodo", lastName: "B"}
  const user3 = {firstName: "Bilbo", lastName: "B"}
  res.json([user1, user2, user3])
})