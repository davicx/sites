
////////////////////////	
// Old Code //
////////////////////////



//FUNCTIONS D: All Functions Related to Commenting on Discussions 
/*
//Function : View Comments
$(document).ready(function(){
	$(".js-view-comments").click(function(){	
		//Get Post ID
		var post_full_id = $(this).attr('id');
		var splitParts;
		splitParts = post_full_id.split("_");
		var post_id = splitParts[1];

		$("#js-trigger-view-comments_" + post_id).hide();
		$("#js-view-comments_" + post_id).hide();	
		$("#js-hide-comments_" + post_id).show();	
		$("#js-post-comments_" + post_id).show();		
		
    });
});
*/
/*
//Function : Trigger View Comments
$(document).ready(function(){
	$(".js-trigger-view-comments").click(function(){	
		//Get Post ID
		var post_full_id = $(this).attr('id');
		var splitParts;
		splitParts = post_full_id.split("_");
		var post_id = splitParts[1];
		$("#js-view-comments_" + post_id).click();
    });
});
*/
/*
//Function : Hide Comments
$(document).ready(function(){
	$(".js-hide-comments").click(function(){	
		//Get Post ID
		var post_full_id = $(this).attr('id');
		var splitParts;
		splitParts = post_full_id.split("_");
		var post_id = splitParts[1];

		$("#js-trigger-view-comments_" + post_id).show();
		$("#js-view-comments_" + post_id).show();	
		$("#js-hide-comments_" + post_id).hide();		
		$("#js-post-comments_" + post_id).hide();		

    });
});
*/
//Function D1: Make a Discussion Post 
/*
//Function D2: Cancel Post Comment 
$(document).ready(function(){
	$(".js-cancel-post-comment").click(function(){	
		//Get Post ID
		
		var post_full_id = $(this).attr('id');
		var splitParts;
		splitParts = post_full_id.split("_");
		var post_id = splitParts[1];

		$("#js-create-post-comment_" + post_id).hide();	

		
    });
});
*/

/*
//Function D3: Show add Comment to an Existing Comment 
$(document).ready(function(){
	$(".js-show-reply-comment").click(function(){	
		//Get Post ID
		
		var post_full_id = $(this).attr('id');
		var splitParts;
		splitParts = post_full_id.split("_");
		var comment_id = splitParts[1];
		//alert(comment_id);

		$("#js-reply-to-comment_" + comment_id).show();		
		
    });
});
*/
/*
//Function D4: Show comments responding to a discussion
$(document).ready(function(){
	$(".js-view-discussion-comments").click(function(){	
		//Get Post ID
		var post_full_id = $(this).attr('id');
		var splitParts;
		splitParts = post_full_id.split("_");
		var post_id = splitParts[1];
		$("#js-view-discussion-comments_" + post_id).hide();				
		$("#js-hide-discussion-comments_" + post_id).show();				
		$("#post-comments_" + post_id).show();		
		
    });
});
*/
/*
//Function D5: Hide comments responding to a discussion
$(document).ready(function(){
	$(".js-hide-discussion-comments").click(function(){	
		//Get Post ID
		var post_full_id = $(this).attr('id');
		var splitParts;
		splitParts = post_full_id.split("_");
		var post_id = splitParts[1];

		$("#js-view-discussion-comments_" + post_id).show();				
		$("#js-hide-discussion-comments_" + post_id).hide();				
		$("#post-comments_" + post_id).hide();

    });
});
*/

