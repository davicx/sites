## Kite
 






### Code
#### Handling CORS Requests
```
postRouter.use(function(req, res, next) {
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept');
    next();
  });


postRouter.post("/learning", (req, res) => {
    console.log("hiya!");
    myReponse = {
      firstName: req.body.firstName,
      lastName: req.body.lastName
    }
    res.json({ response: myReponse });
}) 
```



















 
### Setup 
This project was built with Node.js, MongoDB and Express. 
You will need to install these before you can run the project.
I also will include the Mongo DB that I was using 

#### Install Express and Dependencies 
You need to run the following commands from a git or similar terminal
*npm init*

*npm install express* 
*npm install mongoose --save*
*npm install mocha --save-dev morgan --save-dev chai --save-dev chai-http --save-dev --save-dev nodemon*

#### Database Setup
The project uses MongoDB and there are two ways you can set this up.

**Option 1:**
The first is to use my existing database that I set up. The code for this is given below. 
```
const mongoose = require('mongoose');
mongoose.connect('mongodb+srv://modernHealth:GYRE1T1aarCPLDsi
@cluster0.qrzt6.mongodb.net/modern_health?retryWrites=true&w=majority', 
{useNewUrlParser: true, useUnifiedTopology: true});
const db = mongoose.connection;
```
User: modernHealth
PW: GYRE1T1aarCPLDsi

**Option 2:**
Create your own MongoDB database and use your own connection information in the app. 

#### Database Seeding
There is a seed file that will create all the data. 
To Run the seed File navigate to the seed folder in the application and run the following command in the terminal. 

*node ProgramSeeder.js*

Alternately if you use the existing MongoDB instance the data is there. The Seeder file will clear the database
so even if you want to load fresh data it will always empty the database if the emptyDocuments() function is called.


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
    ├── seed
    │   ├── ProgramSeeder.js  
    ├── test
    │   ├── app_test.js  
    ├── app.js (Entry Point into the Application) 
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

### Overall Thoughts 
Overall I felt like there was so much left to do. 
I actually wasted a lot of time setting the project up with PostgreSQL then switching to MongoDB.
I actually have a mostly working project with PostgreSQL. 
I switched to MongoDB because I felt that Sequelize was making it a little to confusing. 

Looking back I should have just stayed with PostgreSQL and Sequelize since I had put so much time into that stack.
I also felt that I would have preferred working with the data in a Relational Format since the Mongoose models got pretty deep (Program -> Section -> Activity) 

#### Navigating the API
For the part about navigating across sections I would plan to use the front end to achieve this. 
If you go to a Program like the "Leadership Development Program " the model will include all the section data, the current page and the total sections. 

My plan for navigating would to use a framework like React and create a Section Component.
As you navigate between sections the front end would update the view while keeping track of your current page and making sure you were not at the start or end.
To prevent wasted resources the Program Model just returns a link to any images or resources. 
This way you could load all the resources at once or load them for each section as it is navigated to. 

#### Testing the API 
I was running low on time so the tests are very basic. 
I really enjoy writing thorough tests and these are much to basic for a Production Level App. 

### Questions
Please feel free to reach out if there are any issues
vasquezd@oregonstate.edu

 

