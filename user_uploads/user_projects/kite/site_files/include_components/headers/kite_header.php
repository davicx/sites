<div class = "kite-header-board-selected">

	<!-- Select View -->
	<img title = "Home Page" src="<?php echo ICON; ?>header/squares_selected.png" id = "js-small-post-view" class = "kite-select-post-view-image" alt="">
	<img title = "Home Page" src="<?php echo ICON; ?>header/posts_large.png" id = "js-large-post-view" class = "kite-select-post-view-image" alt="">

	<div class = "kite-header-board-name">
		<h4 class = "hide kite-header-text-selected"> Favorite Music </h4>	
	</div>
	<?php 
	include('include_components/posts/posts_kite/new_post.php');
	?>
	
	<div class = "hide kite-header-board-followers">
		<div class = "kite-header-follower-count-area">
			<p class = "kite-header-text"> 75 Followers </p>	
		</div>
		
		<!-- Maybe move to header -->
		<div class = "kite-header-follower-image-area">
			<img src="<?php echo USER_IMAGE . "10.jpg"; ?>" alt="" class = "kite-header-follower-photo">
			<img src="<?php echo USER_IMAGE . "11.jpg"; ?>" alt="" class = "kite-header-follower-photo">
			<img src="<?php echo USER_IMAGE . "12.jpg"; ?>" alt="" class = "kite-header-follower-photo">
			<img src="<?php echo USER_IMAGE . "13.jpg"; ?>" alt="" class = "kite-header-follower-photo">
			<img src="<?php echo USER_IMAGE . "14.jpg"; ?>" alt="" class = "kite-header-follower-photo">
			<img src="<?php echo USER_IMAGE . "15.jpg"; ?>" alt="" class = "kite-header-follower-photo">
			<img src="<?php echo USER_IMAGE . "16.jpg"; ?>" alt="" class = "kite-header-follower-photo">
			<img src="<?php echo USER_IMAGE . "17.jpg"; ?>" alt="" class = "kite-header-follower-photo">
		</div>		
		
	</div>	

	<!-- Hidden Values -->
	<input type="hidden" name="logged-in-user"  id = "" value = "<?php echo $logged_in_user; ?>"> 	
	
</div>