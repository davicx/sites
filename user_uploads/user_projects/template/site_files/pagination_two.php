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

			
			<!-- SECTION: Wall --> 
			<div id = "wall-full" class = "">
				
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
	
 			</div>			
			
			<div id = "js-load-more"></div>
			
		</div>		
		
		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>			
		
		<script type="text/javascript">
			var count = 0;
			$(window).scroll(function(){
				if  ($(window).scrollTop() == $(document).height() - $(window).height()){
					console.log("bottom");
					 //$("#js-load-more").append('<div class = "postey"><p>Bottom ' + count + '</p></div>');
					 
					 $("#js-load-more").append('<div class = "poste"><p >Bottom ' + count + '</p></div>');
					 count = count + 1;
					 
					 $("#js-load-more").append('<div class = "poste"><p >Bottom ' + count + '</p></div>');
					 count = count + 1;	
					 
					 $("#js-load-more").append('<div class = "poste"><p >Bottom ' + count + '</p></div>');
					 count = count + 1;	
					 
					 $("#js-load-more").append('<div class = "poste"><p >Bottom ' + count + '</p></div>');
					 count = count + 1;
					 
					 $("#js-load-more").append('<div class = "poste"><p >Bottom ' + count + '</p></div>');
					 count = count + 1;
					 
				}
			}); 

		</script>
	</body>
</html>

<?php 
/*
		
<ul class="uk-pagination hide">
	<li><a href="pagination.php?post_count=0"><i class="uk-icon-angle-double-left"></i></a></li>
	<li><a href="pagination.php?post_count=1">1</a></li>
	<li><a href="pagination.php?post_count=2">2</a></li>
	<li class="uk-active"><span><a href="pagination.php?post_count=1">2</a></span></li>
	<li><a href="pagination.php?post_count=3">3</a></li>
	<li class="uk-disabled"><span>4</span></li>

	<li><a href=""><i class="uk-icon-angle-double-right"></i></a></li>
</ul>	

*/
?>





