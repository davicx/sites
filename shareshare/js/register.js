//FUNCTIONS TABLE OF CONTENTS//
/*

FUNCTIONS R: Registration and Login Functions
	1) Function R1: Register User 
	2) Function R2: Check if Name is correct 
	3) Function R3: Check if Password is correct 
	4) Function R4: Check if Email is correct 
	5) Function R5: Register User
	6) Function R6: Register User with Email 
	7) Function R7: Remove please fill in all fields if they are full
	8) Function R8: Validate Email
	
*/

//Development Code Root
var CODE_ROOT = "../../functions/";

//Live Code Root 
//var CODE_ROOT = "../functions/";

//FUNCTIONS R: Registration and Login Functions
//Function R1: Register User
$(document).ready(function(){
	$("#js-register-user").click(function(){	
		
		//STEP 1: Get all User Input Data and Hide Errors 	
		var register_new_user = "true";
		var registration_user_name = $('input[name=register-user-name]').val();	
		var registration_full_name = $('input[name=register-full-name]').val();
		var register_email = $('input[name=register-email]').val();
		var registration_email_valid = validateEmail(register_email);
		var registration_password = $('input[name=register-password]').val();
		//var registration_email_input = $('input[name=register-email]').val();

		$("#js-registration-error-holder").hide();	

		$.post(CODE_ROOT + 'register.php', { 
			register_new_user: register_new_user,
			registration_user_name: registration_user_name,
			registration_full_name: registration_full_name,
			register_email: register_email,
			registration_email_valid: registration_email_valid,
			registration_password: registration_password
		}, 

		function(data) {	
			var user_name_test_array = JSON.parse(data);
			console.log(user_name_test_array);
			//console.log(user_name_test_array.email_failure);
			//console.log(user_name_test_array.email_message);

			/*
			vasquezd@onid.orst.edu
			$("#js-registration-errors").empty();
			
			//Add All Errors to the Error Field 
			if(user_name_test_array["username_failure"]==1) {
				$("#js-registration-errors").append('<p id = "js-registration-errors-username" class = "no-margin">' + user_name_test_array["user_name_message"] + '</p>');
			} 
			
			if (user_name_test_array["full_name_failure"]==1){
				$("#js-registration-errors").append('<p id = "js-registration-errors-name" class = "no-margin">' + user_name_test_array["full_name_message"] + "</p>");				
			} 
			
			if (user_name_test_array["email_failure"]==1){
				$("#js-registration-errors").append('<p id = "js-registration-errors-email" class = "no-margin">' + user_name_test_array["email_message"] + "</p>");				
			} 
			
			if (user_name_test_array["password_failure"]==1){
				var password_element = $('<p class = "no-margin">' + user_name_test_array["password_message"] + '</p>');
				$('#js-registration-errors').append(password_element);
				password_element.attr('id', 'js-registration-errors-password');				
			} 
			
			//Show the Error Holder 
			if(user_name_test_array["master_success"] == 0) {
				$("#js-registration-error-holder").show();
				 
			} else {
				$("#js-registration-error-holder").hide();			
			}
			*/
	
			$('input[name=register-user-name]').val(registration_user_name);	
			$('input[name=register-full-name]').val(registration_full_name);
			//$('input[name=register-email]').val(registration_email);
			$('input[name=register-password]').val(registration_password);	
			
		})	
    });
});			

