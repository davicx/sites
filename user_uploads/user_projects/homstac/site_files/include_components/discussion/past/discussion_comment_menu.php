<!-- Discussion Menu -->
<div class = "absolute-position">	
	<div data-uk-dropdown="{mode:'click'}">

		<!-- Image: Toggles Drop Down -->
		<div class = "tester">
			<img title = "" src="<?php echo ICON; ?>menu_icon/side_one.png" class = "comment-settings-image" alt="">
		</div>

		<!-- Discussion Drop Down -->
		<div class="discussion-settings-menu uk-dropdown">
			<ul class = "uk-nav uk-nav-dropdown">
				<li class = "uk-nav-header"> DELETE </li>
				<li class = "uk-nav-divider"> </li>
				
				<!-- Edit Comment -->
				<li id = "js-comment-dropdown-edit-trigger_<?php echo $comment_id; ?>" class = "js-comment-edit-trigger js-comment-dropdown-edit-trigger"> Edit </li>
				<li id = "js-comment-dropdown-edit-trigger-cancel_<?php echo $comment_id; ?>" class = "js-comment-edit-trigger-cancel js-comment-dropdown-edit-trigger-cancel hide"> Cancel </li>
			
				<!-- Delete Comment -->
				<li id = "js-comment-delete_<?php echo $comment_id; ?>" class = "js-comment-delete"> Delete </li>
						
				
			</ul>
		</div>
		
	</div>
</div>
