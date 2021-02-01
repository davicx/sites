<div class = "edit-list-holder">	
	<div class = "absolute-position">
		<div id = "js-edit-post-dropdown" data-uk-dropdown="{mode:'click' }">
 
			<!-- Trigger Dropdown -->
			<div class = "edit-post-trigger <?php echo $display_post_settings; ?>">
				<img title = "Edit Post" src="<?php echo ICON; ?>menu_icon\side_two.png" class = "edit-list-icon" alt="">
			</div>

			<!-- Dropdown -->
			<div class="uk-dropdown edit-post-dropdown post-header-edit-dropdown ">

				<!-- Post Settings Menu -->
				<div id = "js-post-settings_<?php echo $post_id; ?>" class = "js-post-settings <?php echo $display_post_settings; ?>"> 	
			
					<ul class="uk-nav uk-nav-dropdown">
						<li class = "uk-nav-header file-settings-text">  Options <li>
						<li class = "uk-nav-divider"><li>
						<li id = "js-post-edit_<?php echo $post_id; ?>" class = "js-post-edit file-settings-text hide"> edit </li>
						<li id = "js-post-delete_<?php echo $post_id; ?>" class = "js-post-delete file-settings-text"> delete </li>		
					</ul>			
								
				</div>				
				
			</div>

		</div>
	</div>
</div>