/*
//Function R2: Check if Username is Correct 
//Part 1: Remove Registration Errors 
$(document).ready(function(){
	$("#js-registration-user-name").blur(function(){		
		var user_name_temporary = $('input[name=register-user-name]').val();	
		
		$.post(CODE_ROOT + 'register.php', { user_name_temporary: user_name_temporary }, 

		function(data) {	
			var user_name_test_array = JSON.parse(data);
			var user_name_length_test = user_name_test_array["user_name_length_test"];
			var user_name_character_test = user_name_test_array["user_name_character_test"];
			var user_name_taken_test = user_name_test_array["user_name_taken_test"];
			var register_user_name_outcome = user_name_test_array["register_user_name_outcome"];		
			console.log(user_name_test_array);
			//Outcome 3: Username Taken (ERROR)
			if (register_user_name_outcome == 0) {	
				//console.log(" USERNAME: Not OK");
		

			//Outcome 4: UserName Available (SUCCESS) 
			} else {
				$("#js-registration-errors-username").hide();
				//console.log("USERNAME: OK");
			
			} 										
		})	
		
	});
});

//Part 2: Remove Green or Red Check box as user types 
$(document).ready(function(){
	$("#js-registration-user-name").keyup(function(){		
		var user_name_temporary = $('input[name=register-user-name]').val();	
		
		$.post(CODE_ROOT + 'register.php', { user_name_temporary: user_name_temporary }, 

		function(data) {	
			var user_name_test_array = JSON.parse(data);
			var register_user_name_outcome = user_name_test_array["register_user_name_outcome"];		

			if (register_user_name_outcome == 0) {	
				$("#js-registration-user-name").removeClass("login-success-border").addClass("login-error-border");				
			} else {
				$("#js-registration-user-name").removeClass("login-error-border").addClass("login-success-border");				
			} 										
		})	
	});
});


//Function R3: Check if Full Name is Correct 
//Part 1: Remove Registration Errors 
$(document).ready(function(){
	$("#js-registration-full-name").blur(function(){	
		var registration_name = $('input[name=register-full-name]').val();
		var registration_name_length = registration_name.length;
		if(registration_name_length >= 4) {
			 
		} else {
			$("#js-registration-errors-name").hide();	 		
		}
	});
});

//Part 2: Remove Green or Red Check box as user types 
$(document).ready(function(){
	$("#js-registration-full-name").keyup(function(){		
		var registration_name = $('input[name=register-full-name]').val();
		var registration_name_length = registration_name.length;
		
		if(registration_name_length >= 4) {
			$("#js-registration-full-name").removeClass("login-error-border").addClass("login-success-border");
		} else {
			$("#js-registration-full-name").removeClass("login-success-border").addClass("login-error-border");	 		
		}	
	});
});


//Function R4: Check if Email is Valid and Correct 
//Part 1: Remove Registration Errors 
$(document).ready(function(){
	$("#js-registration-email").blur(function(){		
	
	
	});
});
*/
/*
	var registration_email_temporary = registration_email_temporary.trim();



	
	/*
	
	//Step 1A: Email has at least one character 
	if (registration_email_temporary) {
		var email_validation = validateEmail(registration_email_temporary);
		var email_false = "false";
	
		//Step 2A: Check if Email is Valid
		if(email_false.localeCompare(email_validation)) { 	
			


		
		//Step 2B: Email Not Valid
		} else {
			EMAIL_MESSAGE = "Sorry, this does not appear to be a valid email";
			//console.log("EMAIL: Not Valid");

		}	

	//Step 1B: Email is empty				
	} else {
		EMAIL_MESSAGE = "Please enter an email";
		//console.log("EMAIL: Empty");				
	}	
*/
/*
$(document).ready(function(){
	$("#js-registration-user-name").blur(function(){		
		var user_name_temporary = $('input[name=register-user-name]').val();	
		
		$.post(CODE_ROOT + 'register.php', { user_name_temporary: user_name_temporary }, 

		function(data) {	
			var user_name_test_array = JSON.parse(data);
			var user_name_length_test = user_name_test_array["user_name_length_test"];
			var user_name_character_test = user_name_test_array["user_name_character_test"];
			var user_name_taken_test = user_name_test_array["user_name_taken_test"];
			var register_user_name_outcome = user_name_test_array["register_user_name_outcome"];		
			console.log(user_name_test_array);
			//Outcome 3: Username Taken (ERROR)
			if (register_user_name_outcome == 0) {	
				//console.log(" USERNAME: Not OK");
		

			//Outcome 4: UserName Available (SUCCESS) 
			} else {
				$("#js-registration-errors-username").hide();
				//console.log("USERNAME: OK");
			
			} 										
		})	
		
	});
});
*/

/*
//Part 2: Remove Green or Red Check box as user types 
$(document).ready(function(){
	$("#js-registration-email").keyup(function(){		
		var registration_email = $('input[name=register-email]').val();
		registration_email = registration_email.trim();
		
		$.post(CODE_ROOT + 'register.php', { registration_email: registration_email }, 
		
		function(data) {						
			var register_email_outcome = data;
			console.log(register_email_outcome);
			//Email Available will be 1 and Taken is 0
			if(register_email_outcome = 1) {
				
				var email_validation = validateEmail(registration_email);
				//console.log(email_validation);
			} else {
				//console.log("EmailTaken");
				
			}
		})	
	});
});
*/

