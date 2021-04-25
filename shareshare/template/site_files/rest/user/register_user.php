<?php 
//Include Page Header 
header('Content-Type: application/json');
require_once('../../../../functions/rest_header.php');
require_once('../../../../functions/classes/User.php');
require_once('../../../../functions/functions.php');

$json = file_get_contents('php://input');
$user_object = json_decode($json);

//STEP 1: Get All User Information 
$registration_user_name = $user_object->user_name;
$registration_full_name = $user_object->full_name;
$registration_email = $user_object->email;
$registration_password = $user_object->password;
$registration_user_key = $user_object->user_key;


if (filter_var($registration_email, FILTER_VALIDATE_EMAIL)) {
  $registration_email_valid = 1; 
} else {
  $registration_email_valid = 0; 
}

$email_is_required 			= 1; 
$full_name  				= $registration_full_name;
$full_name_array  			= explode(" ",$full_name);
$first_name 				= "";
$last_name 					= "";
$salt 						= time();
$total_errors               = 0;
  
//Set All Variables for Register Outcome Array (returned as JSON) 
$register_outcome_array['user_name'] = $registration_user_name ;
$register_outcome_array['full_name'] = $registration_full_name;	
$register_outcome_array['email'] = $registration_email;
$register_outcome_array['password'] = $registration_password;	
$register_outcome_array['salt'] = $salt;	
$register_outcome_array['final_password'] = $salt . $registration_password;	
$register_outcome_array['user_key'] = $registration_user_key;	
$register_outcome_array['username_failure'] = 0;
$register_outcome_array['user_name_message'] = "";	
$register_outcome_array['full_name_failure'] = 0;
$register_outcome_array['full_name_message'] = "";	
$register_outcome_array['password_failure'] = 0;
$register_outcome_array['password_message'] = "";		
$register_outcome_array['email_failure'] = 0;	
$register_outcome_array['email_message'] = "";
$register_outcome_array['master_success'] = 0;

//Parse out the Users First and Last name 
if(isset($full_name_array[0])) { $first_name = $full_name_array[0]; }
if(isset($full_name_array[1])) { $last_name = $full_name_array[1]; }	
if(isset($full_name_array[2])) { $last_name = ""; $last_name = $full_name_array[1] . " " . $full_name_array[2]; }


//STEP 2: Validate Username 
$register_user_name_array = checkValidUsername($registration_user_name);

//The checkValidUsername returns an associate array with 1 (success) or 0 (errors) for each test, and 1 or 0 for the total outcome 
$register_user_name_outcome = $register_user_name_array['register_user_name_outcome'];
$user_name_length_test = $register_user_name_array['user_name_length_test'];
$user_name_character_test = $register_user_name_array['user_name_character_test'];
$user_name_taken_test = $register_user_name_array['user_name_taken_test'];

if($register_user_name_outcome == 0) {
	$register_outcome_array['master_success'] = 0;
	$total_errors = $total_errors + 1;
	$register_outcome_array['username_failure'] = 1;
		
	//There are 3 tests for the username 1 means that this current username passed that test 0 means it failed 		
	if($user_name_length_test == 0) {
		$register_outcome_array['user_name_message'] = "The User Name must be at least 5 letters";	
	} else if ($user_name_character_test ==0) {
		$register_outcome_array['user_name_message'] = "The User Name must be letters, numbers or an undescore";	
	} else if ($user_name_taken_test ==0)  {
		$register_outcome_array['user_name_message'] = "Sorry! This User Name has been taken already";				
	} else {
		$register_outcome_array['user_name_message'] = "An unexpected error has occured please try again";	
	}
	
} else {
	$register_outcome_array['user_name_message'] = "This is a Valid Username~!";
}	


//STEP 3: Validate Full Name
if (strlen($registration_full_name ) < 3 ) {
	$total_errors = $total_errors + 1;	
	$register_outcome_array['master_success'] = 0;
	$register_outcome_array['full_name_failure'] = 1;	
	$register_outcome_array['full_name_message'] = "Your Name should be at least 3 letters";	
} else {
	$register_outcome_array['full_name_message'] = "This name works!";
}
	

//STEP 4: Validate Email Address 
if ($email_is_required == 1) {	
		
	//Check if Email is a Valid Email 
	if($registration_email_valid == 1) {
		$register_outcome_array['valid_email'] = "true";
		$email_is_taken = checkEmailTaken($registration_email);
		$register_outcome_array['email_taken'] = $email_is_taken;
		
		//Check if email is taken (1 is taken and 0 is available) 
		if($email_is_taken == 1) {
			$total_errors = $total_errors + 1;	
			$register_outcome_array['master_success'] = 0;
			$register_outcome_array['email_failure'] = 1;	
			$register_outcome_array['email_message'] = "This email has already been taken";				
		} else {			
			$register_outcome_array['email_failure'] = 0;	
			$register_outcome_array['email_message'] = "Email is OK";			
		}
		
	} else {
		$register_outcome_array['valid_email'] = "false";
		$total_errors = $total_errors + 1;
		$register_outcome_array['master_success'] = 0;
		$register_outcome_array['email_failure'] = 1;	
		$register_outcome_array['email_message'] = "Please enter a valid email";			
	}		
} 