/*
//Function D6: Like or Unlike a Comment on a Discussion
$(document).ready(function(){
	$(".js_like-comment").click(function(){	
		//Get Post ID
		var post_full_id = $(this).attr('id');
		var splitParts;
		splitParts = post_full_id.split("_");
		var comment_like_action = splitParts[0];
		var comment_id = splitParts[1];
		var logged_in_user = $('input[name=logged-in-user]').val();

		var current_likes_string = $("#js-comment-total-likes_" + comment_id).text();
		var total_likes = parseInt(current_likes_string);
		

		//Like Post 
		if(comment_like_action.localeCompare("like")==0) {

			//Set total like value to new value 
			$.post(CODE_ROOT + 'posts.php', { comment_id: comment_id, logged_in_user: logged_in_user, comment_like_action: comment_like_action }, 
		
			function(data) {
				$("#js-comment-total-likes_" + comment_id).text(total_likes + 1)
				$("#like_" + comment_id).hide();	
				$("#unlike_" + comment_id).show();		

			})

		//Unlike Post 	
		} else {
			
			//Set total like value to new value 
			$.post(CODE_ROOT + 'posts.php', { comment_id: comment_id, logged_in_user: logged_in_user, comment_like_action: comment_like_action }, 
		
			function(data) {
				$("#js-comment-total-likes_" + comment_id).text(total_likes - 1)
				$("#unlike_" + comment_id).hide();
				$("#like_" + comment_id).show();										
			})	
		}

    });
});
*/

/*
//Function D7: Show add Comment to an Existing Post 
$(document).ready(function(){
	$(".js-reply-post-comment").click(function(){	
		//Get Post ID	
		var post_full_id = $(this).attr('id');
		var splitParts;
		splitParts = post_full_id.split("_");
		var post_id = splitParts[1];
		$("#js-create-post-comment_" + post_id).show();	
		
    });
});
*/

/*
//Function D8: Show Edit button when user hovers over comment 
$(document).ready(function(){	
	$(".individual-comment").hover(function(){
		//Show the Edit Icon when they hover over comment 
		var comment_full_id = $(this).attr('id');
		var splitParts;
		splitParts = comment_full_id.split("_");
		var comment_id = splitParts[1]; 
		$("#js-comment-edit-hover-icon_" + comment_id).show();	
		
		//Hide when they leave 
		//alert("in"  + comment_id);
		}, function(){
			var comment_full_id = $(this).attr('id');
			var splitParts;
			splitParts = comment_full_id.split("_");
			var comment_id = splitParts[1]; 
			$("#js-comment-edit-hover-icon_" + comment_id).hide();		
	})
});
*/

/*
//Function D9: Show Edit button when user hovers over Discussion
$(document).ready(function(){	
	$(".individual-discussion").hover(function(){
		//Show the Edit Icon when they hover over comment 
		var discussion_full_id = $(this).attr('id');
		var splitParts;
		splitParts = discussion_full_id.split("_");
		var discussion_id = splitParts[1]; 
	
		$("#js-discussion-post-edit_" + discussion_id).show();			
		//Hide when they leave 
		//alert("in"  + comment_id);
		}, function(){
			var discussion_full_id = $(this).attr('id');
			var splitParts;
			splitParts = discussion_full_id.split("_");
			var discussion_id = splitParts[1]; 

			$("#js-discussion-post-edit_" + discussion_id).hide();		
	}
	)
});
*/

/*
//Function D10: Show Edit button when user hovers over Discussion
$(document).ready(function(){	
	$(".individual-discussion-reply").hover(function(){
		//Show the Edit Icon when they hover over comment 
		var discussion_full_id = $(this).attr('id');
		var splitParts;
		splitParts = discussion_full_id.split("_");
		var discussion_id = splitParts[1]; 
	
		$("#js-discussion-reply-post-edit_" + discussion_id).show();			
		//Hide when they leave 
		//alert("in"  + comment_id);
		}, function(){
			var discussion_full_id = $(this).attr('id');
			var splitParts;
			splitParts = discussion_full_id.split("_");
			var discussion_id = splitParts[1]; 
		
			$("#js-discussion-reply-post-edit_" + discussion_id).hide();		
	}
	)
});

*/



/*
DONT DELETE 
Remove a Post From a Wall May still use 
//Function B5: Remove from Wall 
$(document).ready(function(){
	$("div.remove-post-button").click(function() {
		var $button = $(this);
		var remove_post_id = $(this).attr('id');
		var splitParts;
		splitParts = remove_post_id.split("_");
		var post_type = splitParts[1];		
		var post_id = splitParts[2];

		if (confirm('Are you sure you want to delete this post?')) {		
			$.post(CODE_ROOT + 'make_post.php', { post_id: post_id }, 
			
			function(data) {	
				//This function will hide that post after its been deleted, it uses the post type because each post has a unique id based on post type 	
				$("div#" + post_type + "_" + post_id).hide();
			})
		} else {
			// Don't delete post 
		}		
	});
});
*/