/*
//Function R5: Check if Password is correct 
//Part 1: Remove Registration Errors 
$(document).ready(function(){
	$("#js-registration-password").blur(function(){		
		var registration_password = $('input[name=register-password]').val();
		var registration_password_length = registration_password.length;
		//console.log(registration_password_length);
		if(registration_password_length >= 4) {
			
			//$("#js-registration-errors-password").show();	
			//console.log("Password OK");
		} else {
			$("#js-registration-errors-password").hide();
			//console.log("Too Short ");			
		}		
	});
});

//Part 2: Remove Green or Red Check box as user types 
$(document).ready(function(){
	$("#js-registration-password").keyup(function(){		
		var registration_password = $('input[name=register-password]').val();
		var registration_password_length = registration_password.length;
		
		if(registration_password_length >= 4) {
			$("#js-registration-password").removeClass("login-error-border").addClass("login-success-border");
			//$("#js-registration-errors-password").show();	
			//console.log("Password OK");
		} else {
			//$("#js-registration-errors-password").hide();	
			$("#js-registration-password").removeClass("login-success-border").addClass("login-error-border");	
			//console.log("Too Short ");			
		}		
	});
});


*/
//CLEAN
/*
function checkUsername(user_name_temporary) {

	//Check UserName
	$.post(CODE_ROOT + 'register.php', { user_name_temporary: user_name_temporary }, 

	function(data) {	
		var user_name_test_array = JSON.parse(data);
		var user_name_length_test = user_name_test_array["user_name_length_test"];
		var user_name_character_test = user_name_test_array["user_name_character_test"];
		var user_name_taken_test = user_name_test_array["user_name_taken_test"];
		var register_user_name_outcome = user_name_test_array["register_user_name_outcome"];		

		//Outcome 3: Username Taken (ERROR)
		if (register_user_name_outcome == 0) {	
			//console.log(" USERNAME: Not OK");
			return 0;

		//Outcome 4: UserName Available (SUCCESS) 
		} else {
			//console.log("USERNAME: OK");
			return 1;
		} 										
	})
};	



//Function R2: Check if Username is Correct 
function checkUsername(user_name_temporary) {

	//https://stackoverflow.com/questions/14220321/how-do-i-return-the-response-from-an-asynchronous-call
	//PART 1: User Name has characters 
	if (user_name_temporary) {
		user_name_temporary = user_name_temporary.trim();

		//Check UserName
		$.post(CODE_ROOT + 'register.php', { user_name_temporary: user_name_temporary }, 

		function(data) {	
			var user_name_test_array = JSON.parse(data);
			var user_name_length_test = user_name_test_array["user_name_length_test"];
			var user_name_character_test = user_name_test_array["user_name_character_test"];
			var user_name_taken_test = user_name_test_array["user_name_taken_test"];
			var register_user_name_outcome = user_name_test_array["register_user_name_outcome"];

			//Outcome 1: Username is to short (ERROR)
			if(user_name_length_test == 0) {
				//console.log("USERNAME: too short");
				VALID_USERNAME = 0;
				USERNAME_MESSAGE = "This username is to short"; 

			//Outcome 2: Username is Long Enough
			} else {						

				//Outcome 3: Username Taken (ERROR)
				if (register_user_name_outcome == 0) {	
					//console.log(" USERNAME: taken");
					VALID_USERNAME = 0;
					USERNAME_MESSAGE = "This username is taken already";

				//Outcome 4: UserName Available (SUCCESS) 
				} else {
					VALID_USERNAME = 1;
					USERNAME_MESSAGE = "Username OK";

					//console.log("USERNAME: available");
				} 										
			}
			
		})
		return temp_username_message;
	//PART 2: User Name is empty	
	} else {
		//console.log("empty");		
		USERNAME_MESSAGE = "Please enter a username";	
		VALID_USERNAME = 0;		
		var temp_username_valid = 0;
		var temp_username_message = "Please enter a username"; 		
			//return "two";	
	}	
	//var check_username_array = {username_valid_outcome: VALID_USERNAME, username_message_outcome: USERNAME_MESSAGE};
	//var check_username_array = {"username_outcome_valid" : temp_username_valid, "username_outcome_message" : temp_username_message};
	//return check_username_array;

}


//Function R3: Check if Full Name is Correct 
function checkFullname(registration_name) {
	
	var registration_name_length = registration_name.length;
	if(registration_name_length >= 4) {
		return 1;
	} else {
		return 0;		
	}
}		



//Function R4: Check if Email is Valid  and Correct 
function checkValidEmail(registration_email_temporary) {
	var registration_email_temporary = registration_email_temporary.trim();


	$.post(CODE_ROOT + 'register.php', { registration_email_temporary: registration_email_temporary }, 
	
	function(data) {						
		var register_email_outcome = data;
		
		//Email Taken (ERROR)
		if (register_email_outcome == 1) {	
			return 0;
			//console.log("EMAIL: Taken Already");
			
		//Email NOT Taken (SUCCESS)
		} else {
			return 1; 
			//console.log("EMAIL: Success! ");																						
		}
	})
	
	/*
	
	//Step 1A: Email has at least one character 
	if (registration_email_temporary) {
		var email_validation = validateEmail(registration_email_temporary);
		var email_false = "false";
	
		//Step 2A: Check if Email is Valid
		if(email_false.localeCompare(email_validation)) { 	
			


		
		//Step 2B: Email Not Valid
		} else {
			EMAIL_MESSAGE = "Sorry, this does not appear to be a valid email";
			//console.log("EMAIL: Not Valid");

		}	

	//Step 1B: Email is empty				
	} else {
		EMAIL_MESSAGE = "Please enter an email";
		//console.log("EMAIL: Empty");				
	}		
*/	
/*
}	
*/
/*
//Function R4: Check if Email is Valid  and Correct 
function checkValidEmail(registration_email_temporary) {
	var registration_email_temporary = registration_email_temporary.trim();
	VALID_EMAIL = 0;

	//Check if Form has all values filled in and remove fill in all values error message if it does 
	testForEmptyFormField();
	
	//Step 1A: Email has at least one character 
	if (registration_email_temporary) {
		var email_validation = validateEmail(registration_email_temporary);
		var email_false = "false";
	
		//Step 2A: Check if Email is Valid
		if(email_false.localeCompare(email_validation)) { 	
			

			//Step 3: Check if Email is Taken 
			$.post(CODE_ROOT + 'register.php', { registration_email_temporary: registration_email_temporary }, 
			
			function(data) {						
				var register_email_outcome = data;
				
				//Email Taken (ERROR)
				if (register_email_outcome == 1) {	
					EMAIL_MESSAGE = "Sorry, this email is already taken";
					//console.log("EMAIL: Taken Already");
					
				//Email NOT Taken (SUCCESS)
				} else {
					VALID_EMAIL = 1;
					EMAIL_MESSAGE = "Email OK";
					//console.log("EMAIL: Success! ");																						
				}
			})
		
		//Step 2B: Email Not Valid
		} else {
			EMAIL_MESSAGE = "Sorry, this does not appear to be a valid email";
			//console.log("EMAIL: Not Valid");

		}	

	//Step 1B: Email is empty				
	} else {
		EMAIL_MESSAGE = "Please enter an email";
		//console.log("EMAIL: Empty");				
	}			
}		
*/


