<?php 

//GROUPS
/*
//FUNCTIONS TABLE OF CONTENTS//
FUNCTIONS A: All Functions Related to Group
	1) Function A1: Create Group 
	2) Function A2: Add Existing User to Group 
	3) Function A3: Leave Group 

FUNCTIONS C: Internal Functions
	1) Function C1: Internal Leave Group
	
FUNCTIONS D: Right Click  *no php code 
	1) Function D1: Right Click on Group 
	
*/


//LISTS
/*
FUNCTIONS A: Master List 
	1) Function A1: Create New List
	2) Function A2: Show Edit List Area 
	3) Function A3: Rename List 
	4) Function A4: Delete List
	5) Function A5: Leave List
	
FUNCTIONS B: Master List with Abilility to add and Remove Users (more Control) 
	1) Function B1: Add Existing User to View List 
	2) Function B2: Add Existing User to Own list 
	3) Function B3: Email User to View list 
	4) Function B4: Email User to Own list 
	5) Function B5: Remove User From List (They must only have viewing privilege) 
	6) Function B6: Make List Public	
    7) Function B7: Make List Private	
	8) Function B8: Remove User From List 

FUNCTIONS C: Internal Functions and External Code 
	1) Function C1: Delete List	 
	2) Function C2: Leave List  
	
FUNCTIONS D: External Code 
	1) Function D1: Right Click on Master list (Folder)
	2) Function D2: Right Click on Master list for Viewer (Folder)
	3) Function D3: Right Click on Default list (Folder)
	4) Function D4: Drag and Drop Code 	
*/
 

//MAIN
/*
FUNCTIONS A: AUTOCOMPLETE RELATED
	1) Function A1: Autocomplete 

FUNCTIONS B: All Global Functions
	1) Function B1: Validate Email	
*/

//NOTIFICATIONS
/*
FUNCTIONS A: NOTIFICATION RELATED
	1) Function A1: Update All Notifications to Seen
	2) Function A2: Update Single Notification to Seen
	3) Function A3: Delete Single Notification 
*/


//PAGINATION
//FUNCTIONS TABLE OF CONTENTS//
/*
FUNCTIONS A: File Related 
	1) Function A1: Trigger File Rename *no server code

*/

//POSTS
/*
FUNCTIONS A: All Functions Related to Making a Post
	1) Function A1: Post Text  
	2) Function A2: Post a Photo
	3) Function A3: Post a Video
	4) Function A4: Post an Article
	5) Function A5: Post a File 
	
FUNCTIONS B: All Functions Related to Post Actions 
	1) Function B1: Like a Post 
	2) Function B2: UnLike a Post	
	3) Function B3: Delete a Post  	
	4) Function B4: Edit Post Caption (Save New Caption) 

FUNCTIONS C: All Functions Related to Commenting on a Post 
	1) Function C1: Make a New Comment 
	2) Function C2: Edit a Comment
	3) Function C3: Delete a Comment 
*/ 


//REGISTER
/*
FUNCTIONS R: Registration and Login Functions
	1) Function R1: Check if Username is correct 
	2) Function R2: Check if Full Name is correct 
	3) *Function R3: Check if First Name is correct 
	4) *Function R4: Check if Last Name is correct 
	5) *Function R5: Check if Password is correct 
	6) Function R6: Check if Email is correct 
	7) Function R7: Register User 
	8) *Function R8: Register User with Email 
	9) *Function R9: Remove please fill in all fields if they are full
	10) *Function R0: Validate Email
*/	

//SEARCH
/*
FUNCTIONS A: AUTOCOMPLETE RELATED
	1) Function A1: Autocomplete 

*/


//UPLOAD