//STEP 5: Validate Password 
if (strlen($registration_password ) < 5) {
	$total_errors = $total_errors + 1;	
	$register_outcome_array['master_success'] = 0;
	$register_outcome_array['password_failure'] = 1;		
	$register_outcome_array['password_message'] = "Your password should be at least 5 letters, numbers or characters";			
} else {
	$register_outcome_array['password_message'] = "This Password Works";	
}

//STEP 6: Register User 
if($total_errors == 0 ) {

	$register_outcome_array['master_success'] = 1;
	$Current_User = new User($registration_user_name);
	$Current_User->registerUserAPI($registration_user_name, $first_name, $last_name, $registration_email, $registration_password, $registration_user_key ); 	

} else {
	

}

//STEP 7: Return Value to Client to handle View Update 	
$register_outcome_array['total_errors'] = $total_errors;

echo json_encode($register_outcome_array);




//EXAMPLE: Simple Return 
/*
$registerUser->user_name = $registration_user_name;
$registerUser->full_name = $registration_full_name;
$registerUser->email = $registration_email;
$registerUser->password = $registration_password;
$registerUser->
user_key = $registration_user_key;

$registerUserJSON = json_encode($registerUser);		

echo $registerUserJSON;	
*/


//Appendix
/*

$user_key = $user_object->user_key;
//$email_taken = 0
$user_name_taken = 0;
$register_message = "AHHHH";


$registerUserReponse->user_name = $user_name;
$registerUserReponse->first_name = $first_name;
$registerUserReponse->last_name =  $last_name;
$registerUserReponse->email = $email;
$registerUserReponse->password = $password;
$registerUserReponse->salt = $salt;
$registerUserReponse->user_key = $user_key;
$registerUserReponse->user_name_taken = $user_name_taken;
$registerUserReponse->register_message = $register_message;

$registerUserReponseJSON = json_encode($registerUserReponse);		


//$Current_User = new User($user_name);
//$Current_User->registerUserAPI($user_name, $first_name, $last_name, $email, $password, $salt);

echo $registerUserReponseJSON;	
 */  
/*

$user_name = "vasquezd";
$email = "vasquezd@onid.orst.edu";

echo "EMAIL " . checkEmailAvailable($email) . "<br />";
echo "USERNAME " . checkUserNameAvailable($user_name);

$user_name = $user_object->user_name;
$first_name = $user_object->first_name;
$last_name = $user_object->last_name;
$email = $user_object->email;
$password = $user_object->password;
$salt = time();
$user_key = $user_object->user_key;
$email_taken = 0
$user_name_taken = 0;
$register_message = "AHHHH";
*/




//WORKS
/*
//Include Page Header 
header('Content-Type: application/json');
require_once('../../../../functions/rest_header.php');
require_once('../../../../functions/classes/User.php');


$json = file_get_contents('php://input');
$user_object = json_decode($json);

//STEP 1: Get All User Information 
$user_name = $user_object->user_name;
$first_name = $user_object->first_name;
$last_name = $user_object->last_name;
$email = $user_object->email;
$password = $user_object->password;
$salt = time();
$user_key = $user_object->user_key;
//$email_taken = 0
$user_name_taken = 0;
$register_message = "AHHHH";




$registerUserReponse->user_name = $user_name;
$registerUserReponse->first_name = $first_name;
$registerUserReponse->last_name =  $last_name;
$registerUserReponse->email = $email;
$registerUserReponse->password = $password;
$registerUserReponse->salt = $salt;
$registerUserReponse->user_key = $user_key;
$registerUserReponse->user_name_taken = $user_name_taken;
$registerUserReponse->register_message = $register_message;

$registerUserReponseJSON = json_encode($registerUserReponse);		


//$Current_User = new User($user_name);
//$Current_User->registerUserAPI($user_name, $first_name, $last_name, $email, $password, $salt);

echo $registerUserReponseJSON;	

*/


//BACKUP
/*
//Include Page Header 
header('Content-Type: application/json');
require_once('../../../../functions/rest_header.php');
require_once('../../../../functions/classes/User.php');

$json = file_get_contents('php://input');
$user_object = json_decode($json);


$responsePost->user_name = $user_object->user_name;
$responsePost->first_name = $user_object->user_key;
$responsePost->last_name =  $user_object->password;
$responsePost->full_user_name = "davey";
$responsePost->user_image = "davey";
$responsePost->user_creation_status = "Success";

$responsePostJSON = json_encode($responsePost);		

echo $responsePostJSON;	
*/