//Function R5: Check if Password is correct 


/*
//Function R5: Check if Password is correct 
function checkPassword(registration_password) {
	VALID_PASSWORD = 0;

	var registration_password_length = registration_password.length;
	if(registration_password_length >= 4) {
		//console.log("Password OK");
		VALID_PASSWORD = 1;
		PASSWORD_MESSAGE = "Password OK";
	} else {
		PASSWORD_MESSAGE = "Your Password must be more then 4 Characters ";
		//console.log("Too Short ");			
	}		 
}		
*/
/*
//Function R3: Check if Name is correct 
$(document).ready(function(){
  $(".js-registration-field").blur(function(){
	  //console.log("field left");
  		var user_name = $('input[name=register-user-name]').val();	
		var registration_name = $('input[name=register-full-name]').val();
		var registration_email_temporary = $('input[name=register-email]').val();
		var registration_password = $('input[name=register-password]').val();
	  	checkUsername(user_name);
		checkFullname(registration_name);
		checkValidEmail(registration_email_temporary);
		checkPassword(registration_password); 
  });
});
*/
//Function R6: Validate Email (Regex) 
function validateEmail(email) {
    var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
}









/*	

			//console.log(user_name_test_array["username_failure"]);
			//console.log(user_name_test_array["user_name_message"]);
			//console.log(user_name_test_array["full_name_failure"]);
			//console.log(user_name_test_array["full_name_message"]);
			//console.log(user_name_test_array["password_failure"]);
			//console.log(user_name_test_array["password_message"]);
			//console.log(user_name_test_array["email_failure"]);
			//console.log(user_name_test_array["email_message"]);
			//console.log(user_name_test_array["master_success"]);

		
		//Outcome 3: Username Taken (ERROR)
			if (register_user_name_outcome == 0) {	
				console.log(" USERNAME: Not OK");
				return 0;

			//Outcome 4: UserName Available (SUCCESS) 
			} else {
				console.log("USERNAME: OK");
				return 1;
			} 		
 		console.log("Username: " + checkUsername(user_name));
 		console.log("Full Name: " + checkFullname(registration_name));
 		console.log("Email: " + checkValidEmail(registration_email));
 		console.log("Password: " + checkPassword(registration_password));
		$('input[name=register-user-name]').val(user_name);	
		$('input[name=register-full-name]').val(registration_name);
		$('input[name=register-email]').val(registration_email);
		$('input[name=register-password]').val(registration_password);	
	

		
//Register User	
$(document).ready(function(){
	$("#js-register-user").click(function(){	

		//Get all Input Registration Variables
		var register_new_user  		 	= "true";		
		var registration_user_name 	 	= $('input[name=register-user-name]').val();
		var registration_email			= $('input[name=register-email]').val();
		var registration_password    	= $('input[name=register-password]').val();
		var registration_full_name   	= $('input[name=register-full-name]').val();						
		var registration_hash			= $('input[name=registration-hash]').val();						
		var registration_new_user_email = $('input[name=registration-new-user-email]').val();						
		var registration_group_id   	= $('input[name=registration-group-id]').val();						
		var registration_list_id  	    = $('input[name=registration-list-id]').val();						
		var registration_invite_from    = $('input[name=registration-invite-from]').val();						
		var new_friend_invite_from      = $('input[name=new-friend-invite-from]').val();						
		var email_is_required  			= $("#js-email-is-required").val();						
		var email_is_required  			= parseInt(email_is_required);					
		var list_type   				= $('input[name=list-type]').val();						

		//STEP 1: Validate Email with Client Side Code 

		//Part 1: Email Required 
		if (email_is_required == 1) {
			//alert("REQUIRED " + email_is_required);	
			var email_validation = validateEmail(registration_email);
			var email_false = "false";		
			
			//Sucess
			if(email_false.localeCompare(email_validation)) {
				var email_validation_correct = 1;	
				
			//Error 
			} else {
				var email_validation_correct = 0;				
			}		
		
		//Part 2: Email NOT Required
		} else {
			//alert("NOT " + email_is_required);				
			var email_validation_correct = 1;	

		}
		
		//STEP 2: Create a Message if fields are missing 
		var missing_fields_message = "Please make sure you filled in";
		$("#js-registration-missing-required-field-message").text("");
		var missing_total_fields = 0;
		
		if (!registration_user_name) { 				
			//console.log("username");
			if(missing_total_fields == 0) {
				missing_fields_message = missing_fields_message + " your Username";
			} else {
				missing_fields_message = missing_fields_message + " and your Username";
			}
			$("#js-registration-missing-required-field-message").text(missing_fields_message);
			missing_total_fields = missing_total_fields + 1;
		}

		if (!registration_password) { 			
			//console.log("password");
			if(missing_total_fields == 0) {
				missing_fields_message = missing_fields_message + " a Password";
			} else {
				missing_fields_message = missing_fields_message + " and Password";
			}
			missing_total_fields = missing_total_fields + 1;
			$("#js-registration-missing-required-field-message").text(missing_fields_message);			
	
		}		
		
		if (!registration_email && email_is_required == 1) {
			//console.log("email");
			if(missing_total_fields == 0) {
				missing_fields_message = missing_fields_message + " an Email";
			} else {
				missing_fields_message = missing_fields_message + " and Email";
			}
			missing_total_fields = missing_total_fields + 1;	
			$("#js-registration-missing-required-field-message").text(missing_fields_message);			
		}
		
		if (!registration_full_name) {
			//console.log("name");	
			missing_total_fields = missing_total_fields + 1;
			
			if(missing_total_fields == 0) {
				missing_fields_message = missing_fields_message + " your Name";
			} else {
				missing_fields_message = missing_fields_message + " and your Name";
			}
			missing_total_fields = missing_total_fields + 1;
			$("#js-registration-missing-required-field-message").text(missing_fields_message);
			
		}
			
		//Show that a field is missing

		
		//STEP 3: A Field Value is Missing
		if (!registration_user_name) { 			
			//console.log("username");
			$("#js-registration-error-message-empty-field-text").show();
		} else if (!registration_email && email_is_required == 1) {
			//console.log("email");
			$("#js-registration-error-message-empty-field-text").show();
		} else if (!registration_password) {
			//console.log("password");			
			$("#js-registration-error-message-empty-field-text").show();
		} else if (!registration_full_name) {
			//console.log("name");	
			$("#js-registration-error-message-empty-field-text").show();
		
		//STEP 4: All Values are Filled Check Registration 
		} else {
			$("#js-registration-error-message-empty-field-text").hide();
				
			
			//Register User 
			$.post(CODE_ROOT + 'register.php', { 
				register_new_user: register_new_user, 
				registration_user_name: registration_user_name, 
				registration_email: registration_email, 
				registration_password: registration_password, 
				registration_full_name: registration_full_name, 
				email_validation_correct: email_validation_correct,
				registration_hash: registration_hash, 								
				registration_new_user_email: registration_new_user_email,					
				registration_group_id: registration_group_id,					
				registration_list_id: registration_list_id,	    				
				registration_invite_from: registration_invite_from,   	
				new_friend_invite_from: new_friend_invite_from,
				email_is_required: email_is_required,
				list_type: list_type				
			}, 
			
			function(data) {
				//console.log(data);
				
				var registration_outcome_array = JSON.parse(data);
				var registration_master_outcome = registration_outcome_array["master_success"];	
				
				//Handle Success
				if(registration_master_outcome == 1) {
					
					//Part 1: Make sure all error message are removed 
	
					//UserName
					$("#js-registration-user-name-error-output").text("");
					$("#js-registration-user-name").removeClass("login-error-border").addClass("login-success-border");
					
					//Full Name
					$("#js-registration-full-name").removeClass("login-error-border").addClass("login-success-border");
					$("#js-registration-full-name-message-output").text("");						
					
					//Email
					$("#js-registration-email").removeClass("login-error-border").addClass("login-success-border");
					$("#js-registration-email-message-output").text("");		
					
					//Password 
					$("#js-registration-password").removeClass("login-error-border").addClass("login-success-border");	
					$("#js-registration-password-message-output").text("");						
					
					//Part 2: Handle Registration 
					//console.log(data);
					$('input[name=register-user-name]').val("");
					$('input[name=register-email]').val("");
					$('input[name=register-password]').val("");
					$('input[name=register-full-name]').val("");						
					
					//$("#js-registration-area").hide();
					$("#js-registration-success").show();
				
				//Handle Failure 
				} else {
					
					//Get JSON call back function array with error information  
					var register_outcome_array = JSON.parse(data);
					var username_failure = register_outcome_array["username_failure"];
					var full_name_failure = register_outcome_array["full_name_failure"];
					var email_failure = register_outcome_array["email_failure"];		
					var email_taken_failure = register_outcome_array["email_taken_failure"];		
					var email_taken = register_outcome_array["email_taken"];		
					var password_failure = register_outcome_array["password_failure"];					
					
					//Username Error
					if(username_failure == 1) {
						var username_failure_message  = register_outcome_array["user_name_message"];			
						$("#js-registration-user-name").removeClass("login-success-border").addClass("login-error-border");	
						
						$("#js-registration-user-name-error-output").text(username_failure_message);
					} else {
						$("#js-registration-user-name-error-output").text("");
						$("#js-registration-user-name").removeClass("login-error-border").addClass("login-success-border");
					}
					
					//Full Name Error
					if(full_name_failure == 1) {
						var full_name_failure_message = register_outcome_array["full_name_message"];
						$("#js-registration-full-name").removeClass("login-success-border").addClass("login-error-border");	
						$("#js-registration-full-name-message-output").text(full_name_failure_message);						
						
						//js-registration-full-name-message-output
					} else {
						$("#js-registration-full-name").removeClass("login-error-border").addClass("login-success-border");
						$("#js-registration-full-name-message-output").text("");	
					}
					
					//Email Error
					if(email_failure == 1 || email_taken_failure == 1) {
						
						//Email Invalid
						if(email_failure == 1) {
							var email_failure_message = register_outcome_array["email_message"];
							$("#js-registration-email").removeClass("login-success-border").addClass("login-error-border");	
							$("#js-registration-email-message-output").text(email_failure_message);							
						} else {
							$("#js-registration-email-message-output").text("");	
						}
						
						//Email Taken
						if(email_taken_failure == 1) {
							var email_failure_taken_message = register_outcome_array["email_taken"];
							$("#js-registration-email").removeClass("login-success-border").addClass("login-error-border");	
							$("#js-registration-email-taken-message-output").text(email_failure_taken_message);							
						} else {
							$("#js-registration-email-taken-message-output").text("");	
						}
						
					} else {
						$("#js-registration-email").removeClass("login-error-border").addClass("login-success-border");
						$("#js-registration-email-message-output").text("");	
						$("#js-registration-email-taken-message-output").text("");	
					}

					//Password Error
					if(password_failure == 1) {
						var password_failure_message = register_outcome_array["password_message"];
						$("#js-registration-password").removeClass("login-success-border").addClass("login-error-border");
						$("#js-registration-password-message-output").text(password_failure_message);	
						
					} else {
						$("#js-registration-password").removeClass("login-error-border").addClass("login-success-border");	
						$("#js-registration-password-message-output").text("");
					}					

					//Put Password back into box 
					$("#js-registration-password").val(registration_password);
				}	
			
				//Put Password back into box 
				$("#js-registration-password").val(registration_password);  
				
			})
		}
		*/





