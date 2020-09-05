<?php
	//Include Page Header 
	require_once('../../functions/page_header.php');
	
 	if(isset($_GET["group_id"])) {
		$group_id = base64_decode($_GET['group_id']);	
	} else {
		header("Location: kite.php");
		die();
	} 
		
	//Update Page Analytics 
	$page_url = "kite_individual_board.php";
	updatePageVisit($page_url, $group_id, $logged_in_user);
	
	//User Selected Display Type
	$sql = "SELECT * FROM user_profile WHERE user_name = '$logged_in_user' ";
	$result = $conn->query($sql) or die(mysqli_error());	
	
	while($row = mysqli_fetch_array($result)) {	
		$post_display_view = $row['post_view'];
	}	
	
	//This is what posts will be selected and displayed on this page 
	$display_posts_type = 1;
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
			<?php include_once('include_components/headers/header_shareshare/header.php') ?>
		</header>
						
		<!-- SECTION: Wall --> 
		<div id = "site-wrapper-response">
			
			<div id = "site-wrapper-spacer-groups"> 
				<p> &nbsp </p>
			</div>
			<?php /*
			<p> Individual Board </p>
			<p> <?php echo $group_id ?> </p>
			<h4> All Board Posts  </h4>
			<a href="kite_posts.php">Back</a>
			<a href="kite_individual_post.php">Individual Post </a>
			*/ ?>	
				

			<!-- KITE: Header Area and Board Info -->
			<?php include('include_components/headers/kite_header.php') ?>	
			<?php include('include_components/posts/posts_kite/display_posts/display_posts.php') ?>		
			
			<?php /*
			<div id = "wall-full" class = "">
				
				<!-- KITE: Display Posts -->	
				<?php if(strcmp($post_display_view, "small") == 0) { ?>
						<?php include('include_components/posts/posts_kite/display_posts/display_posts.php') ?>		
					
				<div class="responsive-post-container">
					<?php include('include_components/posts/posts_kite/display_posts/display_posts.php') ?>	
				</div>	
				
				<?php } else { ?>
					<?php include('include_components/posts/posts_kite/display_posts/display_posts.php') ?>		
			
				<?php } ?>
								
			</div>		
			*/ ?>
		
 		</div>		

		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>			
	
	</body>
</html>
