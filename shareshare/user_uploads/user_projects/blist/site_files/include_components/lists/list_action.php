<!-- LIST: List Not Selected -->
<?php if($list_id == 0) { ?>

	<div class = "list-header-name-area">
		
		<!-- New List -->
		<a href="#new-list" class = "" data-uk-modal> 
			<p class = "blue-one"> New List </p>
			<?php include('include_components/lists/new_list.php') ?>
		</a>	

	</div>			
		
	<div class = "list-header-action-area">
		
		<a href="groups_lists.php?group_id=<?php echo $group_id_encoded; ?>" class = "lists-header-view-lists-text"> View All Lists </a>	
	
	</div>


<!-- LIST: List Selected -->
<?php } if($list_id != 0) { ?>	
	
	<?php 
	//Get Selected List Name 
	$result_list_selected = mysqli_query($conn,"SELECT * FROM list WHERE list_primary_id = '$list_id'");	
	
	while($row_list_selected = mysqli_fetch_array($result_list_selected )) { 	
		$list_name_selected = $row_list_selected['list_name'];
		$list_name_selected = ucwords($list_name_selected);				
	}	
	?>

	<div class = "list-header-name-area">
		<p class = "lists-header-selected-list-text"> <b>Current List:</b> <?php echo $list_name_selected; ?> </p>
		<a href="groups_lists.php?group_id=<?php echo $group_id_encoded; ?>" class = "lists-header-view-lists-text"> View All Lists </a>
	</div>	
	<div class = "list-header-action-area">
		<?php include('include_components/lists/list_post/new_list_post.php') ?>
	</div>


<?php } ?>	