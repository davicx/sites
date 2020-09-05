<?php 
	$file_path = RELATIVE_FILE_PATH . $file_url; 
?>


<!-- File -->
<div id = "" class = "">
	<p> File </p>
	<img src="<?php echo POST_PHOTO_DISPLAY . $image_url; ?>" alt="Wall Post Photo" class = "temp-image-small">
	<a title = "" id = "" class = "" href="download.php?file=<?php echo urlencode($file_path)?>&file_name=<?php echo $file_name; ?>">Download</a>
</div>