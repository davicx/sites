<?php

include 'connection.inc.php';

class Comment {
	public $comment_id      = "";
	public $post_id       	= "";
	public $group_id	    = ""; 
	public $comment		    = "";	
	public $comment_from    = ""; 
	public $comment_from_id = "";
	public $comment_from_image      = "";
	public $comment_from_fname      = "";
	public $comment_from_lname      = "";
	public $comment_from_username   = "";
	public $updated 				= "";
	public $created 				= "";
	public $posted_time_display 	= "";
	public $comment_from_user = "";	
	
	//Comment Hierarchy
	public $comment_contains_children = 0;
	public $total_child_comments = 0;
	
	//Time Related 
	public $comment_month = "";
	public $comment_day = "";
	public $comment_time_hours = "";
	public $comment_full_posted_time = "";
	public $comment_time_message = "";
	
	//Comment Likes 
	public $total_likes = "";
	public $liked_by_logged_in_user = ""; //1 means they liked it 0 means they did not 
	public $like_array = array();	

	//Comment Votes 
	public $total_up_votes = "";
	public $total_down_votes = "";	
	public $up_vote_by_logged_in_user = "";	
	public $down_vote_by_logged_in_user = "";		
	
	
	public function __construct($comment_id) {
		$this->post_id = $comment_id;
	}

	//Get all posts by posted to  
	public function getCommentInformation($comment_id) {	
		global $conn;
		
		//Part 1: Get all comment information 
		$result = mysqli_query($conn,"SELECT * FROM comments WHERE comment_id = '$comment_id' ");

		while($row = mysqli_fetch_array($result)) {	
			$comment_from 			= $row['comment_from']; 
			$this->comment_id		= $row['comment_id']; 
			$this->comment_parent	= $row['comment_parent']; 
			$this->comment_level	= $row['comment_level']; 
			$this->comment			= $row['comment']; 
			$this->comment_from 	= $row['comment_from']; 
			$this->comment_to		= $row['comment_to']; 		
			$this->updated 			= $row['updated']; 
			$this->created 			= $row['created']; 
		}
		
	}

	//Get all posts by posted to  
	public function getPostComments($comment_id, $logged_in_user) {
		global $conn;
		
		//Part 1: Get all comment information 
		$result = mysqli_query($conn,"SELECT * FROM comments WHERE comment_id = '$comment_id' ");

		while($row = mysqli_fetch_array($result)) {	
			$comment_from 			= $row['comment_from']; 
			$this->comment_id		= $row['comment_id']; 
			$this->group_id			= $row['group_id']; 
			$this->comment			= $row['comment']; 
			$this->comment_from 	= $row['comment_from']; 
			$this->updated 			= $row['updated']; 
			$this->created 			= $row['created']; 	
			
			//Check if Comment is from Logged in User 
			$logged_in_user_test = strtolower($logged_in_user);
			$comment_from_test  = strtolower($comment_from);	
			
			if (strcasecmp($logged_in_user_test, $comment_from_test) == 0) {
				//echo '$var1 is equal to $var2 in a case-insensitive string comparison';
				$this->comment_from_user = 1;
			} else {
				$this->comment_from_user = 0;
			}
			
			
			//TIME MESSAGE 
			$this->comment_time_message = "Monday, Onid";
			/*
			//Get Post Message for Time Elapsed Since Post (different then above function)
			$current_date = date('m/d/Y h:i:s a', time());	
			$posted_date = $row['created']; 			
			$post_made = new DateTime($posted_date);
			$since_post = $post_made->diff(new DateTime($current_date));
			$hours_since_post = $since_post->h;
			$to_time = strtotime($current_date);
			$from_time = strtotime($posted_date);
			$minutes_since_post_test = round(($to_time - $from_time) / 60,0);
			
			if($minutes_since_post_test < 0) {
				$minutes_since_post = 0;
			} else {
				$minutes_since_post = $minutes_since_post_test;
			}

			$days_since_posted =  $since_post->days;
			$months_since_posted =  $since_post->m;
			$years_since_posted =  $since_post->y;

			$comment_time_message = "";
	

			//YEAR: Poster over a Year Ago
			if($years_since_posted > 0) {
				if($years_since_posted == 1){
					$comment_time_message = "1 Year Ago";
				} else {
					$comment_time_message = $years_since_posted . " Years Ago";
				}
				
			
			//MONTH: Posted Less then a Year Ago						
			} else {
				
				//Posted Over a Month but less then a Year 
				if($months_since_posted > 0) { 
					if($months_since_posted == 1){
						$comment_time_message = "1 Month Ago";
					} else {
						$comment_time_message = $months_since_posted . " Months Ago";
					}						
					
				//DAY: 	
				} else {
					if($days_since_posted > 0) {
						if($days_since_posted == 1){
							$comment_time_message = "1 Day Ago";
						} else {
							$comment_time_message = $days_since_posted . " Days Ago";
						}	
						
					//HOURS: 
					} else {
						if($hours_since_post > 0) { 
							if($hours_since_post == 1){
								$comment_time_message = "1 Hour Ago";
							} else {
								$comment_time_message = $hours_since_post . " Hours Ago";
							}										
						} else {
							
							//MINUTES: 
							if($minutes_since_post > 0) {
								if($minutes_since_post == 1){
									$comment_time_message = "1 Minute Ago";
								} else {
									$comment_time_message = $minutes_since_post . " Minutes Ago";
								}										
							} else {
								$comment_time_message = "";
							}																	
						}						
					}	
				}						
			}
				$this->comment_time_message = $comment_time_message; 			
			*/
			//Get all child comments of this comment 
			/*
			$child_comment_count = 0;
			$child_comment_array = array();

			$result_comments = mysqli_query($conn,"SELECT * FROM comments WHERE comment_parent = '$comment_id' ");

			while($row_comments = mysqli_fetch_array($result_comments)) {	
				$child_comment_array[$child_comment_count] = $row_comments['comment_id'];
				$child_comment_count = $child_comment_count + 1;
			}
			
			$this->comment_child_comments = $child_comment_array;	
			$this->total_child_comments = $child_comment_count;
			*/
		
		}
		
		//Get information about user who made comment 
		$result_user = mysqli_query($conn,"SELECT * FROM user_profile WHERE user_name = '$comment_from' ");

		while($row_user = mysqli_fetch_array($result_user)) {	
			$this->comment_from_id  		= $row_user['user_id']; 
			$this->comment_from_fname  		= $row_user['first_name']; 
			$this->comment_from_lname  		= $row_user['last_name']; 			
			$this->comment_from_username  	= $row_user['user_name']; 	
			$this->comment_from_image 	 	= $row_user['image_name']; 
		}
	
		//LIKES: 
		//Part 1: Create an array of liked Comments
		$result_likes = mysqli_query($conn,"SELECT * FROM comment_likes WHERE comment_id = '$comment_id' ");

		$like_count = 0;
		$like_array = array();
		
		while($row_likes = mysqli_fetch_array($result_likes)) {			
			$like_array[$like_count] = $row_likes['liked_by_name'];
			$like_count = $like_count + 1;		
		}
		
		$this->total_likes = $like_count;
		$this->like_array = $like_array;		

		//Part 2: Check if logged in user liked this 
		if (in_array(strtolower($logged_in_user), $like_array)) {
			$this->liked_by_logged_in_user = 1; //"User was in array ";
		}
		else {
			$this->liked_by_logged_in_user = 0; //"User not in array ";			
		}
		
	}
	
}
			
?>