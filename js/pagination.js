//FUNCTIONS TABLE OF CONTENTS//
/*

FUNCTIONS A: PAGINATION RELATED
	1) Function A1: Pagination 
	

//Development Code Root
var CODE_ROOT = "../../functions/";


*/

var CODE_ROOT = "../../functions/";

//Function A1: 
var count = 0;

$(window).scroll(function(){
	if  ($(window).scrollTop() == $(document).height() - $(window).height()){

		var fetch_records = "true";
		var records_to_display = 3;
		var logged_in_user = $('input[name=logged-in-user]').val();
		var current_post_count = $("#js-current-post-list").val();
		current_post_count = parseInt(current_post_count);
		
		$.post(CODE_ROOT + 'pagination.php', { fetch_records: fetch_records, logged_in_user: logged_in_user, current_post_count: current_post_count}, 

		function(data) {
			//console.log(data);
			
			//WORKING PAGINATION 
			var user_name_test_array = JSON.parse(data);
			
			//Pagination Data
			all_posts_length = user_name_test_array.length;

			for (i = 0; i < all_posts_length; i++) {
				var post_id= user_name_test_array[i].post_id;
				var post_caption = user_name_test_array[i].post_caption;
				var post_type = user_name_test_array[i].post_type;
				console.log(post_id + " " + post_caption + " " + post_type);
			}
			

		
			//$("#js-load-more").append('<div class = "poste"><p >Bottom ' + ' Post Count: ' + data + ' ' + count + '</p></div>');
			$("#js-load-more").append('<div class = "poste"><p >Bottom ' + ' Post Count: ' + count + '</p></div>');
			count = count + 1;

			$("#js-load-more").append('<div class = "poste"><p >Bottom ' + count + '</p></div>');
			count = count + 1;	

			$("#js-load-more").append('<div class = "poste"><p >Bottom ' + count + '</p></div>');	
			count = count + 1;	
			current_post_count = current_post_count + records_to_display;
			$("#js-current-post-list").val(current_post_count);
			
			console.log("Current Post: " + current_post_count);
			

		})
	 
	}
}); 
			
			/*
				var user_name_test_array = JSON.parse(data);
				console.log(user_name_test_array);
				var user_name_length_test = user_name_test_array["user_name_length_test"];
				var user_name_character_test = user_name_test_array["user_name_character_test"];
				var user_name_taken_test = user_name_test_array["user_name_taken_test"];
				var register_user_name_outcome = user_name_test_array["register_user_name_outcome"];
				
			setTimeout(
				function() {

					$("#js-load-more").append('<div class = "poste"><p >Bottom ' + ' Post Count: ' + data + ' ' + count + '</p></div>');
					count = count + 1;

					$("#js-load-more").append('<div class = "poste"><p >Bottom ' + count + '</p></div>');
					count = count + 1;	

					$("#js-load-more").append('<div class = "poste"><p >Bottom ' + count + '</p></div>');
					count = count + 1;	
					$("#js-current-post-list").val(output);
			  }, 1000);
				*/
/*
$.post(CODE_ROOT + 'main.php', { auto_complete_input_u_g: auto_complete_input_u_g, logged_in_user: logged_in_user}, 

function(data) {		

	//Empty Previous Results 
	$("#js-auto-complete-output-data").empty();
	
	var auto_complete_output = JSON.parse(data);

	//Parse Output Array and loop through the Array of JSON data 
	var auto_complete_output_length = auto_complete_output.length;
	
})

*/