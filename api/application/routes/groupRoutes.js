const express = require('express')
const groupRouter = express.Router();
const groupFunctions = require('./../../functions/groups')
//app.use(express.json());

//USER ROUTES
//Route A1: Create a New Group
groupRouter.post('/group/create/', function(req, res) {
    groupFunctions.newGroup(req, res);
})

//Route A2: Invite User to a Group 
groupRouter.post('/group/invite/', function(req, res) {
    groupFunctions.addGroupUser(req, res);
})


//GET ROUTES
//Route B1: Get All Groups 
groupRouter.get("/groups", (req, res) => {
    groupFunctions.getAllGroups(req, res);
})

//Route B2: Get Single Group by ID 
groupRouter.get("/group/:groupID", (req, res) => {
    groupFunctions.getGroup(req, res);
})


module.exports = groupRouter;




