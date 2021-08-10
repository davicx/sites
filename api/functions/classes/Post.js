const db = require('./../conn');

class Post {
    constructor(postID) {
        this.postID = postID;
        this.postFrom = "";
        this.postTo = "";
        this.postCaption = "";
    }
    
    //METHODS A: POST RELATED
    //Method A1: Get Post Info 
    getPostInfo() {
        //console.log("Post " + this.postID + " " + postFrom + " " + postTo);
        console.log("Post " + this.postID);
        //const queryString = "SELECT post_from, post_to, post_caption FROM posts WHERE post_id = ?";
        const queryString = "SELECT post_from, post_to, post_caption FROM posts";

        getConnection().query(queryString, [this.postID], (err, rows, fields) => {
            if (err) {
                console.log("Failed to Select Post: " + err)
                res.sendStatus(500)
                return
            }
            //console.log(post)
            const posts = rows.map((row) => {
                return {
                    postFrom: row.post_from,
                    postTo: row.post_to,
                    postCaption: row.post_caption
                }
            });
            console.log("_________________")
            console.log(posts.length);          
            console.log(posts);          
            console.log("_________________")

        })
    
    }


    //Method A2: Make a Post
    static async postText(req)  {
        const connection = db.getConnection(); 
        const postFrom = req.body.postFrom 
        const postTo = req.body.postTo 
        const postCaption = req.body.postCaption 
        console.log("create a new post")
    }






    //Method A2: Make a Post
    static async postTextOld(req)  {
        const connection = db.getConnection(); 
        const postFrom = req.body.postFrom 
        const postTo = req.body.postTo 
        const postCaption = req.body.postCaption 
        
        //INSERT POST
        return new Promise(async function(resolve, reject) {
            try {
                const queryString = "SELECT user_name, first_name, last_name FROM user_profile WHERE user_id = '2'";
        
                connection.query(queryString, (err, rows, fields) => {
                    const users = rows.map((row) => {
                        return {
                            userName: row.user_name,
                            firstName: row.first_name,
                            lastName: row.last_name
                        }
                    });
      
                    resolve(users[0].userName);
                })  
        
            } catch(err) {
                console.log("error " + err)
                reject("error")
        
            } finally {
                console.log("finally")
                
            }
        
          });

        /*
        const connection = db.getConnection(); 
        const queryString = "SELECT user_name FROM group_users WHERE group_id = ? AND active_member = '1'";
        console.log("calling");
    
        return new Promise(resolve => {
            const postResponse = {}
            const groupUsers = new Set();
    
            connection.query(queryString,[groupID], (err, rows) => {
                if (!err) {
                    rows.map((row) => {
                        groupUsers.add(row.user_name)  
                    });
                    postResponse.status = 200
                    postResponse.data = groupUsers;
                } else {
                    console.log("Failed to Select Users from this Group " + err)
                    //res.sendStatus(500)
                    postResponse.status = 500
                    postResponse.data = groupUsers;
                }	
                resolve(response);	
        
            })
        });	
        */
        /*
        //console.log("POST DATA!: " + postFrom + " " + postTo + " " + postCaption);

        const postResponse = {
            status: 200,
            postStatus: "success"
        }

        return postResponse;
        */
    }
}

/*
const pool = mysql.createPool({
    connectionLimit: 10,
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'shareshare'
})

//Functions: Get Connection
function getConnection() {
    return pool;
}
*/
module.exports = Post;


/*

            
 
            //Output Data
            const users = rows.map((row) => {
                return {
                    userName: row.user_name,
                    email: row.email,
                    firstName: row.first_name,
                    lastName: row.last_name
                }
            });

            res.json(rows);
            res.end()
 
class Post {
    constructor(postID) {
        this.postID = postID;

    }

    get postFrom() {
        return this.postFrom;
    }

    set postFrom(postFrom) {
        this.postFrom = postFrom;
    }    
   
}
 
module.exports = Post;
 
 

class Post {
    constructor(postInput) {
        this.post = postInput.post || 1;
        this.post_from = postInput.post_from || '';
        this.post_to = postInput.post || '';
        this.post_caption = postInput.post_caption || '';

    }

    get post() {
        return this.post;
    }



    get post_from () {
        return this.post_from;
    }

    set post_from(post_from) {
        this.post_from = post_from;
    }

    get post_caption () {
        return this.post_caption;
    }

    set post_caption(post_caption) {
        this.post_caption = post_caption;
    }

      //Method A1: Get User Info 
    getPostInfo() {
        console.log("Hiya Davey!");
    }
  

}

*/
//const Post = require('../../model/config-group');

//let currentPost = new Post(postInput);
 