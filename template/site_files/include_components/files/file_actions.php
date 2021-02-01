<div id = "file-actions-create">

	<!-- Create Folder -->
	<div class = "file-actions-create-folder">
		<p class = "js-show-create-folder file-actions-text"><b> Create Folder</b></p>
	</div>
	
	<!-- Upload File -->
	<div class = "file-actions-create-file">
		<p class = "file-actions-text"><b><a href="#my-id" data-uk-modal> Upload File </a></b></p>
	</div>
	
	<!-- Upload File -->
	<div id="my-id" class="uk-modal">
		<div class="uk-modal-dialog">
			<a class="uk-modal-close uk-close"></a>
			<?php include('include_components/files/file_upload.php'); ?>
		</div>
	</div>

</div>

<div id = "file-actions-selected">
	
	<!-- File Selected -->
	<div id = "js-file-selected" class = "hide">	
		<p id = "js-selected-file-name" class = "bold"></p>
		<p id = "" class = "js-trigger-file-rename"> Rename file </p>
		<p id = "" class = "js-trigger-file-delete"> Delete file </p>
	</div>
	
	<!-- Folder Selected -->
	<div id = "js-folder-selected" class = "hide">	
		<p id = "js-selected-folder-name" class = "bold"></p>
		<p id = "" class = "js-trigger-folder-rename"> Rename file </p>
		<p id = "" class = "js-trigger-folder-delete"> Delete file </p>
	</div>
	
	<!-- File Action Notifications -->
	<div id = "js-file-action-notificaitons" class = "hide">	

	</div>
</div>