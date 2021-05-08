## My App, yay!
My fun app to do things 
 
### Setup 
This project was built with Node.js, MySQL and Express. 
You will need to install these before you can run the project.

#### Install Express and Dependencies 
You need to run the following commands from a git or similar terminal
npm init

npm install express  
npm install mysql 
npm install morgan --save-dev nodemon --save-dev 
npm install chai --save-dev mocha --save-dev chai-http --save-dev 


#### Database Setup



### Project Structure

    .
    ├── ...
    ├── models	                   
    │   ├── Program.js               
    │   ├── Section.js              
    │   ├── Activity.js                    
    ├── node_modules							 
    ├── routes
    │   ├── program.js         
    ├── controllers
    │   ├──  
    ├── test
    │   ├── app_test.js  
    ├── app.js  
    ├── package.json
    ├── README.MD
    └── ...
	
	
### Running the Application
Hopefully everything was set up ok. If it is you can transfer the project files over from this project.
Or run this project directly. You can start the Dev Server by running:

*nodemon app.js*

The program is set up to run locally on port 3003. 

#### API Routes
This is the API you would call to get all the programs.

ROUTE 1: Get all Programs. 
http://localhost:3003/api/programs

ROUTE 2: Get a Program based on its input ID.
http://localhost:3003/api/programs/program_id
http://localhost:3003/api/programs/1

ROUTE 3: Find an Individual Section.
http://localhost:3003/api/programs/program_id/section/section_id
http://localhost:3003/api/programs/1/section/3


### Testing the Application
To run the tests you should navigate to the project root folder (the folder with App.js) 
From here you can run the following command to execute four tests: 

*npm run test*



