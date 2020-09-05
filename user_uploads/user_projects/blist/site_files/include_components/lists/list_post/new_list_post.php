<?php 
	//Include Components
	require_once('../../functions/files.php');	
	//$redirect = "my_wall.php";
	
	//?group_id=MTc3
	//?list_id=381
	//?friend_id=3
	
	//STEP 1: Get Post to 
	//echo $post_to; DONE
	//echo "  <br />";
	//echo $group_id;
	$group_members_array = getActiveGroupMembers($group_id);
	//print_r ($group_members_array);
	
?>

<!-- MODAL: Button to Open Modal -->
<div id = "create-group">
	<a href="#new-post-modal" data-uk-modal class = "list-new-item-text"> New Item (+) </a>
	<p class = "hide"> GROUP: <?php echo $group_id; ?></p>
	<p class = "hide"> User Page: <?php //echo $current_page_user_name;?></p>
</div>

<!-- MODAL: Make a New Post -->
<div id="new-post-modal" class="uk-modal new-post-modal">
    <div class="uk-modal-dialog">
		
		<!-- MODAL: Header -->
        <div class="uk-modal-header ">
			<div class="uk-grid uk-grid-adjust">
				<div class="uk-width-9-10">
					
				</div>
				
				<!-- Close Modal -->
				<div class="uk-width-1-10">
						
					<a class="uk-modal-close uk-close"></a>
				</div>
			</div>
		</div>	

		<!-- MODAL: Body-->
		<div class="uk-grid ">
			
			<!-- PART 1: Select Post Type -->
			
			<!-- Post Type: Photo -->
			<div class="uk-width-2-10 post-select-type">
				<div id = "js-post-select-photo">
					<img title = "" src="<?php echo ICON; ?>make_post/photo_dark.png" class = "post-select-type-image" alt="">
					<p class = "make-post-text" > Photo </p>
				</div>
			</div>

			<!-- Post Type: Video -->			
			<div class="uk-width-2-10 post-select-type">
				<div id = "js-post-select-video">
					<img title = "" src="<?php echo ICON; ?>make_post/video.png" class = "post-select-type-image" alt="">
					<p class = "make-post-text" > Video </p>
				</div>
			</div>

			<!-- Post Type: Article -->			
			<div class="uk-width-2-10 post-select-type">
				<div id = "js-post-select-article">
					<img title = "" src="<?php echo ICON; ?>make_post/article_2.png" class = "post-select-type-image" alt="">			
					<p class = "make-post-text" > Article </p>
				</div>
			</div>

			<!-- Post Type: Text -->			
			<div class="uk-width-2-10 post-select-type">
				<div id = "js-post-select-text">
					<img title = "" src="<?php echo ICON; ?>make_post/text.png" class = "post-select-type-image" alt="">			
					<p class = "make-post-text" > Text </p>
				</div>
			</div>

			<!-- Post Type: File (Link) -->			
			<div class="uk-width-2-10 post-select-type">
			
				<div id = "js-post-select-file">					
					<img title = "" src="<?php echo ICON; ?>make_post/file.png" class = "post-select-type-image" alt="">		
					<p class = "make-post-text" > Link </p>
				</div>
				
			</div>
			
			<!-- Divider -->
			<div class="uk-width-1-1 uk-grid-full-adjust new-post-divider">
			</div>	

			<!-- PART 2: Make Post -->	
			<!-- Post Type: Photo -->			
			<div id = "js-make-post-photo" class="hide make-post-area uk-width-1-1 uk-grid-full-adjust">
				<?php include('include_components/lists/list_post/make_post/make_post_photo.php'); ?>
			</div>
						
			<!-- Post Type: Video -->			
			<div id = "js-make-post-video" class="hide uk-width-1-1 uk-grid-full-adjust">
				<?php include('include_components/lists/list_post/make_post/make_post_video.php'); ?>
			</div>
						
			<!-- Post Type: Article -->			
			<div id = "js-make-post-article" class="hide uk-width-1-1 uk-grid-full-adjust">
				<?php include('include_components/lists/list_post/make_post/make_post_article.php'); ?>			
			</div>
						
			<!-- Post Type: Text -->			
			<div id = "js-make-post-text" class="hide uk-width-1-1 uk-grid-full-adjust">
				<?php include('include_components/lists/list_post/make_post/make_post_text.php'); ?>			
			</div>
						
			<!-- Post Type: File -->			
			<div id = "js-make-post-file" class="hide uk-width-1-1 uk-grid-full-adjust">
				<?php include('include_components/lists/list_post/make_post/make_post_link.php'); ?>		
			</div>
					
		</div>


		<!-- MODAL: Footer -->
        <div class="uk-modal-footer">
			<p> &nbsp </p>
		</div>

    </div>
</div>
