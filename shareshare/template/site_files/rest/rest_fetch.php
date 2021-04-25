<?php
	require_once('../../functions/page_header.php');	
?>
<!DOCTYPE html>
<html>
    <head>
		
		<!-- Meta Tags -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">		
	    <meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="" />
		<title> My Files </title>
		
		<!-- Include all JS and CSS Files -->
		<?php include_once('include_components/links_head.php') ?>
		<style>
		.user-image {
			width: 120px;
			
		}
		.user-holder {
			width: 200px;
			border: 1px solid black;
			margin: 20px;
			margin-left: 100px;
		}
		</style>
		<script>
			//Function 1: Retrieve JSON
			$(document).ready(function(){
				$.getJSON("rest_api.php", function(result){
					var users = result;		
					console.log(users);
					$(result.users).each(function(index, value) {
						console.log(value.id);
						console.log(value.name);
						console.log(value.user_image);
						$('<div id = "js-full-user_' + value.id + '" class = "user-holder"><p id = "current-id_' + value.id + '" class = "js-user">' + value.name + ' </p>' + '<img src="../../user_uploads/user_image/' + value.user_image + ' " class = "user-image"></div>').appendTo( "#users" );
					});
				});
			});

		</script>
    </head>
	
	<body> 
	
		<!-- SECTION: Header -->
		<header class = "">
			<?php include_once('include_components/headers/header.php') ?>
		</header>
		
		<!-- Spacer --> 
		<div id = "site-wrapper-spacer">
			<p> &nbsp </p>
		</div>		
			
		
		<!-- SECTION: Groups -->	
		<div id = "site-wrapper">
			<div id="users" class = ""></div>

			<?php	
			/*
				$result = mysqli_query($conn,"SELECT * FROM user_profile LIMIT 3");
				$user_id_array = array();
				$all_users_array = array();
				
				while($row = mysqli_fetch_array($result)) {		
					$temp_user_array = array();
					$user_id = $row['user_id'];
					$user_name = $row['user_name'];
					$image_name = $row['image_name'];
					
					$temp_user_array['user_id'] = $user_id; 
					$temp_user_array['user_name'] = $user_name;
					$temp_user_array['image_name'] = $image_name;
					
					array_push($all_users_array, $temp_user_array);
					array_push($user_id_array, $user_id);
				}
				//print_r($user_id_array);
				//print_r($all_users_array);
				*/
			?>
						
			
		</div>
		
		
		
	
		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>			
	
	</body>
</html>







