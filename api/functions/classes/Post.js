
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
        console.log("Post " + this.postID + " " + postFrom + " " + postTo);
    }

    //Method A2: Get User Info 
    getPostCaption()  {
        console.log("The caption! " + this.postCaption);
        return this.postCaption;
    }
}

module.exports = Post;
/*
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
*/
module.exports = Post;

/*

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
 