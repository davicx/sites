<?php 
	//I am visiting matts page find all his boards that are not Private

	
	//PART 1: Create an Array of all of Current Users Boards (MINE)
	$total_user_boards_array = getUsersBoards($current_page_user_name);
	$total_user_boards_count = count($total_user_boards_array);	

	//PART 2: Create an array of all the boards they are Following (FOLLOWING)
	$total_user_following_boards_array = getBoardsUserIsFollowing($current_page_user_name);
	$total_user_following_boards_count = count($total_user_following_boards_array);	

	//PART 3: Merge Arrays (MERGED)
	$total_groups_following_array = array_merge($total_user_boards_array,$total_user_following_boards_array);
	$total_groups_following_array = array_unique($total_groups_following_array); 
	$total_groups_following_array = array_values($total_groups_following_array);	
	$total_groups_following_count = count($total_groups_following_array);

		
	//PART 4: Loop and Display all Groups Being Followed 
	for($x = 0; $x < $total_groups_following_count; $x++) {

		//Get Board Information 
		$group_id =  $total_groups_following_array[$x];
		$Current_Group = new Group($group_id);
		$Current_Group->getGroupUsers($logged_in_user, $group_id);
		$Current_Group->groupCreated($logged_in_user, $group_id);
		$group_name = $Current_Group->groupName;		
		$group_created_by = $Current_Group->groupCreatedBy;
		$group_created_by_image = getUserImage($group_created_by);
		$group_created_by_logged_in_user = $Current_Group->groupCreatedByLoggedinUser; //1 created by logged in user 0 any other user
		
		if($group_created_by_logged_in_user) {
			$right_click = "js-board-right-click";
			$temp = "white";
		} else {
			$right_click = "js-board-right-click-follow";
			$temp = "";
		}
		
		//Board Followers
		$Current_Group->getGroupFollowStatus($logged_in_user, $group_id);	
		$logged_in_user_following		= $Current_Group->loggedInUserCurrentlyFollowing;	
		$logged_in_user_following_text	= $Current_Group->loggedInUserFollowingText;	
		$group_followers_array			= $Current_Group->groupFollowersArray;	
		$group_followers_count			= $Current_Group->groupFollowersCount;	
	?>

	
		<!-- GROUP -->	
		<div class = "board">
			<a href="kite_individual_board.php?group_id=<?php echo base64_encode($group_id); ?>">
				<p>Name: <b><?php echo $group_name. " "; ?></b></p>		
			</a>
		
			<p>Created By: <b><?php echo $group_created_by. " "; ?></b></p>		
			<!-- Following -->
			<?php include('include_components/boards/group_followers.php'); ?>		
			
		</div>
		
		
		<?php /*
		<div id = "js-board_<?php echo $group_id; ?>" class = "js-board <?php echo $right_click . " " . $temp; ?> group">
			<a href="kite_posts.php?group_id=<?php echo base64_encode($group_id); ?>">
				<div class = "board-user-image-holder">
					<img src="<?php echo USER_IMAGE . $group_created_by_image; ?>" alt="" class = "board-user-image"> 
				</div>
				
				<!-- Group Information -->
				<p>Name <b><?php echo $group_name. " "; ?></b></p>
				
				
				<p>ID <b><?php echo $group_id. " "; ?></b></p>
				<p>Created By <b><?php echo $group_created_by. " "; ?></b></p>
			</a>
			
			<!-- Following -->
			<?php include('include_components/groups/group_followers.php'); ?>				
			
		</div>
		*/ ?>
	
	<?php } ?>


 
 
 
 
 
 