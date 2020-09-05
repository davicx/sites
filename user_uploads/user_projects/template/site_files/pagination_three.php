<?php
	//Include Page Header 
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
		<title> Template </title>
		
		<!-- Include all JS and CSS Files -->
		<?php include_once('include_components/links_head.php') ?>
		<script src="<?php echo CODE_ROOT; ?>../js/pagination.js"></script>
			
    </head>
	
	<body> 
	
		<!-- SECTION: Header -->
		<header>
			<?php //include_once('include_components/headers/header_shareshare/header.php') ?>
			
		</header>
			
		<div id = "site-wrapper-response">
			
			<div id = "site-wrapper-spacer-groups"> 
				<p> &nbsp </p>
			</div>
		<?php 


		//print_r($posts_json_array);
		
		?>		
			<p id="demo"></p>

<script>
/*
post_1 = { "post_id":1, "post_caption":"Post 1", "post_type":"Photo" };
post_2 = { "post_id":2, "post_caption":"Post 2", "post_type":"Video" };
post_3 = { "post_id":3, "post_caption":"Post 3", "post_type":"Photo" };

all_posts = [post_1, post_2, post_3];

all_posts_length = all_posts.length;

for (i = 0; i < all_posts_length; i++) {
	var post_id= all_posts[i].post_id;
	var post_caption = all_posts[i].post_caption;
	var post_type = all_posts[i].post_type;
    console.log(post_id + " " + post_caption + " " + post_type);
}



//document.getElementById("demo").innerHTML = x;
*/
</script>

			
			
			<?php 
			
			/*
settype($offset, 'integer');
$query = "SELECT id, name FROM products ORDER BY name LIMIT 20 OFFSET $offset;";

// please note %d in the format string, using %s would be meaningless
settype($offset, 'integer');
$query = sprintf("SELECT id, name FROM products ORDER BY name LIMIT 20 OFFSET %d;",
                 $offset);
			*/

				//$sql = "SELECT * FROM posts ORDER BY post_id ASC LIMIT 3 OFFSET 1 ";
				$current_post_count = 6;
				$fetch_records = 3;				
	
				settype($current_post_count, 'integer');
				$sql = sprintf("SELECT * FROM posts ORDER BY post_id ASC LIMIT 3 OFFSET %d;",
					$current_post_count);
				 
				//$sql = "SELECT * FROM posts ORDER BY post_id ASC LIMIT 3 OFFSET 0";
				$result = $conn->query($sql) or die(mysqli_error());

				while($row = mysqli_fetch_array($result)) {		

					//All Post Individual Information  
					$post_type = $row['post_type'];
					$post_id = $row['post_id'];
					$post_caption = $row['post_caption'];
					
					echo $post_id . " " . $post_type .  " " . $post_caption . "<br />";
				}	
					
					
					
					/*
					$sql = "SELECT * FROM posts ORDER BY post_id ASC LIMIT 3 OFFSET 0";
	$result = $conn->query($sql) or die(mysqli_error());
	$row_count = 1;
	$posts_json_array = array();
	
	while($row = mysqli_fetch_array($result)) {		

		//All Post Individual Information  
		$post_type = $row['post_type'];
		$post_id = $row['post_id'];
		$post_caption = $row['post_caption'];
		
		//echo $post_id . " " . $post_type .  " " . $post_caption . "<br />";
		$current_post = "post_" . $row_count;
		$current_post = array("post_id"=> $post_id, "post_caption"=>$post_caption, "post_type"=>$post_type); 
		array_push($posts_json_array,$current_post);
		$row_count = $row_count + 1;
	}	
					*/
			?>
			
			
			<!-- SECTION: Wall --> 
			<div id = "wall-full" class = "">
				<div id = "js-load-more"></div>		
				<input type="hidden" name="logged-in-user"  id = "" value = "<?php echo $logged_in_user; ?>"> 
				<input type="" name="current-post-list"  id = "js-current-post-list" value = "0"> 	
 						
			</div>			
			
			
		</div>		
		
		
		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>			

	</body>
</html>


















<?php 
/*
					<?php
				if(isset($_GET["post_count"])) {
					$current_page = $_GET['post_count'];
				} else {
					$current_page = 1;					
				}
				
				//PART 1: Set up Variables
				$records_to_select = 3;
				$starting_record = ($current_page - 1) * $records_to_select;	
				
				//PART 2: Get a Count of all Potential Records 
				$sql = "SELECT * FROM posts";				
				$result_total = $conn->query($sql) or die(mysqli_error());
				$total_records = mysqli_num_rows($result_total);
				$total_pages = ceil($total_records / $records_to_select);						
				$current_rows_to_select = $starting_record . "," . $records_to_select;
	
				//PART 3: Select All Posts 	
				$sql = "SELECT * FROM posts 
					ORDER BY post_id ASC
					LIMIT " . $current_rows_to_select;				

				$result = $conn->query($sql) or die(mysqli_error());
				
				//TEMP: Get Total Posts 
				while($row = mysqli_fetch_array($result)) {		
					//All Post Individual Information  
					$post_type = $row['post_type'];
					$post_id = $row['post_id'];
					echo $post_type . " " . $post_id;
					echo "<br />";
				}
				
				echo "<br />";				
				echo "<p><b>Total Records </b> " . $total_records . "</p>" ;
				echo "<p><b>Page</b> " . $current_page . "</p>" ;
				echo "<p><b>Total Pages </b> " . $total_pages . "</p>" ;
				
				//TEMP: Above
				?>
				
				<!-- LIST OF RECORDS -->
				

				<ul class="uk-pagination">
					<li><a href="pagination.php?post_count=1"><i class="uk-icon-angle-double-left"></i></a></li>
					<?php 
					for ($i = 1; $i <= $total_pages; $i++) {
					?>
					<?php
						if($current_page == $i) { ?>
							<li class="uk-active"><span><a href="pagination.php?post_count=<?php echo $i; ?>"><?php echo $i; ?></a></span></li>
							
						<?php } else { ?>
							<li><a href="pagination.php?post_count=<?php echo $i; ?>"><?php echo $i; ?></a></li>
						<?php } ?>
					
					<?php } ?>
	
 
					<li><a href="pagination.php?post_count=<?php echo $total_pages; ?>"><i class="uk-icon-angle-double-right"></i></a></li>
				</ul>

				<hr />
					
				<!--
				<li>...</li>
				<li><a href="pagination.php?post_count=<?php echo $i; ?>">13</a></li>
				<li><a href="pagination.php?post_count=<?php echo $i; ?>">14</a></li>
				-->	


*/
?>





