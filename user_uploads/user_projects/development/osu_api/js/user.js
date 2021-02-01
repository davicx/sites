//FUNCTIONS TABLE OF CONTENTS//
/*

FUNCTIONS A: USER RELATED
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
	6) Function B6: Request Password Update to New Password (Part 2)
	7) Function B7: Check Password Length 	
	8) Function B8: Check that both Passwords are the same	
	
FUNCTIONS C: SITE ACTIVITY	
	1) Function C1: Get New Group Posts
	2) Function C2: Update Group Posts to Seen
	3) Function C3: Get New Discussion Posts
	4) Function C4: Update Group Discussion to Seen
	5) Function C5: Get New File Activity
	6) Function C6: Update New File Activity to Seen

FUNCTIONS UI: USER INTERFACE 
	1) Function U1: Select View of Your Friends
	2) Function U2: Select View of All Site Users 

*/

//Development Code Root
var CODE_ROOT = "../../functions/";


//FUNCTIONS A: USER RELATED

//Function A1: Add a Friend
$(document).ready(function(){
	$(".js-add-friend").click(function(){
		var add_friend_id_full = $(this).attr('id');
		var splitParts;
		splitParts = add_friend_id_full.split("_");
		var add_friend_id = splitParts[1];	
		var logged_in_user = $('input[name=logged-in-user]').val();
		var master_site = $('input[name=master-site]').val();		
		
		$.post(CODE_ROOT + 'user.php', { add_friend_id: add_friend_id, logged_in_user: logged_in_user, master_site: master_site }, 
		
		function(data) {	
			console.log(data);
			$("#js-add-friend_" + add_friend_id).hide();
			$("#js-cancel-friend-request_" + add_friend_id).show();
			
			
		})			
	});
});


//Function A2: Cancel Pending Friend Request
$(document).ready(function(){
	$(".js-cancel-friend-request").click(function() {				
		var cancel_friend_request_id_full = $(this).attr('id');
		var splitParts;
		splitParts = cancel_friend_request_id_full.split("_");
		var cancel_friend_request_id = splitParts[1];	
		var logged_in_user = $('input[name=logged-in-user]').val();
		var master_site = $('input[name=master-site]').val();				
				
		$.post(CODE_ROOT + 'user.php', { cancel_friend_request_id: cancel_friend_request_id,  logged_in_user: logged_in_user, master_site: master_site}, 
		
		function(data) {		
			$("#js-cancel-friend-request_" + cancel_friend_request_id).hide();
			$("#js-add-friend_" + cancel_friend_request_id).show();
			//$("div#pending_" + cancel_request_id).hide();
			//$("button#request_canceled_" + cancel_request_id).show();
		})
	});
});


//Function A3: Remove a Friend
$(document).ready(function(){
	$(".js-remove-friend").click(function() {	
		var remove_friend_request_id_full = $(this).attr('id');
		var splitParts;
		splitParts = remove_friend_request_id_full.split("_");
		var remove_friend_id = splitParts[1];	
		var logged_in_user = $('input[name=logged-in-user]').val();
		var master_site = $('input[name=master-site]').val();			
	
		if (confirm('Are you sure you want to remove this friend?')) {
			$.post(CODE_ROOT + 'user.php', { remove_friend_id: remove_friend_id,  logged_in_user: logged_in_user}, 
			
			function(data) {
				$("#js-remove-friend_" + remove_friend_id).hide();
				$("#js-add-friend_" + remove_friend_id).show();
				//console.log(data);
			})
	
		} else {
			//Don't delete post 
		}	
	});
});


