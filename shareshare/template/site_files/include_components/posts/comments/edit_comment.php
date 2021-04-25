<div class = "absolute-position">
	<div id = "js-edit-comment-dropdown" data-uk-dropdown="{mode:'click' }">

		<!-- Trigger Dropdown -->
		<div class = "<?php echo $show_edit_comment; ?>">
			<p class = "temp-header-select no-margin"> EDIT </p>
		</div>

		<!-- Dropdown -->
		<div class="uk-dropdown js-comment-setting-menu">

			<!-- Post Settings Menu -->
			<div id = "" class = ""> 	
				<p id = "js-comment-edit_<?php echo $comment_id; ?>" class = "js-comment-edit"> edit </p>					
				<p id = "js-comment-delete_<?php echo $comment_id; ?>" class = "js-comment-delete"> delete </p>
			</div>				

		</div>

	</div>
</div>	


