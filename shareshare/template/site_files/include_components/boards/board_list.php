<?php 

$sql = "SELECT * FROM boards WHERE group_id = '$group_id' AND active_status = 1
		ORDER BY board_name DESC";
	$result = $conn->query($sql) or die(mysqli_error());

	while($row = mysqli_fetch_array($result)) {		

		//All Post Individual Information  
		$board_id 	= $row['board_id'];
		$board_name = $row['board_name'];
		$group_id	= $row['group_id'];
		$created_by = $row['created_by_name'];
?> 
<a href="groups_posts.php?group_id=<?php echo base64_encode($group_id); ?>&board_id=<?php echo $board_id;?>">
	<p class = "no-margin"><?php echo $board_name; ?> </p>			
</a>		
	
<?php } ?>


<?php

/*
<a href="groups_posts.php?group_id=<?php echo base64_encode($group_id); ?>">
	<p class = "no-margin"> Group Name: <?php echo $group_name; ?> (<?php echo $group_id; ?>) </p>			
</a>		

		
//STEP 1: Get All Groups 
$groups_array = getUsersGroups($logged_in_user);
$groups_array_count = count($groups_array);

//STEP 2: Loop Through and List All Groups 
for($x = 0; $x < $groups_array_count; $x++) {
	$group_id =  $groups_array[$x];
	
	$Current_Group = new Group($group_id);
	$Current_Group->getGroupUsers($logged_in_user, $group_id);
	$Current_Group->groupCreated($logged_in_user, $group_id);
	$active_group_users_array       = $Current_Group->activeGroupUsers;
	$active_group_users_count 		= count($active_group_users_array);
	$group_name = $Current_Group->groupName;	
	$Current_Group->getGroupLastVisit($logged_in_user, $group_id);	
	$group_last_visit = $Current_Group->groupLastVisit;

	?>

	<!-- Individual Group -->
	<div id = "js-group_<?php echo $group_id; ?>" class = "group  ">
		
		<!-- Group Name -->
		<a href="groups_posts.php?group_id=<?php echo base64_encode($group_id); ?>">
			<p class = "no-margin"> Group Name: <?php echo $group_name; ?> (<?php echo $group_id; ?>) </p>			
		</a>		

		<!-- Group Information -->
		<p class = "no-margin"> Last Visit: <?php echo $group_last_visit; ?> </p>			
		<p class = "no-margin"> Members: </p>			
		<?php for($i = 0; $i < $active_group_users_count; $i++) {?>
			<p class = "no-margin"> <?php echo $active_group_users_array[$i]; ?> </p>				
		<?php }?><hr /> 	
		
		<!-- Group New Discussions -->		
		<?php include('include_components/notifications/new_discussion_count.php'); ?><hr />
				
		<!-- Group New Posts -->		
		<?php include('include_components/notifications/new_post_count.php'); ?><hr />				
		
		<!-- Group New Files -->		
		<?php include('include_components/notifications/new_file_count.php'); ?><hr />
		
		<!-- Leave Group -->		
		<p id = "js-group-leave_<?php echo $group_id; ?>" class = "js-group-leave"> Leave </p>
		
		<!-- Hidden Fields -->
		<input type="hidden" name="logged-in-user"  id = "" value = "<?php echo $logged_in_user; ?>"> 		
	</div>	

<?php } ?>



	<!-- Individual Group -->
	<?php /*
	<div id = "js-group_<?php echo $group_id; ?>" class = "group js-group-right-click">
				
		<a href="groups_individual.php?group_id=<?php echo base64_encode($group_id); ?>">
			<p class = "no-margin"> <?php echo $group_name; ?> </p>		
		</a>
		<p class = "no-margin"> Group ID: <?php echo $group_id; ?> </p>
		<p class = "no-margin">Group Last Visit: <?php //echo $group_last_visit; ?> </p><hr />
		<p class = "no-margin"> <b> Group Users: </b></p> 
 
		
		<?php //include('include_components/notifications/new_discussion_count.php'); ?>	


	</div>	
	
<?php } */ ?>