//Function A4: Accept Friend Request
$(document).ready(function(){
	$(".js-accept-friend-request").click(function(){
		var accept_friend_request_id_full = $(this).attr('id');
		var splitParts;
		splitParts = accept_friend_request_id_full.split("_");
		var accept_friend_request_id = splitParts[1];	
		var logged_in_user = $('input[name=logged-in-user]').val();
		var master_site = $('input[name=master-site]').val();				
			
		$.post(CODE_ROOT + 'user.php', { accept_friend_request_id: accept_friend_request_id, logged_in_user: logged_in_user, master_site: master_site }, 
	
		function(data) {
			
			//Lower Header Requests Down by One
			var current_header_count = $("#js-header-total-notice-activity").text();
			var current_header_count = parseInt(current_header_count);
			var updated_header_count = current_header_count - 1;
	 
			if(updated_header_count > 0) {
				$("#js-header-total-notice-activity").text(updated_header_count);			
				console.log(updated_header_count);
			} else {
				$("#js-header-total-notice-activity").text(0);		
			}

			//Lower Request Count Down by One 
			var current_request_count = $("#js-total-pending-requests-dropdown-menu").text();
			var current_request_count = parseInt(current_request_count);
			var updated_request_count = current_request_count - 1;
			if(updated_request_count > 0) {
				$("#js-total-pending-requests-dropdown-menu").text(updated_request_count);		
			} else {
				$("#js-total-pending-requests-dropdown-menu").text(0);					
			}
			
			$("#js-request-friend_" + accept_friend_request_id).hide();
			$("#js-accept-friend-request_" + accept_friend_request_id).hide();
			$("#js-decline-friend-request_" + accept_friend_request_id).hide();
			$("#js-remove-friend_" + accept_friend_request_id).show();
			console.log(accept_friend_request_id);

		})

	});
});


//Function A5: Decline Friend Request
$(document).ready(function(){
	$(".js-decline-friend-request").click(function(){
		var decline_friend_request_id_full = $(this).attr('id');
		var splitParts;
		splitParts = decline_friend_request_id_full.split("_");
		var decline_friend_request_id = splitParts[1];	
		var logged_in_user = $('input[name=logged-in-user]').val();
		var master_site = $('input[name=master-site]').val();				
			
		$.post(CODE_ROOT + 'user.php', { decline_friend_request_id: decline_friend_request_id, logged_in_user: logged_in_user, master_site: master_site }, 
	
		function(data) {
			
			//Lower Header Requests Down by One
			var current_header_count = $("#js-header-total-notice-activity").text();
			var current_header_count = parseInt(current_header_count);
			var updated_header_count = current_header_count - 1;
	 
			if(updated_header_count > 0) {
				$("#js-header-total-notice-activity").text(updated_header_count);			
				console.log(updated_header_count);
			} else {
				$("#js-header-total-notice-activity").text(0);	
				console.log(0);
			}

			//Lower Request Count Down by One 
			var current_request_count = $("#js-total-pending-requests-dropdown-menu").text();
			var current_request_count = parseInt(current_request_count);
			var updated_request_count = current_request_count - 1;
			if(updated_request_count > 0) {
				$("#js-total-pending-requests-dropdown-menu").text(updated_request_count);		
			} else {
				$("#js-total-pending-requests-dropdown-menu").text(0);		
	
			}

			$("#js-accept-friend-request_" + decline_friend_request_id).hide();
			$("#js-decline-friend-request_" + decline_friend_request_id).hide();
			$("#js-add-friend_" + decline_friend_request_id).show();			
		})
		
	});
});



//Function A6: Accept Group Request
$(document).ready(function(){
	$(".js-accept-group-request").click(function(){
		var accept_group_request_id_full = $(this).attr('id');
		var splitParts;
		splitParts = accept_group_request_id_full.split("_");
		var accept_group_request_id = splitParts[1];	
		var logged_in_user = $('input[name=logged-in-user]').val();
		var master_site = $('input[name=master-site]').val();				
		var sent_by = $("#js-pending-group-request-sent-by_" + accept_group_request_id).val();				
		var group_id = $("#js-pending-request-group-id_" + accept_group_request_id).val();				
		
		//console.log(accept_group_request_id + " " + logged_in_user + " " + sent_by + " " + group_id + " " + master_site);

		$.post(CODE_ROOT + 'user.php', { accept_group_request_id: accept_group_request_id, logged_in_user: logged_in_user, master_site: master_site, group_id: group_id, sent_by: sent_by }, 
	
		function(data) {
			location.reload(); 

		})		
	
	});
});
 
		
//Function A7: Decline Group Request
$(document).ready(function(){
	$(".js-decline-group-request").click(function(){
		var decline_group_request_id_full = $(this).attr('id');
		var splitParts;
		splitParts = decline_group_request_id_full.split("_");
		var decline_group_request_id = splitParts[1];	
		var logged_in_user = $('input[name=logged-in-user]').val();
		var master_site = $('input[name=master-site]').val();				
			
		var sent_by = $("#js-pending-request-sent-by_" + decline_group_request_id).val();				
		var group_id = $("#js-pending-request-group-id_" + decline_group_request_id).val();				
		
		//console.log(decline_group_request_id + " " + logged_in_user + " " + sent_by + " " + group_id + " " + master_site);		

		$.post(CODE_ROOT + 'user.php', { decline_group_request_id: decline_group_request_id, logged_in_user: logged_in_user, master_site: master_site, group_id: group_id, sent_by: sent_by }, 
	
		function(data) {
			$("#js-request_" + decline_group_request_id).hide();

			//Lower Header Requests Down by One
			var current_header_count = $("#js-header-total-notice-activity").text();
			var current_header_count = parseInt(current_header_count);
			var updated_header_count = current_header_count - 1;
	 
			if(updated_header_count > 0) {
				$("#js-header-total-notice-activity").text(updated_header_count);			
				console.log(updated_header_count);
			} else {
				$("#js-header-total-notice-activity").text(0);	
				console.log(0);
			}
		
			//Lower Request Count Down by One 
			var current_request_count = $("#js-total-pending-requests-dropdown-menu").text();
			var current_request_count = parseInt(current_request_count);
			var updated_request_count = current_request_count - 1;
			if(updated_request_count > 0) {
				$("#js-total-pending-requests-dropdown-menu").text(updated_request_count);		
			} else {
				$("#js-total-pending-requests-dropdown-menu").text(0);		
			}
			
		})	

	});
});


