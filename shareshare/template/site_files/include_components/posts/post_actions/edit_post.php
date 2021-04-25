<div class = "absolute-position">
	<div id = "js-edit-post-dropdown" data-uk-dropdown="{mode:'click' }">

		<!-- Trigger Dropdown -->
		<div class = "">
			<p class = "temp-header-select no-margin"> EDIT </p>
		</div>

		<!-- Dropdown -->
		<div class="uk-dropdown js-post-setting-menu">

			<!-- Post Settings Menu -->
			<div id = "" class = ""> 	
				<p id = "js-post-edit_<?php echo $post_id; ?>" class = "js-post-edit"> edit </p>					
				<p id = "js-post-delete_<?php echo $post_id; ?>" class = "js-post-delete"> delete </p>
			</div>				

		</div>

	</div>
</div>	

<!-- Show Edit if Post is from Logged in User -->
<div id = "" class = "<?php echo $post_from_logged_in_user; ?>"> 	
</div>
