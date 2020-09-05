<div class = "edit-post-holder">	
	<div class = "absolute-position">
		<div id = "js-edit-post-dropdown" data-uk-dropdown="{mode:'click' }">
 
			<!-- Trigger Dropdown -->
			<div class = "edit-post-trigger <?php echo $display_post_settings; ?>">
				<p class = "temp temp-text">Edit</p>
			</div>

			<!-- Dropdown -->
			<div class="uk-dropdown edit-post-dropdown">

				<!-- Post Settings Menu -->
				<div id = "js-post-settings_<?php echo $post_id; ?>" class = "js-post-settings <?php echo $display_post_settings; ?>"> 	
					<p id = "js-post-edit_<?php echo $post_id; ?>" class = "js-post-edit"> edit </p>
					<p id = "js-post-delete_<?php echo $post_id; ?>" class = "js-post-delete"> delete </p>				
				</div>				
				
			</div>

		</div>
	</div>
</div>



<?php /*
<div class = "absolute-position">	
	
	<!-- Dropdown: Edit Post Area -->
	<div data-uk-dropdown="{mode:'click'}">

		<!-- Dropdown Trigger Image -->
		<div class = "post-edit-trigger-area">
			<img title ="" class = "post-edit-trigger" src="../images/icons/dropdown_gray.png" onmouseover="this.src='../images/icons/dropdown_hover.png'" onmouseout="this.src='../images/icons/dropdown_gray.png'" alt="" width="26"></a>
		</div>

		<!-- Dropdown Menu -->
		<div class="post-header-edit-dropdown uk-dropdown">

			<!-- Edit Header -->
			<div class = "">
				<p class = "post-edit-header-text"> Post Options </p>
			</div>
			<hr class = "comment-header-spacing"/>		
			
			<!-- Edit Post Menu Items --> 
			<div class = "edit-post-items">
				<p id = "js-post-edit_<?php echo $post_id; ?>" class = "js-post-edit post-edit-menu-item "> Edit </p>
				<p id = "js-post-edit-cancel-trigger_<?php echo $post_id; ?>" class = "hide js-post-cancel post-edit-menu-item ">  Cancel </p>	
				<p id = "js-post-delete_<?php echo $post_id; ?>" class = "js-post-delete post-edit-menu-item"> Delete </p>	
				<p id = "js-post-menu-close_<?php $post_id; ?>" class = "uk-dropdown-close post-edit-menu-item"> Close </p>	

				<input type="hidden" name="post-type"  id = "post-type_<?php echo $post_id; ?>" value = "<?php echo $post_type; ?>" > 
			</div>
		
		</div>
	</div>
</div>


		
		
		
		

<!-- Dropdown Menu -->
<div class=" uk-dropdown">

	<!-- Edit Header -->
	<div class = "">
		<p class = "post-edit-header-text"> Post Options </p>
	</div>
	<hr class = "comment-header-spacing"/>		
	
	<!-- Edit Post Menu Items --> 
	<div class = "edit-post-items">
		<p id = "js-post-edit_<?php echo $post_id; ?>" class = "js-post-edit post-edit-menu-item "> Edit </p>
		<p id = "js-post-delete_<?php echo $post_id; ?>" class = "js-post-delete post-edit-menu-item"> Delete </p>	
		<p class = "uk-dropdown-close post-edit-menu-item"> Close </p>	
		
		<input type="hidden" name="post-type"  id = "post-type_<?php echo $post_id; ?>" value = "<?php echo $post_type; ?>" > 
	</div>

</div>
*/ ?>

<?php /*
	<div data-uk-dropdown="{mode:'click'}">


		<div class="uk-dropdown item-edit-menu-area">
			<!-- if logged in user made post delete else hide -->
			<?php 	if(strcmp($logged_in_test, $from_test) == 0) { ?>
				<div class = ""><p class = "post-edit-header-text"> Post Options </p></div><hr class = "comment-header-spacing"/>		
				<div id = "delete_item_<?php echo $post_id; ?>" class = "delete-post-button comment-edit-menu-style">
					<p class = "comment-edit-menu-text"> Delete Post </p>
 				</div> 
			<?php } else { ?>

			<?php }  ?>
		</div>
		
		<div class="uk-dropdown post-edit-menu-area">
			<!-- if logged in user made post delete else hide -->
			<?php 	if(strcmp($logged_in_test, $from_test) == 0) { ?>
				<div class = ""><p class = "post-edit-header-text"> Post Options </p></div><hr class = "comment-header-spacing"/>		
				<div id = "delete_<?php echo $post_key . $post_id;  ?>" class = "delete-post-button comment-edit-menu-holder"><p class = "comment-edit-menu-text"> <?php //echo $post_key . $post_id;  ?> Delete Post </p></div>
					
			<?php } else { ?>
				<div class = "comment-edit-header-holder"><p class = "comment-edit-header-text"> Post Options </p></div><hr class = "comment-header-spacing"/>	
				<div id = "remove_<?php echo $post_key . $post_id; ?>" class = "remove-post-button comment-edit-menu-holder"><p class = "comment-edit-menu-text"> Report Post </p></div>						
				<!--<button type="button" id = "remove_<?php echo $post_key . $post_id; ?>" class = "hide remove-post-button edit-post-button ">Remove from Wall</button>-->
			<?php } ?>
		</div>
	
	</div>										
	*/ ?>

				