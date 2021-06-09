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

    

}

module.exports = Post;

//const Post = require('../../model/config-group');

//let currentPost = new Post(postInput);
 