//FUNCTIONS B: USER ACCOUNT 	
//Function B1: Edit User Profile
//Part 1: Edit Profile 
$(document).ready(function() {
    $("#js-update-user-save").click(function(){
		
		//User Info Variables
		var update_user_info = 1;	
		var logged_in_user = $("#update-logged-in-user").val();
		var user_id = $("#update-user-hidden-id").val();
		
		var first_name = $("#js-update-first-name").val();
		var last_name = $("#js-update-last-name").val();
		var email = $("#js-update-email").val();
		var biography = $("#js-update-user-biography").val();
		var gender = $("#js-update-user-gender").val();
		var birthday = $("#js-update-user-birthday").val();
		console.log(first_name + " " + last_name + " " + email + " " + biography + " " +  user_id + " " + gender + " " +  birthday);
	
		//User Address Variables 
		var street_address_one = $("#update-address-line-one").val();
		var street_address_two = $("#update-address-line-two").val();
		var address_city = $("#update-address-city").val();
		var address_state = $("#update-address-state").val();
		var address_zip_code = $("#update-address-zip-code").val();
		var address_country = $("#update-address-country").val();
		console.log(street_address_one + " " + street_address_two + " " + address_city + " " + address_state + " " +  address_zip_code + " " + address_country);
			
		//User Clothing Size
		var user_shirt = $("#update-user-shirt").val();
		var user_sweater = $("#update-user-sweater").val();
		var user_coat = $("#update-user-coat").val();
		var user_jeans = $("#update-user-jeans").val();
		var user_pants = $("#update-user-pants").val();
		var user_dress_size = $("#update-user-dress-size").val();
		var user_shoes = $("#update-user-shoes").val();		
		var user_info = $("#update-user-info").val();	
		
		console.log(user_shirt + " " + user_sweater + " " + user_coat + " " + user_jeans + " " +  user_pants + " " + user_dress_size + " " +  user_shoes + " " + user_info);

		$.post(CODE_ROOT + 'user.php', { 
			
			//Biography Information
			update_user_info: update_user_info, logged_in_user: logged_in_user, first_name: first_name, last_name: last_name, email: email, biography: biography, user_id: user_id, gender: gender, birthday: birthday,  
			
			//Address Information 
			street_address_one: street_address_one, street_address_two: street_address_two, address_city: address_city, address_state: address_state, address_zip_code: address_zip_code, address_country: address_country,  
			
			//Clothing Information
			user_shirt: user_shirt, user_sweater: user_sweater, user_coat: user_coat, user_jeans: user_jeans, user_pants: user_pants, user_dress_size: user_dress_size, user_shoes: user_shoes, user_info: user_info 	
		}, 
		
		function(data) {	
			$("#js-update-profile-status").show();
			setTimeout( function() { 
				$("#js-update-profile-status").fadeOut( "slow" );
			}, 5000);		
			
			$("#upload-user-image").click();
			//e.preventDefault();
		})	
		
		//$("#upload-user-image").click();
	
    }); 
});

//Part 2: Cancel changes without save 
$(document).ready(function() {
    $("#cancel-user-save").click(function(){
		$('.uk-modal-close').click();
    }); 
});


//Function B2: Upload New User Image	


//Function B3: Delete User


