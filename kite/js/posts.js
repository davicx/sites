//FUNCTIONS TABLE OF CONTENTS//
/*

FUNCTIONS A: All Functions Related to Posts
	1) Function A1: Get All Posts
	2) Function A2:  
 	3) Function A3: 
	4) Function A4: 

*/ 
//makePost() 
//getPosts();
getPostsLearning();
	
//getText("https://dashboard.heroku.com/apps/kite-master-api");

async function getText(file) {
	let responseObject = await fetch(file);
	console.log(responseObject);
	//let myText = await myObject.text();
	//document.getElementById("demo").innerHTML = myText;
}
	
	
	
/*
// Example POST method implementation:
async function postData(url = '', data = {}) {
  // Default options are marked with *
  const response = await fetch(url, {
    method: 'POST', // *GET, POST, PUT, DELETE, etc.
    mode: 'cors', // no-cors, *cors, same-origin
    cache: 'no-cache', // *default, no-cache, reload, force-cache, only-if-cached
    credentials: 'same-origin', // include, *same-origin, omit
    headers: {
      'Content-Type': 'application/json'
      // 'Content-Type': 'application/x-www-form-urlencoded',
    },
    redirect: 'follow', // manual, *follow, error
    referrerPolicy: 'no-referrer', // no-referrer, *no-referrer-when-downgrade, origin, origin-when-cross-origin, same-origin, strict-origin, strict-origin-when-cross-origin, unsafe-url
    body: JSON.stringify(data) // body data type must match "Content-Type" header
  });
  return response.json(); // parses JSON response into native JavaScript objects
}

postData('https://example.com/answer', { answer: 42 })
  .then(data => {
    console.log(data); // JSON data parsed by `data.json()` call
  });
*/
	
	
//FUNCTIONS A: All Functions Related to Posts
//Function A1: Get All Posts
function getPosts() {
  axios({
     method: 'get',
     //url: 'http://localhost:3003/posts/all'
     //url: 'http://localhost:3003/posts/all'
     //url: 'http://localhost:3003/posts/all'
     //url: 'https://dashboard.heroku.com/apps/kite-master-api'
     url: 'https://dashboard.heroku.com/apps/kite-master-api'
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

//Function A2: Get Posts Learning
function getPostsLearning() {
  axios({
     method: 'GET',
     url: 'https://kite-master-api.herokuapp.com/posts'
   })
     .then(function (response) {
		 const posts = response.data;
		 console.log(posts);		
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