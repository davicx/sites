//FUNCTIONS TABLE OF CONTENTS//
/*

FUNCTIONS A: All Functions Related to Posts
	1) Function A1: Get All Posts
	2) Function A2:  
 	3) Function A3: 
	4) Function A4: 

*/ 

getPosts();


	
//FUNCTIONS A: All Functions Related to Posts
//Function A1: Get All Posts
function getPosts() {
  axios({
     method: 'get',
     //url: 'http://localhost:3003/posts/all'
     url: 'http://localhost:3003/posts/group/77'
   })
     .then(function (response) {
		 const posts = response.data;
		 var post = "";
		 for (let i = 0; i < 1; i++) {
			console.log(posts[i].post_caption);
			//post = '<p>' + posts[i].post_caption + '</p>;
			//document.getElementById("posts").innerHTML = post;

			//let node = document.getElementById('posts');
			//node.innerHTML('<p>' + posts[i].post_caption + '</p>');
		}
		
	 })
     .catch(err => console.error(err));
}



//FUNCTIONS A: All Functions Related to Posts
//Function A1: New Text Post
function makePost() {
  axios({
     method: 'post',
     url: 'http://localhost:3003/new_post',
	 data: {
	    postType: "text",
		postStatus: 1,
		groupID: 77,
		postFrom: "david",
		postTo: "sam",
		postCaption: "This is new! Hi sam wanna garden today again! The weather is perfect!"	 
	 }
   })
     .then(res => console.log(res))
     .catch(err => console.error(err));
}


 

 
/*

{
    "postType": "text",
    "postStatus": 1,
    "groupID": 77,
    "postFrom": "david",
    "postTo": "sam",
    "postCaption": "Hi sam wanna garden today again! The weather is perfect!"
}



//GET ROUTES
//Route 1: Get a Single Post by ID
//Route 2: Get all Posts to a User 
//Route 3: Get all Posts to a Group 
//Route 4: Get all Posts 
//POST ROUTES
//Route 5: Make a Post 

*/