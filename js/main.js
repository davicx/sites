//FUNCTIONS TABLE OF CONTENTS//
/*

FUNCTIONS A: AUTOCOMPLETE RELATED
	1) Function A1: Autocomplete 
	2) Function A2: Hide Autocomplete if User Clicks Outside It

FUNCTIONS B: All Global Functions
	1) Function B1: Validate Email
	2) Function B2: Validate URL
	3) Function B3: Trim White Space from String 	
	
FUNCTIONS C: Pagination 

FUNCTIONS UI: All User Interface Code 

*/

//Development Code Root
var CODE_ROOT = "../../functions/";



//FUNCTIONS A:  RELATED
/*
Key for Returned Data (Adding more SQL queries can expand on what is found by autocomplete)
_u = user
_g = group
*/

//Function A1:  Autocomplete Users and Groups
$(document).ready(function() {	
	$("#js-auto-complete").keyup(function(){
		var auto_complete_input_u_g = $("#js-auto-complete").val();
		var logged_in_user 	 	= $('input[name=logged-in-user]').val();	
			
		if(auto_complete_input_u_g)	{
			$("#js-auto-complete-output").show();	 
			
			$.post(CODE_ROOT + 'main.php', { auto_complete_input_u_g: auto_complete_input_u_g, logged_in_user: logged_in_user}, 
			
			function(data) {		

				//Empty Previous Results 
				$("#js-auto-complete-output-data").empty();
				
				var auto_complete_output = JSON.parse(data);
	
				//Parse Output Array and loop through the Array of JSON data 
				var auto_complete_output_length = auto_complete_output.length;
				
				
				for (var i = 0; i < auto_complete_output_length; i++) {
					if (i === 5) { break; }
					var current_result_type 		= auto_complete_output[i].type;
					var current_result_page_link    = auto_complete_output[i].page_link;
					var current_result_user_image   = auto_complete_output[i].user_image;
					var current_result_user_name    = auto_complete_output[i].user_name;

					//Create HTML to Append
					var outer_container_start_1 = '<div class = " auto-complete-item-holder">';
					var outer_link_start_2 = '<a href="' + current_result_page_link + '" class = "">';
					var user_image = '<div class = "auto-complete-user-image-holder"><img src="../../user_uploads/user_image/' + current_result_user_image + '" alt="" class = "auto-complete-user-image"></div>';					
					var user_name  = '<div class = "auto-complete-user-name-holder"><div class = "auto-complete-user-name-text-holder"><p class = "auto-complete-user-name-text">' + current_result_user_name + '</p></div></div>';
					var outer_link_end_2 = '</a>';
					var outer_container_end_1 = '</div>';
					
					$("#js-auto-complete-output-data").append(outer_container_start_1 + outer_link_start_2 + user_image + user_name + outer_link_end_2 + outer_container_end_1);		
				}

			})
		}
		
	});
});	

		
	
//Function A2: Hide Autocomplete if User Clicks Outside It
$(document).mouseup(function(e) {
    var container = $("#js-auto-complete-output");

    // if the target of the click isn't the container nor a descendant of the container
    if (!container.is(e.target) && container.has(e.target).length === 0) {
        container.hide();
    }
	
});

//FUNCTIONS B: All Global Functions
//Function B1: Validate Email
function validateEmail(email) {
    var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
}

//Function B2: Validate URL
function validateURL(textval) {
  var urlregex = new RegExp("^(http:\/\/www.|https:\/\/www.|ftp:\/\/www.|www.){1}([0-9A-Za-z]+\.)");
	
	return urlregex.test(textval);
  
}

//Function B3: Trim White Space from String 
function trimString(str) {
	str = str.replace(/^\s+/, '');
	for (var i = str.length - 1; i >= 0; i--) {
		if (/\S/.test(str.charAt(i))) {
			str = str.substring(0, i + 1);
			break;
		}
	}
	return str;
}






//FUNCTIONS UI: All User Interface Code 
var IMAGE_ROOT = "../../images/";
//../../images/header/logo_3.png

$(document).ready(function() {	
	$("#js-small-post-view")
		.mouseenter(function() {
			//console.log("hove");
			//js-small-post-view
			// $('#js-small-post-view').attr('src','../../images/icons/header/logo_3.png');
		})
		.mouseleave(function() {
			//console.log("leave");
			//js-small-post-view	
			//$('#js-small-post-view').attr('src','../../images/icons/header/logo_3.png');			
	});
});	


$(document).ready(function() {	
	$("#js-small-post-view")
		.mouseenter(function() {
			//console.log("hove");
			//$('#js-small-post-view').attr('src','../../images/icons/header/posts_large_hover.png');
		})
		.mouseleave(function() { 
			//console.log("leave"); 
			//$('#js-small-post-view').attr('src','../../images/icons/header/posts_large.png');						
			//$('#js-small-post-view').attr('src','../../images/icons/header/posts_large.png');						
	});
});	





//
//js-small-post-view





























