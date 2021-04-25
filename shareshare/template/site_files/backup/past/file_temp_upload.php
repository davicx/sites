<?php
	//http://localhost/sites/template/site_files/file_temp_upload.php?current_folder=9&parent_folder=3&friend_id=2&group_id=NA==
	//http://localhost/sites/template/site_files/file_temp_upload.php?group_id=NA==
	//Include Page Header 
	require_once('../../functions/page_header.php');
	//
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
			#temp {float: left; clear: both; margin: 80px; margin-bottom: 6px; border: 1px solid blue; min-width: 200px; max-width: 600px; min-height: 180px; }
		</style>

    </head>
	
	<body> 
		
		<div id = "temp">	
			<?php //include('include_components/files/file_upload_default.php'); ?>
			<?php include('include_components/posts/make_post/make_post_photo.php'); ?>
			<?php //include('include_components/files/file_upload_files.php'); ?>
			<?php //include('include_components/files/file_upload_messages.php'); ?>				
		</div>	
	
		<div id = "temp">	
			<p><?php echo $group_id; ?> </p>
			<p><?php echo $current_folder; ?> </p>
			<p><?php echo $parent_folder; ?> </p>
			<p><?php echo $visiting_page_id; ?> </p>
			<p><?php echo $logged_in_user; ?> </p>
		</div >
		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>			

	</body>
</html>







