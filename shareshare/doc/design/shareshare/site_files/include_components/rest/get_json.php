<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script>
	/*
	//JSON 1: Example Posts
	$.getJSON('rest_api.php', { get_param: 'value' }, function(posts) {
		$.each(posts, function(index, element) {
			console.log(posts[index].id);
			console.log(posts[index].title);
			console.log(posts[index].content);
			console.log(posts[index].userImage);
		});
	});
	*/
	//JSON 2: Example Posts
	$.getJSON('rest_api.php', { get_param: 'value' }, function(posts) {
		console.log(posts);
	});	
	
	</script>
</head>
	<body>
		<?php 
		//"id"=>"1", "title"=>"David", "content"=>"First Post", "userImage"=>"david.jpg"
		?>
	</body>
</html>






