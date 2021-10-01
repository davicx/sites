const db = require('./../conn');


class Group {
    constructor(groupID) {
        this.groupID = groupID;
    }

    static groupTest() {
        console.log("TEST GROUP")
    }
    
    //Method A2: Create a Group
    static async addGroupUsers(groupID, groupUsers, groupCreator)  {
        const connection = db.getConnection(); 
        var groupUsersOutcome = {
            outcome: 1,
            errors: []
        }
       
        return new Promise(async function(resolve, reject) {
            try {
                for(let i = 0; i < groupUsers.length; i++) {
                    let currentUser = groupUsers[i];
                    let activeMember = 0;
                    if(currentUser.toLowerCase() == groupCreator.toLowerCase()) {
                        activeMember = 1;
                    } else {
                        activeMember = 0;      
                    }    
                    console.log(groupUsers[i] + " " + activeMember)

                    const queryString = "INSERT INTO group_users (group_id, user_name, active_member) VALUES (?, ?, ?)"

                    connection.query(queryString, [groupID, currentUser, activeMember], (err, results) => {
                        if (err) {
                            console.log(err);
                            groupUsersOutcome.outcome = 0;
                            groupUsersOutcome.errors.push(err);
                        } 
                    })  
                }
     
                resolve(groupUsersOutcome); 

            } catch(err) {
                groupUsersOutcome.outcome = 0;
                console.log("REJECTED " + err);
                reject(groupUsersOutcome);
            } 
        });
    }


    //Method A1: Create a Group
    static async createGroup(req)  {
        const connection = db.getConnection(); 
        var groupID = 0;
        const currentUser = req.body.currentUser; 
        const groupName = req.body.groupName; 
        const groupType = req.body.groupType; 
        const groupImage = "the_shire.jpg"; 
        const groupPrivate = req.body.groupPrivate; 

        var groupOutcome = {
            outcome: 0,
            groupID: groupID,
            errors: []
        }

        return new Promise(async function(resolve, reject) {
            try {
                const queryString = "INSERT INTO groups (group_type, created_by, group_name, group_image, group_private) VALUES (?, ?, ?, ?, ?)"

                connection.query(queryString, [groupType, currentUser, groupName, groupImage, groupPrivate], (err, results) => {
                    if (!err) {
                        groupOutcome.outcome = 1;
                        groupOutcome.groupID = results.insertId
                        //console.log("You created a new Group with ID " + results.insertId);        
                        //res.json(groupOutcome);
                    } else {  
                        //console.log(err);
                        groupOutcome.errors.push(err);
                        //res.json({error: "ERROR MAN!"})  
                    }  
                    resolve(groupOutcome);
                })   
            } catch(err) {
                console.log("REJECTED " + err);
                reject(groupOutcome);
            } 
        });
    }
}

module.exports = Group;




//STEP 1: Create New Group 
//Part 1: Create new group and insert into groups table 



