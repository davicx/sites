<!-- Post Likes -->
<div id = "post-likes">
	
	<!-- Like Post -->
	<?php if($liked_by_logged_in_user == 0) { ?>
		<img id = "js-like-post_<?php echo $post_id; ?>" class = "js-like-post post-liked-image" src="<?php echo ICON; ?>like\like_me.png" alt="">
		<img id = "js-unlike-post_<?php echo $post_id; ?>" class = "js-unlike-post hide post-liked-image" src="<?php echo ICON; ?>like\liked.png" alt="">
	
	<!-- UnLike Post -->
	<?php } else { ?>	
		<img id = "js-unlike-post_<?php echo $post_id; ?>" class = "js-unlike-post post-liked-image" src="<?php echo ICON; ?>like\liked.png" alt="">
		<img id = "js-like-post_<?php echo $post_id; ?>" class = "js-like-post hide post-liked-image" src="<?php echo ICON; ?>like\like_me.png" alt="">
	
	<?php } ?>	
	
	<!-- Total Likes -->
	<p id = "" class = "no-margin inline">Likes: </p><p id = "js-total-likes_<?php echo $post_id; ?>" class = "no-margin inline"><?php echo $total_likes; ?> </p>	
	
	<!-- Hidden Values -->
	<input type="hidden" name="logged-in-user" id = "" value = "<?php echo $logged_in_user; ?>" > 
	<input type="hidden" name="" id = "js-post-total-likes_<?php echo $post_id; ?>" value = "<?php echo $total_likes; ?>"> 
</div>

<!-- Hover over post Likes the dropdown location not working -->
<?php /*
<div class="" data-uk-dropdown>
	<p class="">Hover me </p>
	<div class="uk-dropdown temp-likes-dropdown">
		<ul class="uk-nav uk-nav-dropdown">
			<li class="uk-nav-header"> Post Likes </li>
			<li class="uk-nav-divider"></li> 
			<?php
			 
			$like_array_count = count($like_array);

			for($x = 0; $x < $like_array_count; $x++) {
			?>
				<li><a href="#"><?php echo $like_array[$x]; ?></a></li>
			<?php } ?> 

		</ul>
	</div>
</div>
*/ ?>