//USER
/*
FUNCTIONS A: All User Related Functions
	1) Function A1: Add a Friend
	2) Function A2: Cancel Pending Friend Request
	3) Function A3: Remove a Friend
	4) Function A4: Accept Friend Request
	5) Function A5: Decline Friend Request	
	6) Function A6: Accept Group Request
	7) Function A7: Decline Group Request
	
FUNCTIONS B: USER ACCOUNT 	
	1) Function B1: Edit User Profile
	2) Function B2: Upload New User Image	
	3) Function B3: Delete User
	4) Function B4: Request Username  
	5) Function B5: Request Password Send Email (Part 1)
	5) Function B5: Request Password Send Email (Part 1)
	6) Function B6: Request Password Update to New Password (Part 2)
	7) Function B7: Check Password Length *No PHP	
	8) Function B8: Check that both Passwords are the same *No PHP	
	
*/


//ACTIVITY
/*
FUNCTIONS A: ACTIVITY RELATED 

FUNCTIONS B: USER ACTION RELATED 
	1) Function B1: Update Notfication Icon to Clicked (by ID) 
	2) Function B2: Update Group Header Icon to Clicked (by ID) 
*/

//BOARDS
/*
FUNCTIONS A: All Functions Related to Boards
	1) Function A1: Create a Board 
	
*/

//FUNCTIONS A: All Functions Related to Boards
//Function A1: Create a Board 


//DISCUSSION
/*
*this uses the Posts.php class

FUNCTIONS A: All Functions Related to Discussion
	1) Function A1: Submit Discussion Post  
	
*/



//FILE
/*
FUNCTIONS A: File 
	1) Function A1: Select File 
	2) Function A2: Double Click File (Trigger Download)
	3) Function A3: Rename File (Handle UI)
	4) Function A4: Cancel File Rename (Handle UI)
	5) Function A5: Save New File Name
	6) Function A6: Delete File (from File Action)
	7) Function A7: Trigger File Download from File Action Area 

FUNCTIONS B: Upload Handling
	1) Function B1: Trigger Browse for File 
	2) Function B2: Trigger Upload File 
	3) Function B3: Listen for File Upload Button Click and Display File Name
	4) Function B4: Upload File (only server code)

FUNCTIONS C: Global File Functions   
	1) Function C1: Global Rename Folder 
	2) Function C2: Global Delete Folder 

FUNCTIONS D: Right Click, Dropzone Related and Drag and Drop  
	1) Function D1: File Right Click Code  
	
*/

//FOLDERS
/*
FUNCTIONS A: Create New Folder 
	1) Function A1: Show Create new Folder Area *no server code
	2) Function A2: Hide Create new Folder Area (Cancel) *no server code	
	3) Function A3: Save New Folder

FUNCTIONS B: Folder Related 
	1) Function B1: Select Folder *no server code
	2) Function B2: Double Click Folder (Open Folder) *no server code
	3) Function B3: Rename Folder *no server code
	4) Function B4: Cancel Rename Folder *no server code 
	5) Function B5: Save New Folder Name *no server code
	6) Function B6: Delete Folder *no server code 

FUNCTIONS C: Global Folder Functions   
	1) Function C1: Global Rename Folder 
	2) Function C2: Global Delete Folder 

FUNCTIONS D: Right Click, Dropzone Related and Drag and Drop  
	1) Function E1: File Right Click Code  
	
*/


