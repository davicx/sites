<?php

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
			
		
		<!-- SECTION: Files -->	
		<div id = "site-wrapper">
			

			<!-- File BreadCrumb -->
			<div id = "breadcrumb"> 
				<?php include_once('include_components/files/file_breadcrumb.php') ?>	
			</div>
			
			<!-- Upload File -->	
			<div id = "upload-file">
				<?php include_once('include_components/files/file_upload.php') ?>	
			</div>	
			
			<!-- Create Folder -->
			<div id = "create-folder">
				<?php include_once('include_components/files/create_folder.php') ?>		
			</div>		
			
			<!-- File Action Area -->
			<div id = "file-action-area">
				<?php include_once('include_components/files/file_action.php') ?>				
			</div>		
		
			<!-- Show All Folders -->
			<div id = "folders">
				<?php include_once('include_components/files/all_folders.php') ?>		
			</div>

			
			<!-- Show All Files -->
			<div id = "files" class = "">
				<?php include_once('include_components/files/all_files.php') ?>	
			</div>
			
			
			<?php /*
			<!-- Show All  -->
			<div id = "" class = "hide">
			
				<div class = "file">
					<i class="fa fa-folder fa-3x fa-folder-position"></i> fa-4x
				</div>		
			
				<div class = "file">
					<i class="fa fa-folder fa-3x fa-folder-position"></i> fa-4x
				</div>		
			
				<div class = "file">
					<i class="fa fa-folder fa-3x fa-folder-position"></i> fa-4x
				</div>		
			
				<div class = "file">
					<i class="fa fa-folder fa-3x fa-folder-position"></i> fa-4x
				</div>		
		
				<?php //include_once('include_components/files/all_files.php') ?>	
			</div>
			
			*/ ?>
		</div>
				
		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>			
	
	</body>
</html>