/*
DONT DELETE 
//Function B6: Hide Post  
$(document).ready(function(){
	$(".post-hide-area").unbind('click').bind('click', function (e) {
		var post_id_full = $(this).attr('id');
		var splitParts;
		splitParts = post_id_full.split("_");
		var post_id = splitParts[1];
		$("#full-post_" + post_id).hide();
		$("#post-see-more_" + post_id).show();
		$("#post-new-comments_" + post_id).show();	
			
		e.preventDefault();		

	});
});
*/

/*
//Function B1: Like a Post 
$(document).ready(function(){
	$("input.like-button").click(function(){
		var logged_in_user = $('input[name=logged-in-user]').val();
		var $button = $(this);
		var post_id_full = $(this).attr('id');
		var splitParts;
		splitParts = post_id_full.split("_");
		var unlike_post_id = splitParts[1];
		var current_likes_string = $("#current-post-likes_" + unlike_post_id).text();
		var current_likes = parseInt(current_likes_string);
		
		alert();
		$.post(CODE_ROOT + 'posts.php', { unlike_post_id: unlike_post_id, logged_in_user: logged_in_user }, 
		
		function(data) {
			if(current_likes > 0) {
				current_likes = current_likes - 1;
			} else {
				current_likes = 0;
			}
			$("#current-post-likes_" + unlike_post_id).text(current_likes);	
			$("#like_" + unlike_post_id).hide();
			$("#dislike_" + unlike_post_id).show();	
		})
	});
});


//Function B2: UnLike a Post 
$(document).ready(function(){
	$("input.unlike-button").click(function(){
		var logged_in_user = $('input[name=logged-in-user]').val();
		var $button = $(this);
		var post_id_full = $(this).attr('id');
		var splitParts;
		splitParts = post_id_full.split("_");
		var like_post_id = splitParts[1];
		var current_likes_string = $("#current-post-likes_" + like_post_id).text();
		var current_likes = parseInt(current_likes_string);
		$.post(CODE_ROOT + 'posts.php', { like_post_id: like_post_id, logged_in_user: logged_in_user  }, 
		
		function(data) {
			current_likes = current_likes + 1;
		//	$("#current-post-likes_" + like_post_id).text(current_likes.replace(/^0+/, ''));	
			//$("#current-post-likes_" + like_post_id).hide();	
			$("#current-post-likes_" + like_post_id).text(current_likes);		
			$("#like_" + like_post_id).show();
			$("#dislike_" + like_post_id).hide();		
		
		})
	});
});

*/

//Function B3: Delete Post 
/*
$(document).ready(function(){
	$("div.delete-post-button").click(function() {

		var $button = $(this);
		var delete_post_id = $(this).attr('id');
		var splitParts;
		splitParts = delete_post_id.split("_");
		var post_type = splitParts[1];		
		var post_id = splitParts[2];

		
		if (confirm('Function B3: Are you sure you want to delete this post?')) {
			$.post(CODE_ROOT + 'make_post.php', { post_id: post_id }, 
			
			function(data) {	
				//This function will hide that post after its been deleted, it uses the post type because each post has a unique id based on post type 	
				$("div#" + post_type + "_" + post_id).hide();
				
				//$("button#request_canceled_" + cancel_request_id).show();
			})
		} else {
			// Don't delete post 
		}	
	

	});
});
*/

//Function B5: Purchase Item 
/*
//Function B6: Cancel Purchase Item 
$(document).ready(function() {
    $('.js_cancel-purchase_item').change(function() {
		var post_full_id = $(this).attr('id');
		var splitParts;
		splitParts = post_full_id.split("_");
		var post_id = splitParts[1];
		var cancel_purchase_user = $('input[name=logged-in-user-purchase]').val();;

		$.post(CODE_ROOT + 'posts.php', { post_id: post_id, cancel_purchase_user: cancel_purchase_user }, 
		
		function(data) {
			window.location=window.location;
		})
    });
});
*/