//////////////////////////////////
//////////  APPENDIX   ///////////
//////////////////////////////////
/*
//Function R9: Remove please fill in all fields if they are full
function testForEmptyFormField() {

		var user_name_temporary = $('input[name=register-user-name]').val();	
		var registration_full_name_temporary = $('input[name=register-full-name]').val();
		var registration_password_temporary = $('input[name=register-password]').val();
		var registration_email_temporary = $('input[name=register-email]').val();
		var form_has_empty_value = 0;
		
		//Part 1: Test User Name Empty
		if (!user_name_temporary) { 
			var form_has_empty_value = form_has_empty_value + 1;
			//alert("user name");
		} 
			
		//Part 2: Test Registration Empty
		if (!registration_full_name_temporary) { 
			var form_has_empty_value = form_has_empty_value + 1;
			//alert("name");		
		} 
			
		//Part 3: Test Password Empty
		if (!registration_password_temporary) { 
			var form_has_empty_value = form_has_empty_value + 1;
			//alert("passowrd");	
		} 
			
		//Part 4: Test Email Empty
		if (!registration_email_temporary) { 
			var form_has_empty_value = form_has_empty_value + 1;
			//alert("email");
		} 
		
		if(form_has_empty_value == 0) {
			$('#js-registration-error-message-empty-field-text').hide();
		}
}

*/
/*
$(document).ready(function(){
	$("#js-registration-full-name").blur(function(){	
		alert();

	});
});
$(document).ready(function(){
	$("#js-registration-full-name").keyup(function(){	
		var registration_full_name_temporary = $('input[name=register-full-name]').val();

		//Check if Form has all values filled in and remove fill in all values error message if it does 
		testForEmptyFormField();
		
		//PART 1: User Name has characters 
		if (registration_full_name_temporary) {
			
			//Full Name is Correct 
			$.post(CODE_ROOT + 'register.php', { registration_full_name_temporary: registration_full_name_temporary }, 
			
			function(data) {
				var full_name_test = data;
				
				//ERROR
				if (full_name_test == 0) {
					$("#js-registration-full-name").removeClass("login-success-border").addClass("login-error-border");	
					//Error 1: User name is less then 5 characters 
					//Error 2: Check if username only uses correct characters 				
					//Error 3: Check if username is taken 
				
				//SUCCESS 
				} else {
					//Success 4: User Name is ok 
					$("#js-registration-full-name").removeClass("login-error-border").addClass("login-success-border");
				} 			
			})	

		//PART 2: Full Name is empty				
		} else {
			$("#js-registration-full-name").removeClass("login-error-border");		
			$("#js-registration-full-name").removeClass("login-success-border");				
		}	

	});
});
*/