/* FUNCTIONS 
FUNCTIONS A: Security 
	1) Function A1: Encypt with IV 
	2) Function A2: Decrypt with IV 
	3) Function A3: Encypt Item with Key 
	4) Function A4: Decypt Item with Key 
	5) Function A5: Create New IV
	6) Function A6: Create New Key
	7) Function A7: Secure Random Crypto
	8) Function A8: Create Token 
	
FUNCTIONS B: Type Conversion 
	1) Function B1: Convert String to Hex 
	2) Function B2: Convert Hex to String 
	
FUNCTIONS C: File Handling
	1) Function C1: Get File Type and return image 
	2) Function C2: Get File Size (MB) 
	3) Function C3: Format Data Bytes (MB) 
	4) Function C4: Get File Parent Folder 
	5) Function C5: Get Folder Breadcrumb 
	6) Function C6: Get File Folder Name  
	7) Function C7: Check that File is Valid and Can Be Downloaded  

FUNCTIONS D: Group and List Related 
	1) Function D1: Get List Privilege 
	2) Function D2: Get List Privilege (Boolean) 
	3) Function D3: Get List name
	4) Function D4: Create Default List 
	5) Function D5: Get Group Users 
	6) Function D6: Get all Group Id's that User belongs to 
	7) Function D7: Get all Board Id's that User belongs to
	8) Function D8: Get all Active Members of a Group by Group ID 
	9) Function D9: Get all Boards
	10) Function D10: Get Group Name
	11) Function D11: Get Posts from Boards (User's Boards)
	12) Function D12: Get Posts from Boards (Discover)
	
FUNCTIONS E: Analytics
	1) Function E1: Update Page Visit 
	2) Function E2: Update Icon Click 

FUNCTIONS F: Web Parsing
	1) Function F1: Get all Images from website
	2) Function F2: Get File Contents from URL (Entire Page)
	3) Function F3: Sort all images from a URL into an Associate Array that has the image size and the image URL
	4) Function F4: This function takes an associative array and saves array images to a server 
	5) Function F5: Get article text from meta tags from a URL 
	6) Function F6: Get Site Title
	7) Function F7: Get Site Favicon, save it and return name
	8) Function F8: Get a base domain from a full URL 
	9) Function F9: Determine where a video is from and get video code

FUNCTIONS G: User Related 
	1) Function G1: Create User
	2) Function G2: Get User Site Status 
	3) Function G3: Get UserID
	4) Function G4: Get UserName
	5) Function G5: Check if User is Active
	6) Function G6: Get image from a user 	
	7) Function G7: Check for valid UserName
	8) Function G8: Update Password
	9) Function G9: 
	10) Function G10: Convert array of usernames to user ids
	11) Function G11: Get User Image
	12) Function G12: Check if two users are Already Friends
 	13) Function G13: Get Friend Status 
 	14) Function G14: Get Friend Description 
 	15) Function G15: Get Users First Name or Return UserName
	16) Function G16: Check if email taken 
	17) Function G17: Check if username is taken 

FUNCTIONS H: Group Related 
	1) Function H1: Get All User Groups
	2) Function H2: Check if User has Default Group and Create if They Do Not *Implement on Page Header 
	3) Function H3: Get Default Group ID 
	4) Function H4: Remove Default Group from Users Group Array
	5) Function H5: Get Total of Groups that have some New Activity (for the Header)
	6) Function H6: Get Total Activity in All User Groups 
	
FUNCTIONS I: Filters and Data Handling 
	1) Function I1: Search String for word and return array of that word 
	2) Function I2: Compare if two images are the same 
	3) Function I3: Remove non images files from the string 
	4) Function I4: Check if string starts with 
	5) Function I5: Check if string ends with 
	6) Function I6: Get Path of file or link or folder (Site Specific)
	7) Function I7: Get File Type and return image 

FUNCTIONS J: Database Related  
	1) Function J1: Get User Status
	2) Function J2: Get the parent of a file or folder directory 
	3) Function J3: Get UserID
	4) Function J4: Get UserName

FUNCTIONS K: Notification Related 
	1) Function K1: Convert array of usernames to user ids
	2) Function K2: Set Logout time when user logs out of profile 
	3) Function K3: Get total unseen notifications 
	4) Function K4: Update Notification to Seen

FUNCTIONS M: Redirect Functions
	1) Function M1: Get Current Pages full Redirect
	
FUNCTIONS T: Time Related  
	1) Function T1: Get Number of Hours Between Two Timestamps 
	
FUNCTIONS P: Post Related 
	1) Function P1: Get Post Type 

FUNCTIONS R: Pending Request Related   
	1) Function R1: Get ID and Class based on Request Type  

FUNCTIONS: External Code

FUNCTIONS: Appendix

*/
