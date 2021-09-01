//FUNCTIONS TABLE OF CONTENTS//
/*

FUNCTIONS A: All Functions Related to Posts
	1) Function A1: Make a Post
	2) Function A2: Get All Posts
	3) Function A3: Get All Posts to a Group
 	4) Function A4: Get All Posts to a User

*/ 

//GET ASYNC
async function getData() {
  return await axios.get('http://localhost:3003/posts');
  //return await axios.get('https://jsonplaceholder.typicode.com/posts');
}


(async () => {
	const response = await getData();
	console.log(response.data);
	
	const posts = response.data;

	for (let i = 0; i < posts.length; i++) {
		console.log(posts[i].postCaption);
	}
   //console.log(await getData())
})()


//getPosts();
const postCaption =  "Newy! Hi! sam and frodo do you wanna explore today?!";
//makePost(postCaption);

function getPosts() {
  axios({
     method: 'get',
     url: 'http://localhost:3003/posts'
   })
     .then(function (response) {
		 const posts = response.data.posts;
		 
		 console.log(posts);
		 //console.log(posts.length);

		for (let i = 0; i < posts.length; i++) {
			console.log(posts[i].postCaption);
		}
		//console.log(response.data);
		
		
	 })
     .catch(err => console.error(err));
	
}

function makePost(postCaption) {
	axios.post('http://localhost:3003/post/text', {
		
		masterSite: "kite",
		postType: "text",
		postFrom: "davey",
		postTo: 77,
		groupID: 77,
		listID: 0,
		postCaption: postCaption,   
		notificationMessage: "Posted a Message",  
		notificationType: "new_post_text",
		notificationLink: "http://localhost:3003/posts/group/77"  
	  })
	  .then(function (response) {
		console.log(response);
	  })
	  .catch(function (error) {
		console.log(error);
	  });
}


function makePostRequest() {
	axios.post('http://localhost:3003/learning', {
	  firstName: 'david',
	  lastName: 'Vas'
	})
	.then((response) => {
	  console.log(response);
	}, (error) => {
	  console.log(error);
	});
}





//APPENDIX
//Write
/*
window.onload = function() {
   document.getElementById("p1").innerHTML = "Hiya!";
}
*/




//console.log("Before");
//console.log(posts);
//console.log("After");


/*
function getPosts() {
  try {
    const response = axios.get('http://localhost:3003/posts');
    console.log(response.data);
	return response.data;
  } catch (error) {
    console.error(error);
  }
}

*/



//APPENDIX
//url: 'https://jsonplaceholder.typicode.com/posts'
//url: 'http://hellofour-env.eba-mymqvrea.us-west-2.elasticbeanstalk.com/posts'


//makePost() 


/*
fetch ('https://kite-master-api.herokuapp.com/posts', { method: 'get' })
//fetch ('https://jsonplaceholder.typicode.com/posts', { method: 'get' })
.then(res => res.json())
.then(data => console.log(data));
*/

//getPostsLearning();
	
//getText("https://dashboard.heroku.com/apps/kite-master-api");

/*
async function getText(file) {
	let responseObject = await fetch(file);
	console.log(responseObject);
	//let myText = await myObject.text();
	//document.getElementById("demo").innerHTML = myText;
}
	
	
	
//FUNCTIONS A: All Functions Related to Posts
//Function A1: Get All Posts
function getPosts() {
	
  axios({
     method: 'get',
     //url: 'http://localhost:3003/posts/all'
     //url: 'https://jsonplaceholder.typicode.com/posts'
     url: 'http://hellofour-env.eba-mymqvrea.us-west-2.elasticbeanstalk.com/posts'
   })
     .then(function (response) {
		 let posts = response.data;
		 console.log(posts.length);
		 for (let i = 0; i < posts.length; i++) {
			console.log(posts[i].post_caption);
		}
		console.log(response.data);
		console.log(posts);
		
	 })
     .catch(err => console.error(err));
	
}

//Function A2: Get Posts Learning
function getPostsLearning() {
  axios({
     method: 'GET',
     //url: 'https://kite-master-api.herokuapp.com/posts'
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
*/



 
/*

{
    "postType": "text",
    "postStatus": 1,
    "groupID": 77,
    "postFrom": "david",
    "postTo": "sam",
    "postCaption": "Hi sam wanna garden today again! The weather is perfect!"
}


*/