//Function B4: Request Username  
$(document).ready(function(){
	$("#js-request-username-submit").click(function(){
		
		//Step 1: Get Email and Validate  
		var request_username_email = $("#js-request-username-input").val();
		var email_validation = validateEmail(request_username_email);
		var email_false = "false";
		console.log(email_validation);
		
		//Step 2: Handle Request to Reset Username 
		if(email_false.localeCompare(email_validation)) { 
			
			$.post(CODE_ROOT + 'user.php', { request_username_email: request_username_email }, 
			
			function(data) {						
				var outcome = data;
				
				//Success: Username found
				if(outcome == 1) {
					$("#js-request-username").hide();
					$("#js-request-username-submitted-success").show();

				//Error: Username was not found 
				} else {
					$("#js-request-username-not-found").show();
				}
				//
				//$("#js-request-username-submitted").show();
			})					

		//Step 3: Handle an Invalid Email
		} else {
			$("#js-request-username-invalid-email").show();			
		}

	});
});


//Function B5: Request Password Send Email (Part 1)
$(document).ready(function(){
	$("#js-reset-password-submit").click(function(){
		var reset_password_email = $('input[name=password-reset-email]').val();
		var password_reset_site_link = $('#js-password-reset-site-link').val();
		//var password_reset_username = $('input[name=password-reset-username]').val();
		
		//Step 1A: Email has at least one character 
		if (reset_password_email) {
			var email_validation = validateEmail(reset_password_email);
			var email_false = "false";
			 
			//Step 2A: Check if Email is Valid
			if(email_false.localeCompare(email_validation)) { 	
				
				//Step 3: Valid Email was entered Send Password 
				$.post(CODE_ROOT + 'user.php', { reset_password_email: reset_password_email, password_reset_site_link: password_reset_site_link}, 
				
				function(data) {	
					var password_update_status = 5;
					//console.log(data);
					/*
					0- default value
					1- username not found
					2- email found
					3- database error
					4- Error Sending Email 
					5- success
					*/
					//Set Email Send Message 
					if(password_update_status == 5) {
						var password_reset_message = '<p>If your email was found a recovery email was sent to your email account. </p><p> <p> The email may take 10 to 15 minutes to send. If you do not see it you can also check your junk mail folder. </p>';
					} else if(password_update_status == 1)  {
						var password_reset_message = '<p>If your email was found a recovery email was sent to your email account. </p><p> <p> The email may take 10 to 15 minutes to send. If you do not see it you can also check your junk mail folder. </p>';
					} else if (password_update_status == 3) {
						var password_reset_message = '<p>There was a problem resetting your password you can <a href="site_files/request_password.php" class = "login-error-message-link-text">try again</a> or email us at vasquezd@onid.orst.edu and we wil help get it fixed. </p>';
					} else if (password_update_status == 4) {
						var password_reset_message = '<p>There was a problem resetting your password you can <a href="site_files/request_password.php" class = "login-error-message-link-text">try again</a> or email us at vasquezd@onid.orst.edu and we wil help get it fixed. </p>';				
					} else {
						var password_reset_message = '<p>There was a problem resetting your password you can <a href="site_files/request_password.php" class = "login-error-message-link-text">try again</a> or email us at vasquezd@onid.orst.edu and we wil help get it fixed. </p>';
					}
					
					$("#js-password-request-submit-message").html(password_reset_message);
					$("#js-request-password").hide();
					$("#js-request-password-submitted").show();					
					
				})					
			
			//Step 2B: Email Not Valid
			} else {
				$("#js-request-password-empty-email-warning").hide();
				$("#js-request-password-invalid-email-warning").show();			
			}	

		//Step 1B: Email is empty				
		} else {
			$("#js-request-password-invalid-email-warning").hide();			
			$("#js-request-password-empty-email-warning").show();			
		}

	});
});


