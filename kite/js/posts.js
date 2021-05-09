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
     url: 'http://localhost:3003/posts/all'
   })
     .then(function (response) {
		console.log(response.data[0]);
		console.log(response.data[1]);
		
	 })
     .catch(err => console.error(err));
}


//FUNCTIONS A: All Functions Related to Posts
//Function A1: New Text Post
function makePost() {
  axios({
     method: 'post',
     url: 'http://localhost:3003/temp',
	 data: {
	    postType: "text",
		postStatus: 1,
		groupID: 77,
		postFrom: "david",
		postTo: "sam",
		postCaption: "Hi sam wanna garden today again! The weather is perfect!"	 
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