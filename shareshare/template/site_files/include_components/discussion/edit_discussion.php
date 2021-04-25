<!-- This is the container enabling the JavaScript in click mode -->
<div class = "absolute-position">
	<div data-uk-dropdown="{mode:'click'}">

		<!-- This is the element toggling the dropdown -->
		<div class = "discussion-edit-trigger <?php ?>">
			<p>...</p>
		</div>

		<!-- This is the dropdown -->
		<div class="uk-dropdown discussion-edit-dropdown">
			<p id = "js-post-delete_<?php echo $post_id; ?>" class = "js-post-delete "> delete </p>
		</div>

	</div>
</div>

	
	
	
	
	
	
	
	
	
	
<?php /*
<div class = "absolute-position">
	<div id = "js-edit-post-dropdown" data-uk-dropdown="{mode:'click' }">

		<!-- Trigger Dropdown -->
		<div class = "edit-discussion">
			<p class = "no-margin"> EDIT </p>
		</div>

		<!-- Dropdown -->
		<div class="uk-dropdown">

			<!-- Post Settings Menu -->
			<div id = "" class = ""> 	
				<p id = " " class = ""> edit </p>					
				<p id = " " class = ""> delete </p>
			</div>				

		</div>

	</div>
</div>	
*/ ?>


<?php /*
<li id = "js-post-delete_<?php echo $post_id; ?>" class = " js-post-delete discussion-list-item"> delete </li>
<!-- Show Edit if Post is from Logged in User -->
<div id = "" class = "<?php echo $display_edit; ?>"> 

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
							<li id = "js-post-edit_<?php echo $post_id; ?>" class = "js-post-edit discussion-list-item"> Edit </li>	
							<li id = "js-post-delete_<?php echo $post_id; ?>" class = " js-post-delete discussion-list-item"> delete </li>
						</ul>			
					</div>				
		
				</div>

			</div>
		</div>
	</div>		
</div>

*/ ?>