//Function R3: Check if First Name is correct 
//*Currently, site only requires a full name and parses this to a first and last name (Function R2)

//Function R4: Check if Last Name is correct 
//*Currently, site only requires a full name and parses this to a first and last name (Function R2)




/*

		//console.log(registration_name);
		//console.log(registration_email_temporary);
		//console.log(registration_password);
		console.log("______________________");
		//STEP 3: Call Functions to Validate Data 
		//checkUsername(user_name);
		//checkFullname(registration_name);
		//checkValidEmail(registration_email_temporary);
		//checkPassword(registration_password); 
 		console.log(checkUsername(user_name));
		//console.log(registration_name);
		//console.log(registration_email_temporary);
		//console.log(registration_password); 
		//console.log(check_username_array);
		//console.log(check_username_array.username_outcome_message);

			
		//console.log("VALID_USERNAME " + VALID_USERNAME + " VALID_NAME " + VALID_NAME + " VALID_EMAIL " + VALID_EMAIL + " VALID_PASSWORD  " + VALID_USERNAME);
		//console.log(USERNAME_MESSAGE);
		//console.log(NAME_MESSAGE);
		//console.log(EMAIL_MESSAGE);
		//console.log(PASSWORD_MESSAGE);	
$(document).ready(function(){
	//$("#js-registration-user-name").keyup(function(){
	$("#js-registration-user-name").blur(function(){
		VALID_USERNAME = 0;
		var user_name_temporary = $('input[name=register-user-name]').val();	
		var user_name_temporary = user_name_temporary.trim();;	
	
		//PART 1: User Name has characters 
		if (user_name_temporary) {
			
			//Check UserName
			$.post(CODE_ROOT + 'register.php', { user_name_temporary: user_name_temporary }, 
			
			function(data) {	
				//console.log(data);
	
				var user_name_test_array = JSON.parse(data);
				//console.log(user_name_test_array);
				var user_name_length_test = user_name_test_array["user_name_length_test"];
				var user_name_character_test = user_name_test_array["user_name_character_test"];
				var user_name_taken_test = user_name_test_array["user_name_taken_test"];
				var register_user_name_outcome = user_name_test_array["register_user_name_outcome"];
				
				//Outcome 1: Username is to short (ERROR)
				if(user_name_length_test == 0) {
					console.log("USERNAME: too short");
					USERNAME_MESSAGE = "This username is to short"; 
					
				//Outcome 2: Username is Long Enough
				} else {						

					//Outcome 3: Username Taken (ERROR)
					if (register_user_name_outcome == 0) {	
						console.log(" USERNAME: taken");
						USERNAME_MESSAGE = "This username is taken already";
					//Outcome 4: UserName Available (SUCCESS) 
					} else {
						VALID_USERNAME = 1;
						console.log("USERNAME: available");
					} 										
				}
				
			})
			
		//PART 2: User Name is empty	
		} else {
			console.log("empty");		
			USERNAME_MESSAGE = "Please enter a username";			
		}		
	
	});
});
*/ 	