/* $(document).ready(function() {
    $('.js_purchase_item').change(function() {
		var post_full_id = $(this).attr('id');
		var splitParts;
		splitParts = post_full_id.split("_");
		var post_id = splitParts[1];
		var purchase_user = $('input[name=logged-in-user-purchase]').val();;

		$.post(CODE_ROOT + 'posts.php', { post_id: post_id, purchase_user: purchase_user }, 
		
		function(data) {
			$("#js_item-purchased-" +  post_id).show();		
		})
    });
});

//Function A20: Delete a Comment 
/*
$(document).ready(function(){
	$("div.comment-edit-menu-holder").unbind('click').bind('click', function (e) {
		var comment_id_full = $(this).attr('id');
		var splitParts;
		splitParts = comment_id_full.split("_");
		var comment_id = splitParts[1];
		//alert(comment_id);

	});
	
});

//Function B9: Cancel Vote  
$(document).ready(function(){
	$(".js-cancel-vote").click(function(){	
		//Get Post ID
		var post_full_id = $(this).attr('id');
		var splitParts;
		splitParts = post_full_id.split("_");
		var post_action = splitParts[0];
		var post_id = splitParts[1];
		var logged_in_user = $('input[name=logged-in-user]').val();		

		//Action 1: Cancel Up Vote 
		if(post_action.localeCompare("js-cancel-up-vote")==0) {
   			var cancel_up_vote = post_action;
   			var cancel_up_id = post_id;
			
			$.post(CODE_ROOT + 'posts.php', { cancel_up_vote: cancel_up_vote, cancel_up_id: cancel_up_id, logged_in_user: logged_in_user }, 

			function(data) {
				var tempScrollTop = $(window).scrollTop();
				location.reload(); 
				$(window).scrollTop(tempScrollTop);	
			
			})		

		//Action 2: Cancel Up Vote and Vote Down
		} else if (post_action.localeCompare("js-cancel-up-vote-down")==0){			
   			var cancel_up_vote_down = post_action;
   			var cancel_up_vote_down_id = post_id;
			
			$.post(CODE_ROOT + 'posts.php', { cancel_up_vote_down: cancel_up_vote_down, cancel_up_vote_down_id: cancel_up_vote_down_id, logged_in_user: logged_in_user }, 

			function(data) {
				var tempScrollTop = $(window).scrollTop();
				location.reload(); 
				$(window).scrollTop(tempScrollTop);	
				
			})				

		//Action 3: Cancel Down Vote
		} else if (post_action.localeCompare("js-cancel-down-vote")==0) {
			var cancel_down_vote = post_action;
   			var cancel_down_id = post_id;
			
			$.post(CODE_ROOT + 'posts.php', { cancel_down_vote: cancel_down_vote, cancel_down_id: cancel_down_id, logged_in_user: logged_in_user }, 

			function(data) {
				var tempScrollTop = $(window).scrollTop();
				location.reload(); 
				$(window).scrollTop(tempScrollTop);	
			
			})	
			

		//Action 4: Cancel Down Vote and Vote Up 
		} else {
			var cancel_down_vote_up = post_action;
   			var cancel_down_vote_up_id = post_id;
			
			$.post(CODE_ROOT + 'posts.php', { cancel_down_vote_up: cancel_down_vote_up, cancel_down_vote_up_id: cancel_down_vote_up_id, logged_in_user: logged_in_user }, 

			function(data) {
				var tempScrollTop = $(window).scrollTop();
				location.reload(); 
				$(window).scrollTop(tempScrollTop);	
			
			})	
		 
		}

    });
});

*/


//Function A1: Make a Post  
/* ???
$(document).ready(function(){
	$("button.js_make-post").click(function(){	
		//Get Post Type 
		var post_type = $(this).attr('id');
		
		alert(post_type);
		
    });
});

*/


