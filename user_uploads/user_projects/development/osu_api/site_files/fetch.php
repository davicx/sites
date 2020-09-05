<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://apis.google.com/js/api.js" type="text/javascript"></script>

<script>
//Function 1: Retrieve JSON
$(document).ready(function(){
	$.getJSON("rest_api.php", function(result){

		var users = result;
		
		$(result.users).each(function(index, value) {
			console.log(value);
			$('<div id = "js-full-user_' + value.id + '"><p id = "current-id_' + value.id + '" class = "js-user">' + value.name + ' </p>' + '<img src="../images/' + value.user_image + ' " class = "user-image"></div>').appendTo( "#users" );
			//<img src="pic_mountain.jpg" class = "user-image">
		});
	});
});

//Function 2: Add a click handler
$(document).ready(function() {	
 	$('body').on('click', '.js-user', function(e){			
		var full_user_id = $(this).attr('id');
		var splitPartsPiece;
		splitPartsPiece = full_user_id.split("_");
		var user_id = splitPartsPiece[1];			
		
		//alert(full_user_id);
		$("#js-full-user_" + user_id).hide();	
			
	});
});	




</script>
<style>
	.user-image {
		width: 40px;
	}
</style>
</head>
<body>



	<!-- Section 1 -->
	<div id="users"></div>
	

</body>
</html>