/*

//Function R3: Check if Name is correct 
$(document).ready(function(){
  //$("input#js-registration-full-name").keyup(function(){
  $("input#js-registration-full-name").blur(function(){
	  	VALID_NAME = 0;

		var registration_name = $('input[name=register-full-name]').val();
		var registration_name_length = registration_name.length;
		if(registration_name_length >= 4) {
			console.log("Name OK");
			VALID_NAME = 1;
		} else {
			console.log("Too Short ");			
		}
  });
});

//Function R4: Check if Email is correct 
$(document).ready(function(){
	$("#js-registration-email").blur(function(){
	//$("#js-registration-email").keyup(function(){
		var registration_email_temporary = $('input[name=register-email]').val();
		var registration_email_temporary = registration_email_temporary.trim();
		VALID_EMAIL = 0;

		//Check if Form has all values filled in and remove fill in all values error message if it does 
		testForEmptyFormField();
		
		//Step 1A: Email has at least one character 
		if (registration_email_temporary) {
			var email_validation = validateEmail(registration_email_temporary);
			var email_false = "false";
		
			//Step 2A: Check if Email is Valid
			if(email_false.localeCompare(email_validation)) { 	
				

				//Step 3: Check if Email is Taken 
				$.post(CODE_ROOT + 'register.php', { registration_email_temporary: registration_email_temporary }, 
				
				function(data) {						
					var register_email_outcome = data;
					
					//Email Taken (ERROR)
					if (register_email_outcome == 1) {			
						console.log("EMAIL: Taken Already");
						
					//Email NOT Taken (SUCCESS)
					} else {
						VALID_EMAIL = 1;
						console.log("EMAIL: Success! ");																						
					}
				})
			
			//Step 2B: Email Not Valid
			} else {
				console.log("EMAIL: Not Valid");
	
			}	

		//Step 1B: Email is empty				
		} else {
			console.log("EMAIL: Empty");				
		}			
		
	});
});

//Function R5: Check if Password is correct 
$(document).ready(function(){
	//$("#js-registration-password").keyup(function(){		
	$("#js-registration-password").blur(function(){		
	    VALID_PASSWORD = 0;
		var registration_password = $('input[name=register-password]').val();
 
		var registration_password_length = registration_password.length;
		if(registration_password_length >= 4) {
			console.log("Password OK");
			VALID_PASSWORD = 1;
		} else {
			console.log("Too Short ");			
		}		

	});
});

*/
