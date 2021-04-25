<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://apis.google.com/js/api.js" type="text/javascript"></script>

<script>
/*
$(document).ready(function(){
    //$("button").click(function(){
		
		//EXAMPLE 3: User JSON 
        $.getJSON("rest_api.php", function(result){
            //$.each(result, function(i, field){
            //   $("div").append(field + " ");
            //});
			//alert(result.length)

			var articles = result;
			$(result.articles).each(function(index, value) {
				console.log(value.name);
				
				//$( "<img>" ).attr( "src", "images\ /" + value.name ).appendTo( "#images" );
				$('<p id = "" class = "test">' + value.name + ' </p>').appendTo( "#images" );
			});
			//console.log(articles);
		});
	
		//EXAMPLE 2: Using AJAX
		/*
		$.ajax({
			url: 'rest_api.php',
			dataType: 'json',
			type: 'get',
			cache: true,
			success: function(data) {
				//console.log(data);
				$(data.articles).each(function(index, value) {
					console.log(value.name);
				});
				
			}
			
			
		});
		*/
	

			//var users_temp = JSON.parse(result);
			//console.log(users_temp);
	
				//Learning 5: 
			//Part 1: Fetch Full Array of All Users 
			/*
			$.each(result, function(i, field){
                console.log("new user ");
				//console.log(result);
				//Part 2: Loop Through all the properties of the user
				$.each(field, function(property, value) {
					console.log(property + " " + value);
					//console.log(value);
				});		
				
				
				var current_user = i;
				//console.log(current_user);
            });
			*/

			
			//Example 3:
			//User One
			
			//console.log(data.user_one.user_image); 
			//console.log(data.user_one.first_name); 
			
			//User Two
			//console.log(data.user_two.username); 
			//console.log(data.user_two.user_image); 
			//console.log(data.user_two.first_name); 			
			
			//console.log(users);
			//Set Variables
			/*
			var user_name = data.user_one.username;	
			var user_image = data.user_one.user_image;	
			var first_name = data.user_one.first_name;	
			
			//Set in DOM 
			$("#js-user-name").text(user_name);	
			$("#js-image-name").text(user_image);	
			$("#js-first-name").text(first_name);	
			*/
			//console.log(users);
			
			//Learning 3: Loop Through Array

			/*
			var user_array = result;
			var user_name = user_array["username"];	
			var user_image = user_array["user_image"];	
			var first_name = user_array["first_name"];	
			$("#js-first-name").text(first_name);	
			*/
			/*
			$users['user_one'] = array("username"=>"vasquezd", "user_image"=>"david.png", "first_name"=>"david");
			$users['user_two'] = array("username"=>"vasquezm", "user_image"=>"matt.png", "first_name"=>"matt");
			*/			
			/*
        //}); 		
});
*/

$(document).ready(function(){
	//$(".test").click(function(){
	//$( ".test" ).on( "click", function() {			
	$('body').on('click', 'p.test', function() {	
		var post_full_id = $(this).attr('id');
		alert(post_full_id);
    });
});


/*
$(document).ready(function(){
	$.getJSON("rest_api.php", function(result){

		var articles = result;
		
		$(result.articles).each(function(index, value) {
			console.log(value.name);
			//$( "<img>" ).attr( "src", "images\ /" + value.name ).appendTo( "#images" );
			$('<p id = "current-id_' + value.id + '" class = "test">' + value.name + ' </p>').appendTo( "#images" );
		});
	});
});
*/



	

//https://maps.googleapis.com/maps/api/distancematrix/json?units=imperial&origins=Corvallis,OR&destinations=Allann+Brothers+Cafe+5th,West+5th+Avenue,Eugene,OR,United+States&key=AIzaSyAabchXVp_e81NIvOxfmWgZFrs2P7QDGNo

</script>
</head>
<body>

<button>Get JSON data</button>
	<h4> User One </h4>
	<p id = "js-user-name"></p>
	<p id = "js-image-name"></p>
	<p id = "js-first-name"></p>

	<div id="images"></div>
	<p class = "test">TEST</p>




</body>
</html>
