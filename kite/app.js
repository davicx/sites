const express = require('express')
const app = express()
const morgan = require('morgan')
const mysql = require('mysql')
let book = require('./controllers/book');
app.use(express.json());
app.use(morgan('short'))


//Home Route
app.listen(3003, () => {
  console.log("Server is up and listening on 3003...")
})

app.get("/", (req, res) => {
  console.log("Responding to root route");
    res.end()
})

//TYPE 1: Get Users
app.get("/users", (req, res) => {
  const user1 = {firstName: "David", lastName: "V"}
  const user2 = {firstName: "Frodo", lastName: "B"}
  const user3 = {firstName: "Bilbo", lastName: "B"}
  res.json([user1, user2, user3])
})

//TYPE 2: Route File
app.route("/book").get(book.getBooks);


//TYPE 3: Get user By ID 
app.get('/user/:id', (req, res) => {

  //Connect to Database 
  const connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      database: 'shareshare'
  })

  //Create Query 
  let userId = req.params.id;
  const queryString = "SELECT user_name, email, first_name, last_name FROM user_profile WHERE user_id = ?";
  connection.query(queryString, [userId], (err, rows, fields) => {

  //Handle Error 
  if (err) {
      console.log("Failed to query for users: " + err);
      res.sendStatus(500);
      res.end();
  }
  
  console.log("I think we fetched users successfully");

  //Format data
  const users = rows.map((row) => {
      return {
          userName: row.user_name,
          email: row.email,
          firstName: row.first_name,
          lastName: row.last_name
      }
  });

  res.json(users);

  })     
});

//TYPE 4: Simple POST request 
app.post('/simple_post', function(req, res, next) {
  res.send("hello! Sent from POST request")
  
  const firstName = req.body.firstName
  const lastName = req.body.lastName 
  
  console.log("Hello, my name is, " + firstName + " " + lastName);

  res.end()
})


//Functions: Get Connection
function getConnection() {
  return mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'shareshare'
  })
}
