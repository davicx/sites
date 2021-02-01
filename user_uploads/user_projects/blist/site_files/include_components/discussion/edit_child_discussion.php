<!-- Show Edit if Post is from Logged in User -->
<div id = "" class = "<?php echo $post_from_logged_in_user; ?>"> 

	<div class = "edit-post-holder">	
		<div class = "absolute-position">
			<div id = "js-edit-post-dropdown" data-uk-dropdown="{mode:'click' }">
	 
				<!-- Trigger Dropdown -->
				<div class = "edit-post-trigger ">
					<img title = "" src="<?php echo ICON; ?>menu_icon\side_one.png" class = "discussion-settings-icon" alt="">
				</div>

				<!-- Dropdown -->
				<div class="uk-dropdown discussion-edit-dropdown">

					<!-- Post Settings Menu -->
					<div id = "" class = ""> 	
					
						<ul class="uk-nav uk-nav-dropdown">
							<li class = "uk-nav-header file-settings-text"> Edit Discussion <li>
							<li class = "uk-nav-divider"><li>
							<li id = "js-post-edit_<?php echo $post_child_id; ?>" class = "js-post-edit discussion-list-item"> Edit </li>	
							<li id = "js-post-delete_<?php echo $post_child_id; ?>" class = " js-post-delete discussion-list-item"> Delete </li>	
						</ul>
					</div>				
		
				</div>

			</div>
		</div>
	</div>		
</div>

