<!-- NORMAL POST -->
<div id = "js-post-caption-area_<?php echo $post_id; ?>" class = "js-post-caption-area">
	<p id = "js-post-caption_<?php echo $post_id; ?>" class = ""><?php echo $post_caption; ?></p>
</div>

<!-- EDIT POST -->
<div id = "js-post-caption-edit-area_<?php echo $post_id; ?>" class = "js-post-caption-edit-area hide">
	<textarea id = "js-new-post-caption_<?php echo $post_id; ?>" class = "edit-post-caption-textarea" ><?php echo $post_caption; ?></textarea><hr />
	<p id = "js-save-new-caption_<?php echo $post_id; ?>" class = "js-save-new-caption no-margin inline"> Save </p>
	<p class = "js-cancel-edit-caption no-margin inline"> Cancel </p>
</div>	

<!-- Hidden Fields --> 
<input type="hidden" id = "" name="logged-in-user" value="<?php echo $logged_in_user; ?>">