//Function B6: Request Password Update to New Password (Part 2)
$(document).ready(function(){
	$("#js-update-password").click(function(){
		var registration_password_one = $('input[name=password-reset-one]').val();
		var registration_password_two = $('input[name=password-reset-two]').val();
		var password_reset_key = $("#js-update-password-key").val();
		var password_reset_email = $("#js-update-password-email").val();
		 
		var password_comparison_outcome = registration_password_one.localeCompare(registration_password_two);
		var password_one_length = registration_password_one.length;
		var password_two_length = registration_password_two.length;

		//console.log(password_reset_one + " " + password_reset_two + " " + password_reset_username + " " + password_reset_email);

		//Step 1: Check if both fields are long enough and match
		if(password_one_length > 4 && password_two_length > 4 && password_comparison_outcome == 0) {

			//Step 2: Update Password
			$.post(CODE_ROOT + 'user.php', { 
				registration_password_one: registration_password_one, 
				registration_password_two: registration_password_two, 
				password_reset_key: password_reset_key, 
				password_reset_email: password_reset_email
			}, 
			
			function(data) {		
				console.log(data);
				
				var update_password_array = JSON.parse(data);
				var reset_password_outcome = update_password_array["reset_password_outcome"];	
				var reset_password_outcome_message = update_password_array["reset_password_outcome_message"];	
				
				//Outcome: Success
				if(reset_password_outcome == 1) {
					$("#js-create-new-password").hide();
					$("#js-create-new-password-success").show();

				//Outcome: Failure				
				} else {
					$("#js-create-new-password").hide();
					$("#js-create-new-password-failure").show();
				}
				
			})	
		
		//Error with two passwords
		} else {
			$("#js-update-password-error").show();			
		}

	});
});


//Function B7: Check Password Length 
$(document).ready(function(){
	$("#js-update-password-one").keyup(function(){
		var registration_password_one = $('input[name=password-reset-one]').val();
		var registration_password_two = $('input[name=password-reset-two]').val();
		var password_comparison_outcome = registration_password_one.localeCompare(registration_password_two);
		var password_one_length = registration_password_one.length;
		var password_two_length = registration_password_two.length;
		

		//Step 1: Check if both fields are long enough and match
		if(password_one_length > 4 && password_two_length > 4 && password_comparison_outcome == 0) {
			$("#js-update-password-one").removeClass("login-error-border").addClass("login-success-border");		
			$("#js-update-password-two").removeClass("login-error-border").addClass("login-success-border");				

		} else {
			$("#js-update-password-one").removeClass("login-success-border").addClass("login-error-border");	
			$("#js-update-password-two").removeClass("login-success-border").addClass("login-error-border");				
		}
		
		//Step 2: Remove borders if fields are empty
		if (!registration_password_one || !registration_password_two) {
			$("#js-update-password-one").removeClass("login-error-border");		
			$("#js-update-password-one").removeClass("login-success-border");		
			$("#js-update-password-two").removeClass("login-error-border");		
			$("#js-update-password-two").removeClass("login-success-border");			
		} 
		
	});
});


//Function B8: Check that both Passwords are the same
$(document).ready(function(){
	$("#js-update-password-two").keyup(function(){
		var registration_password_one = $('input[name=password-reset-one]').val();
		var registration_password_two = $('input[name=password-reset-two]').val();
		var password_comparison_outcome = registration_password_one.localeCompare(registration_password_two);
		var password_one_length = registration_password_one.length;
		var password_two_length = registration_password_two.length;
		
		if(password_one_length > 4 && password_two_length > 4 && password_comparison_outcome == 0) {
			$("#js-update-password-one").removeClass("login-error-border").addClass("login-success-border");		
			$("#js-update-password-two").removeClass("login-error-border").addClass("login-success-border");				
		} else {
			$("#js-update-password-one").removeClass("login-success-border").addClass("login-error-border");	
			$("#js-update-password-two").removeClass("login-success-border").addClass("login-error-border");					
		}
		
		//Step 2: Remove borders if fields are empty
		if (!registration_password_one || !registration_password_two) {
			$("#js-update-password-one").removeClass("login-error-border");		
			$("#js-update-password-one").removeClass("login-success-border");		
			$("#js-update-password-two").removeClass("login-error-border");		
			$("#js-update-password-two").removeClass("login-success-border");			
		} 
	});
});


//FUNCTIONS UI: USER INTERFACE 
//Function U1: Select View of Your Friends
$(document).ready(function(){
	$("#js-select-my-user-friends").click(function(){
		$(".js-select-user-friends-view").removeClass("user-friends-header-text-selected");
		$("#js-select-my-user-friends").addClass("user-friends-header-text-selected");
		$("#js-user-profile-all-users").hide();		
		$("#js-user-profile-my-friends").show();		
	});
});


//Function U2: Select View of All Site Users 
$(document).ready(function(){
	$("#js-select-all-site-users").click(function(){
		$(".js-select-user-friends-view").removeClass("user-friends-header-text-selected");
		$("#js-select-all-site-users").addClass("user-friends-header-text-selected");		
		$("#js-user-profile-my-friends").hide();
		$("#js-user-profile-all-users").show();		
	});
});

































