//FUNCTIONS TABLE OF CONTENTS//
/*

FUNCTIONS A: All Functions Related to Posts
	1) Function A1: Get All Posts
	2) Function A2:  
 	3) Function A3: 
	4) Function A4: 

*/ 
//makePost() 
getPosts();
	
//FUNCTIONS A: All Functions Related to Posts
//Function A1: Get All Posts
function getPosts() {
  axios({
     method: 'get',
     //url: 'http://localhost:3003/posts/all'
     url: 'http://localhost:3003/posts/all'
     //url: 'http://localhost:3003/posts/group/77'
   })
     .then(function (response) {
		 const posts = response.data;
		 console.log(posts.length);
		 for (let i = 0; i < posts.length; i++) {
			console.log(posts[i].post_caption);

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
		postCaption: "Happy Saturday Afternoon!"	 
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