/*

//Function A15: Make a Group Text Post 
$(document).ready(function(){
	//$("button#add-message-submit").click(function(){	
	$("button#add-message-submit").unbind('click').bind('click', function (e) {
		var user_name_text = $('input[name=logged-in-user]').val();
		var friend_page_user= $('input[name=friend-page-user]').val();
		var text_comment = $('input[name=text-comment]').val();
		var square_id = $('input[name=friend-page-square-id]').val();

		
		var post_type = "text";							
		//alert(user_name_text + " "  +  friend_page_user  + " "  +   text_comment  + " "  +   post_type);
		
		//Check if user entered something 
		if (text_comment) {

			$.post(CODE_ROOT + 'make_post_group.php', { square_id: square_id, user_name_text: user_name_text, friend_page_user: friend_page_user, text_comment: text_comment, post_type: post_type }, 
			
			function(data) {

				$('.uk-modal-close').click();
				$('#add-text-comment').val("");
				$("div#text-comment-warning").hide();
				location.reload();
			});	
				
		} else {
			$("div#text-comment-warning").show();
			//do this with a div not alert 
			
		}
		
    });
});

//Function A14: Hide Post Does this do anything?  
$(document).ready(function(){
	$("button.hide-post-button").click(function() {
		var $button = $(this);
		var hide_post_id = $(this).attr('id');
		var splitParts;
		splitParts = hide_post_id.split("_");
		var post_id = splitParts[1];
		alert();
		/*
		//alert(friend_id + " "  + logged_in_user);
		$.post('../functions/user_functions.php', { cancel_request_id: cancel_request_id,  logged_in_user: logged_in_user}, 
		
		function(data) {		
			//$("div#pending_" + cancel_request_id).hide();
			//$("button#request_canceled_" + cancel_request_id).show();
		})
		*//*
	});
});
*/
//Function A8: Make a Comment  
/*
$(document).ready(function(){
	$("button.make-comment").unbind('click').bind('click', function (e) {			
		var $button = $(this);
		var make_post_full = $(this).attr('id');
		var splitParts;
		splitParts = make_post_full.split("_");
		var post_id_comment = splitParts[1];
	    var comment = $('textarea#comment_' + post_id_comment).val();
		var current_user = $('#current_user_' + post_id_comment).val();
		
	
		$.post(CODE_ROOT + 'make_post.php', { post_id_comment: post_id_comment, comment: comment, current_user: current_user }, 
		
		function(data) {
			//Set Comment input area to blank 
			$("#post_comment_" + post_id_comment).load("wall.php #post_comment_" + post_id_comment);	
			$("#comment_" + post_id_comment).val('');
			
			
			$("#full-post_" + post_id).show();
			//$("#post-see-more_" + post_id).hide();	
			//$("#post-new-comments_" + post_id).hide();		
			
		
			//$("div#" + post_type + "_" + post_id).hide();
			//$("button#request_canceled_" + cancel_request_id).show();
		})
		
	});
});

*/


/*

//Function C2: Make a Comment on a Post with a File 
//Part 1: Trigger Browse for File and Hide Normal Discussion Submit Button 
$(document).ready(function(){
	$("#js-trigger-browse-for-file-comment").click(function(){	

		//Hide Original Submit Button and Add Submit File with Comment Button 	
		$(".js-submit-comment").hide();
		$("#js-submit-comment-with-file").show();
		$('#js-trigger-upload-file-comment').show();
		
		//Change text on button and trigger upload 
		$('#js-trigger-browse-for-file-comment').text("Change File");
		$('#js-browse-for-file-comment').click();
		
    });
});

//Part 2: Listen for Current File Name and Display on Page 
//*executes above in Function A8

//Part 3: Trigger File Upload to Server 
$(document).ready(function(){
	$("#js-trigger-upload-file-comment").click(function(){
		
		//Make Sure Comment is not Empty  
		var new_comment = $("#js-new-comment-text-area").val();		
		
		//Check that an article was entered 	
		if (new_comment) {
			$('#js-file-upload-submit-comment').click();
		} else {
			$('#js-new-comment-empty').show();			
		}
		
	});
});
*/