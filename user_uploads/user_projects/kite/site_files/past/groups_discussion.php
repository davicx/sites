<?php
	//Include Page Header 
	require_once('../../functions/page_header.php');
		
	if(isset($_GET["group_id"])) {
		$group_id = base64_decode($_GET['group_id']);	

	} else {
		header("Location: groups.php");
		die();
	} 
	
	$post_made_to = $group_id;

	//Update Page Analytics 
	$page_url = "group_discussion.php";
	updatePageVisit($page_url, $group_id, $logged_in_user);

	//Update Notifications Table that New Notifications Have Been Seen 
	mysqli_query($conn,"UPDATE notifications SET status_unseen = '0' WHERE 
		notification_to = '$logged_in_user' AND 
		notification_type = 'group_discussion' AND 
		group_id = '$group_id'");
		
	$Current_Group = new Group($group_id);
	$Current_Group->getGroupUsers($logged_in_user, $group_id);
	$Current_Group->groupCreated($logged_in_user, $group_id);
	$group_name = $Current_Group->groupName;	
	$active_group_users_array       = $Current_Group->activeGroupUsers;
	$active_group_users_count 		= count($active_group_users_array);
	$pending_group_users_array	 	= $Current_Group->pendingGroupUsers;
	$pending_group_users_count 		= count($pending_group_users_array);			
	
?>

<!DOCTYPE html>
<html>
    <head>
		
		<!-- Meta Tags -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">		
	    <meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="" />
		<title> Template </title>
		
		<!-- Include all JS and CSS Files -->
		<?php include_once('include_components/links_head.php') ?>
    </head>
	
	<body> 
		
		<!-- SECTION: Header -->
		<header>
			<?php include_once('include_components/headers/header_shareshare/header.php') ?>
		</header>
		
		<!-- MOBILE: Header -->
		<?php include('include_components/headers/header_shareshare/mobile_header.php') ?>
	
		
		<div id = "site-wrapper">
			<div id = "site-wrapper-spacer"> 
				<p> &nbsp </p>
			</div>

			
			<!-- SECTION: Menu Area -->
			<div id = "menu" class = "">
				<?php include('include_components/groups/group_menu.php') ?>
			</div>
			
			<!-- SECTION: Wall --> 
			<div id = "wall" class = "">

				<!-- Discussion -->
				<div id = "discussion-holder">
					<?php include('include_components/discussion/make_discussion.php'); ?>		
					<?php include('include_components/discussion/all_discussions.php'); ?>		
				</div>

			</div>	
		</div>	


		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>		
	</body>
</html>










<?php

/*
	//Include Page Header 
	require_once('../../functions/page_header.php');
	require_once('../../functions/files.php');	
		
	if(isset($_SESSION['authenticated'])){
		//echo "logged in";
	} else {
		header("Location: ../index.php");
		//echo "Current not logged in";
	}	
	
	//Group Information 
	$Current_Group = new Group($group_id);
	$Current_Group->getGroupUsers($logged_in_user, $group_id);
	$Current_Group->groupCreated($logged_in_user, $group_id);
	$group_name = $Current_Group->groupName;	
	
	//Friends of Group
	$group_invitable_friends_array  = $Current_Group->friendsNotInGroup;
	$group_invitable_friends_count  = count($group_invitable_friends_array);	
	$active_group_users_array       = $Current_Group->activeGroupUsers;
	$active_group_users_count 		= count($active_group_users_array);
	$pending_group_users_array	 	= $Current_Group->pendingGroupUsers;
	$pending_group_users_count 		= count($pending_group_users_array);	
	$total_group_users_array   		= $Current_Group->totalGroupUsers;	
	$total_group_users_count   		= $Current_Group->totalUsersCount;	
	$total_user_friends_array		= $Current_Group->userTotalFriends;	
	
	//Group Activity 
	$Current_Group->getGroupActivity($logged_in_user, $group_id);	
	$group_total_unseen_activity = $Current_Group->totalUnseenActivity;	
	$group_total_unseen_wall_posts = $Current_Group->groupWallPostsUnseen;	
	
	//PART 2: Discussion To
	//Type 1: Comment to a Friend
	if (isset($_GET["friend_id"]) && $_GET["friend_id"] != $logged_in_user_id) {
		$visiting_friend_id = $_GET["friend_id"];
		$comment_to = getUserName($visiting_friend_id);		
	//Type 2: Comment to a Group 
	} else if (isset($_GET["group_id"]) && base64_decode($_GET["group_id"]) !=0) {		
		$comment_to = base64_decode($_GET["group_id"]); 		 
	//Type 3: Comment to a List 
	} else if (isset($_GET["list_id"])  && $_GET["list_id"] != 0) {
		//$list_id = base64_decode($_GET['list_id']);	
		$list_id = $_GET['list_id'];	
		$comment_to = $list_id;	
	//Type 4: Me (Visting My Page )		
	} else {
		$comment_to = $logged_in_user;		
	}
		
	//PART 3: Select All Comments
	$result_comments = mysqli_query($conn,"SELECT * FROM comments WHERE comment_to = '$comment_to' 
		AND comment_deleted = 0  
		AND comment_is_child = 0
		ORDER BY created DESC;");	

	$master_site = MASTER_SITE;
	$destination = FILE_UPLOAD;	
	$redirect = "discussion.php";
	$caption = "";
	$post_id = 0;
	$post_type = "";
	$notification_message = "made a comment"; 
	$notification_link = "";
	//echo $group_id;
?>

<!DOCTYPE html>
<html>
    <head>
		<!-- Meta Tags -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="" />
		<title> Template </title>
		
		<!-- Include all JS and CSS Files -->
		<?php include_once('include_components/links_head.php') ?>

    </head>
	
	<body> 
		
		<!-- SECTION: Header -->
		<header>
			<?php include_once('include_components/headers/header.php') ?>
		</header>
		

		<div id = "site-wrapper">
			<div id = "site-wrapper-spacer"> 
				<p> &nbsp </p>
			</div>
			
			<!-- SECTION: Group Menu -->
			<section id = "menu-desktop">
				<?php include_once('include_components/groups/group_menu.php') ?>				
			</section>
 	
			
			<!-- SECTION: Group Wall -->
			<section id = "wall">
				<div class = "discussion-holder">
				<!-- MAKE COMMENT -->
				<?php include('include_components/discussion/make_comment.php') ?>
			
				<!-- ALL COMMENTS -->
				<?php 
				
				while($row_comments = mysqli_fetch_array($result_comments)) {	
					$comment_id = $row_comments['comment_id'];
					$Current_Comment = new Comment($comment_id);
					$Current_Comment->getCommentInformation($comment_id, $logged_in_user);	
					$comment_from = $Current_Comment->comment_from;
					$comment_from_image = getUserImage($comment_from);
					$comment_to = $Current_Comment->comment_to;			
					$comment_caption = $Current_Comment->comment;						
					$comment_has_file = $Current_Comment->comment_has_file;						
					$comment_file_name = $Current_Comment->comment_file_name;						
					$comment_from_display_name = $Current_Comment->comment_from_display_name;						
					$comment_file_name_server = $Current_Comment->comment_file_name_server;		
					$comment_created_message = $Current_Comment->posted_time_message;		
					$file_path 	= FILE_UPLOAD . $comment_file_name_server; 
	
				?>	
					
					<!-- INDIVIDUAL COMMENT -->					
					<div id = "comment_<?php echo $comment_id; ?>" class = "comment ">
						
						<!-- USER: Comment User -->				
						<div class = "comment-user-area">
							<img src="<?php echo USER_IMAGE . $comment_from_image; ?>" alt="" class = "comment-user-image">
						</div>
						
						<!-- COMMENT: Comment Text -->				
						<div id = "" class = "comment-area">
							
							<!-- Header: Comment and User Information -->
							<div class = "comment-header">
								<div class = "comment-poster-name">
									<p class = "comment-poster-name-text"> <?php echo $comment_from_display_name; ?> </p>
								</div>
								<div class = "comment-posted-time">
									<p class = "comment-posted-time-text"> <?php echo $comment_created_message; ?></p>
								</div>
								<div class = "comment-settings">
									<?php include('include_components/discussion/discussion_comment_menu.php') ?>
								</div>							
							</div>		
							
							<!-- Body: Comment Caption -->
							<div id = "js-comment-caption_<?php echo $comment_id; ?>" class = "js-comment-caption comment-body">

								<!-- File Area -->
								<div class = "comment-body-file-area">
			
									<!-- Comment -->
									<p id = "js-current-comment-caption_<?php echo $comment_id; ?>" class = "comment-caption-text"><?php //echo $comment_caption; ?> <?php echo htmlentities($comment_caption, ENT_COMPAT, 'utf-8'); ?></p>
								
									<?php 
										if($comment_has_file == 1) {
									?>

									<!-- File Image -->
									<img title = "Home Page"  class = "comment-file-name-image" src="<?php echo ICON; ?>files/file_878787.png" class = "" alt="">
									
									<!-- File Name -->								
									<a href="download.php?file_download_path=<?php echo urlencode($file_path);?>&file_name=<?php echo $comment_file_name; ?>" id = "" >
										<p class = "comment-file-name-text"><?php echo $comment_file_name; ?></p>
									</a>									

									<?php }  ?>
								</div>
								
								
							</div>	
							
							<!-- Edit Comment -->
							<?php include('include_components/discussion/comment_edit.php') ?>
		
							<!-- Footer:  -->							
							<div class = "comment-footer">
															
								<!-- Reply and Rating Area -->
								<div class = "comment-footer-reply">
									<p id = "js-reply-to-comment_<?php echo $comment_id; ?>" class = "js-reply-to-comment comment-footer-reply-text"> reply </p>
								</div>	
								
								<!-- File Area -->
								<div class = "comment-footer-file">
							
									<?php /*
										if($comment_has_file == 1) {
									?>
									<!-- File Name -->								
									<a href="download.php?file_download_path=<?php echo urlencode($file_path);?>&file_name=<?php echo $comment_file_name; ?>" id = "" >
										<p class = "comment-file-name-text"><?php echo $comment_file_name; ?></p>
									</a>
									
									<!-- File Image -->
									<img title = "Home Page"  class = "comment-file-name-image" src="<?php echo ICON; ?>files/file_878787.png" class = "" alt="">

									<?php }
								</div>
							</div>
						</div>
						
						<!-- REPLY TO COMMENT -->
						<?php include('include_components/discussion/make_comment_child.php') ?>	
						
						<!-- ALL CHILDREN COMMENTS -->
						<?php include('include_components/discussion/comment_children.php') ?>	

						
					</div>	
			
				<?php } ?>
				
				</div>	
			
			</section>

		</div>
		
		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php') ?>		
	</body>
</html>

*/ ?>