<!-- Edit Post -->
	<div class = "absolute-position">	
		
		<!-- Dropdown: Edit Post Area -->
		<div data-uk-dropdown="{mode:'click'}">

			<!-- TRIGGER: Dropdown Trigger Image -->
			<div class = "post-edit-trigger-area">
				<img title = "" src="<?php echo ICON; ?>menu_icon/side_two.png" class = "file-settings-image" alt="">
			</div>

			
			<!-- MENU: Dropdown Menu -->
			<div class="post-header-edit-dropdown uk-dropdown">
				<ul class="uk-nav uk-nav-dropdown">
					<li class = "uk-nav-header file-settings-text"> File Options <li>
					<li class = "uk-nav-divider"><li>
					<li id = "js-menu-trigger-file-rename_<?php echo $folder_id; ?>" class = "js-menu-trigger-file-rename file-settings-text">Rename<li>
					<li id = "js-trigger-delete-file_<?php echo $folder_id; ?>" class = "js-trigger-delete-file file-settings-text"> Delete <li>
				</ul>
			</div>
			
		</div>
	</div>


		
