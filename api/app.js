require('dotenv').config()
const express = require('express')
const PORT = process.env.PORT || 3003;
const app = express()
const posts = require('./application/routes/postRoutes.js');
const user = require('./application/routes/userRoutes.js');
const group = require('./application/routes/groupRoutes.js');
const upload = require('./application/routes/uploadRoutes.js'); 

app.use(express.json());

app.use(user);
app.use(group);
app.use(posts);
app.use(upload); 

app.listen(PORT, () => {
  console.log("Server is up and listening on " + PORT)
})

app.get("/", (req, res) => {
    console.log("hiya!");
    res.send("hiya!");
    res.end()
})
