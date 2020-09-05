<?php
	//Include Page Header 
	require_once('../../functions/page_header.php');
	require_once('../../functions/files.php');	
	
	//PART 1: Variables 
	
	//Folder: Determine which folder is being viewed (I think I don't need this, only parent)
	if(isset($_GET["current_folder"])) {
		$current_folder = $_GET["current_folder"];
	} else {
		$current_folder = 0;
	}
	
	//Folder: Determine which folder is being viewed (I think I don't need this, only parent)
	if(isset($_GET["parent"])) {
		$parent_folder = $_GET["parent"];
	} else {
		$parent_folder = 0;
	}

	//Group: Determine if user is in Group
	if (isset($group_id)) {
		$group_id = $group_id;
	} else {
		$group_id = 0;
	}
	
	//Set Upload Variables 
	$master_site = MASTER_SITE;
	$upload_key = "user_file_uploads";
	$destination = FILE_UPLOAD;	
	$redirect = "file_system.php";
	$caption = "yo";
	$post_id = 0;
	
	//Select All Files
	$result_files = mysqli_query($conn,"SELECT * FROM files WHERE group_id = '$group_id' 
		AND parent = '$current_folder' 
		AND file_status = 1  
		AND is_folder = 0 
		ORDER BY file_name ASC;");	
		
	
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
			<?php //include_once('include_components/headers/kite/header.php') ?>
		</header>

		<div id = "site-wrapper">
			<div id = "site-wrapper-spacer"> 
				<p> &nbsp </p>
			</div>

			
			<!-- SECTION: Menu -->		
			<div id = "menu-desktop" class = "">
				<p> menu </p>
				<?php //include('include_components/menu/menu.php') ?>
			</div>
			
			<!-- SECTION: Site -->
			<section id = "wall">
				

			
			</section>
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			<!-- NAVIGATION -->
			
			
			<!-- SECTION: Add Folder and File Upload -->				

			<!-- SECTION: File Breadcrumb -->
			

			<!-- SECTION: File System -->
		
			

				<div id = "file-system-header" class = "">
					
					<!-- File BreadCrumb -->
					<div id = "file-system-breadcrumb">
						<?php include_once('include_components/files/file_breadcrumb.php') ?>	
					</div>
					
					<!-- Add File or Folder -->					
					<div id = "file-system-upload-area">
						<div class = "create-new-folder-area">
							<p id = "js-create-new-folder" class = "new-folder-button"> Folder + </p>							
						</div>
						<div class = "upload-file-area">
							<?php include_once('include_components/files/file_upload_button.php') ?>	
						</div>
					</div>			
				</div>
				
				<div id = "file-system" class = "">

					<!-- FILE HEADER -->
					<!-- Default File Header -->
					<div id = "js-file-header-default" class = "file-header">

						<div class = "file-header-name ">
							<h4 class = "file-header-text file-header-name-text"> Name </h4>
						</div>					

						<div class = "file-header-modified ">
							<h4 class = "file-header-text file-header-modified-text "> Modified </h4>						
						</div>					

						<div class = "file-header-settings">
							<h4 class = "file-header-text file-header-settings-text"> Settings </h4>						
						</div>					
					</div>

					<!-- SECTION: Create Folder -->
					<?php include_once('include_components/files/create_folder.php') ?>	
			
					<!-- ALL FOLDERS -->
					<?php include_once('include_components/files/all_folders.php') ?>			
					
					<!-- ALL FILES -->
					<?php include_once('include_components/files/all_files.php') ?>	

				</div>	


		</div>
		
		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php') ?>		
	</body>
</html>




<?php 

//THIS CAN BE USED IT IS THE FILE HEADER 
/*
<!-- Individual Clicked on File Header -->
<div id = "js-file-header-clicked-file" class = "file-header hide">
	
	<!-- File Name -->
	<div class = "file-header-action-name-holder">
		<h4 id = "js-clicked-file-name" class = "file-header-text file-header-name-text"></h4>
	</div>		
	
	<!-- File Download -->					
	<div class = "file-header-action-holder">
		<div class = "file-header-action-image-holder">
			<img title = "" src="<?php echo ICON; ?>files/download_one.png" class = "file-header-action-image" alt="">
		</div>
		<div class = "file-header-action-text-holder">
			<p class = "file-header-action-text"> Download </p>	
		</div>						
	</div>	
	
	<div class = "file-header-action-holder">
		<div class = "file-header-action-image-holder">
			<img title = "" src="<?php echo ICON; ?>files/download_one.png" class = "file-header-action-image" alt="">
		</div>
		<div class = "file-header-action-text-holder">
			<p class = "file-header-action-text"> Delete </p>	
		</div>	
	</div>							
					
	<div class = "file-header-action-holder">
		<div class = "file-header-action-image-holder">
			<img title = "" src="<?php echo ICON; ?>files/download_one.png" class = "file-header-action-image" alt="">
		</div>
		<div class = "file-header-action-text-holder">
			<p  id = "js-header-trigger-file-rename" class = "file-header-action-text"> Rename </p>	
		</div>	
	</div>							
	<p id = "js-current-file-id" class = "hide"></p>

</div>
*/

?>

<?php 
/*
						<!-- File Size -->
						<div id = "" class = "js-file-size file-size hide">
							<p> Size </p>
						</div>		
						
						<!-- File Type -->
						<div id = "" class = "js-file-type file-type hide">
							<p> type </p>
						</div>			
<a title = "" id = "download-file_<?php echo $file_id; ?>" 
class = "file-click file-position" 
href="download.php?file=<?php echo urlencode($file_path)?>&file_name=<?php echo $file_name_download; ?>">	
*/
?>		




<?php /*
<!-- FOLDER -->
<div id = "js-folder_1" class = "js-folder">

	<!-- Folder Name -->
	<div id = "js-folder-name_1" class = "js-folder-name">
	
	</div>		
	
	<!-- Folder Name -->
	<div id = "js-folder-name-edit_1" class = "js-folder-name hide">
	
	</div>

	<!-- Folder Modified -->
	<div id = "js-folder-modified_1" class = "js-folder-modified">
	
	</div>			
	
	<!-- Folder Type -->
	<div id = "js-folder-type_1" class = "js-folder-type">
	
	</div>						

	<!-- Folder Size -->
	<div id = "js-file-type_1" class = "js-file-type">
	
	</div>					
</div> */
?>