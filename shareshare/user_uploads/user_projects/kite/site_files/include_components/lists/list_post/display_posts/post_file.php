<?php 
	$file_path = RELATIVE_FILE_PATH . $file_url; 
?>

<!-- FILE -->
<div id = "" class = "">
		
	<!-- File Image -->
	<a title = "" id = "" class = "" href="download.php?file=<?php echo urlencode($file_path)?>&file_name=<?php echo $file_name; ?>">
		<img src="<?php echo POST_PHOTO_DISPLAY . $image_url; ?>" alt="Wall Post Photo" class = "list-photo-image">
	</a>

	<?php /*	
	<!-- File Name -->
	<div id = "" class = "post-file-name">
		<a title = "" id = "" class = "" href="download.php?file=<?php echo urlencode($file_path)?>&file_name=<?php echo $file_name; ?>">
			<p class = "post-file-name-text"> <?php echo $file_name; ?> </p>
		</a>	
	</div>
	
	<!-- File Download -->
	<div id = "" class = "post-file-download hide">
		<a title = "" id = "" class = "" href="download.php?file=<?php echo urlencode($file_path)?>&file_name=<?php echo $file_name; ?>">Download</a>
	</div>
		*/ ?>
</div>