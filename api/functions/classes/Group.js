const db = require('./../conn');


class Group {
    constructor(groupID) {
        this.groupID = groupID;
    }
    
    //Method A1: Create a Group
    static async createGroup(req)  {
        const groupOutcome = {
            outcome: 1,
            errors: []
        }

        return new Promise(async function(resolve, reject) {
            if(1==2) {
                resolve(groupOutcome);
            } else {   
                groupOutcome.outcome = 0;
                reject(groupOutcome);
            }  
        
        });
    }

        /*
        const connection = db.getConnection(); 
        const masterSite = req.body.masterSite 
        const postType = req.body.postType 
        const postFrom = req.body.postFrom 
        const postTo = req.body.postTo 
        const postCaption = req.body.postCaption 
     
        var postOutcome = {
            outcome: 0,
            postID: 0,
            errors: []
        }

        //INSERT POST
        return new Promise(async function(resolve, reject) {
            try {
                const queryString = "INSERT INTO posts (master_site, post_type, post_from, post_to, post_caption) VALUES (?, ?, ?, ?, ?)"
    
                connection.query(queryString, [masterSite, postType, postFrom, postTo, postCaption], (err, results, fields) => {
                    if (!err) {
                        console.log("You created a new Post with ID " + results.insertId);    
                        postOutcome.outcome = 1;       
                        postOutcome.postID = results.insertId;       
                    } else {    
                        postOutcome.outcome = "no worky"
                        postOutcome.errors.push(err);
                    } 
                    resolve(postOutcome);
                }) 
                
            } catch(err) {
                postOutcome.outcome = "rejected";
                console.log("REJECTED " + err);
                reject(postOutcome);
            } 
        });
    }
    */
}

module.exports = Group;


