<?php
	//http://localhost/sites/template/site_files/files.php?current_folder=9&parent_folder=3&friend_id=2&group_id=NA==
	//http://localhost/sites/template/site_files/files.php?group_id=NA==
	//Include Page Header 
	require_once('../../functions/page_header.php');
	if(isset($_GET["parent_folder"])) {
		$parent_folder = $_GET["parent_folder"];
	} else {
		//echo "NO PARENT";
		$parent_folder = 0;
	}
	
	if(isset($_GET["current_folder"])) {
		$current_folder = $_GET["current_folder"];
	} else {
		$current_folder = 0;
	}

	

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
		
		<!-- TEMP -->
		<!--
		<link rel="stylesheet" href="../css/temp.css">	
		-->		
		<!-- TEMP -->
		
    </head>
	
	<body> 
	
		<script>

		</script>
		<?php
		/*
		<!-- New Element -->
		<button onclick="myFunction()">List Item</button>
		<ul id="list">List</ul>


		<script>
		function myFunction() {
			var new_list_item = document.createElement("li");
			var new_list_text = document.createTextNode("This is a paragraph.");
			new_list_item.appendChild(new_list_text);
			document.getElementById("list").appendChild(new_list_item);
		}
		</script>
		*/ ?>
				
		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>			
		<script src="<?php echo CODE_ROOT; ?>../js/learning.js"></script>
	</body>
</html>







