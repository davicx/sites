//FUNCTIONS TABLE OF CONTENTS//
/*

FUNCTIONS A: SEARCH
	1) Function A1: Search and Autocomplete for User 
	2) Function A2: Hide Autocomplete if User Clicks Outside It


*/

//Development Code Root
var CODE_ROOT = "../../functions/";


//FUNCTIONS A: SEARCH
//Function A1: Search and Autocomplete (Header) 
$(document).ready(function() {	
	$("#js-search").keyup(function(){
		var search_input 	= $("#js-search").val();
		var logged_in_user 	= $('input[name=logged-in-user]').val();	
		
		//console.log("JS " + search_input);
		//Clear Previous Search Results
		//$("#js-message-user-search").empty();
		
		//Fetch and Add New Results 
		$.post(CODE_ROOT + 'search.php', {logged_in_user: logged_in_user, search_input: search_input }, 
	
		function(data) {
			var search_results = JSON.parse(data);
			console.log(search_results);
		
		})	
	
	});
});	



/*
//Function A1: Search and Autocomplete (Header) 
$(document).ready(function() {	
	$("#js-search-TEMP").keyup(function(){
		var search_input 	= $("#js-search").val();
		var logged_in_user 	= $('input[name=logged-in-user]').val();	
		
		//console.log("JS " + search_input);
		//Clear Previous Search Results
		//$("#js-message-user-search").empty();
		
		//Fetch and Add New Results 
		$.post(CODE_ROOT + 'search.php', {logged_in_user: logged_in_user, search_input: search_input }, 
	
		function(data) {
			var search_results = JSON.parse(data);
			console.log(search_results);
		
		 
			var search_results_length = search_results.length;
			for (var i = 0; i < search_results_length; i++) {
				if (i === 5) { break; }
				var current_user_id = search_results[i].user_id;		
				var current_user_name = search_results[i].user_name;
				var current_user_image = search_results[i].user_image;
				var current_user_page_link = "messages.php?message_to=" + current_user_name;

				var outer_container_start_1 = '<div class = "search-individual-user">';
				var outer_link_start_2 = '<a href="' + current_user_page_link + '" class = "">';			
				var user_image = '<img src="../../user_uploads/user_image/' + current_user_image + '" alt="" class = "user-search-image">';					
				var user_name  = '<p class = "user-search-name ">' + current_user_name + '</p>';
				var outer_link_end_2 = '</a>';
				var outer_container_end_1 = '</div>';
				console.log(current_user_image);
				
				$("#js-message-user-search").append(outer_container_start_1 + outer_link_start_2 + user_image + user_name + outer_link_end_2 + outer_container_end_1);	

			}	
		 
		})	
	
	});
});	



//Function A2:  Autocomplete Users and Groups
$(document).ready(function() {	
	$("#js-search").keyup(function(){
		var search_input 	= $("#js-search").val();
		var logged_in_user 	= $('input[name=logged-in-user]').val();	
			
		if(search_input)	{
			//$("#js-auto-complete-output").show();	 
			
			$.post(CODE_ROOT + 'main.php', { search_input: search_input, logged_in_user: logged_in_user}, 
			
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

*/













