//FUNCTIONS TABLE OF CONTENTS//
/*

FUNCTIONS A: All Functions Related to Making a Post
	1) Function A1: Post Text (or Discussion) 
	2) Function A2: Post a Photo
 	3) Function A3: Post a Video
	4) Function A4: Post an Article 
	5) Function A5: Post an File 
	
FUNCTIONS B: All Functions Related to Post Actions 
	1) Function B1: Like a Post 
	2) Function B2: UnLike a Post 	
	3) Function B3: Delete a Post  	
	
FUNCTIONS C: All Functions Related to Commenting on a Post 
	1) Function C1: Make a New Comment 
	2) Function C2: Edit a Comment
	3) Function C3: Delete a Comment 
	
*/ 

//Development Code Root
var CODE_ROOT = "../../functions/";

//Live Code Root 
//var CODE_ROOT = "../functions/";

		
//FUNCTIONS B: All Functions Related to Post Actions 
//Function B1: Like a Post 
$(document).ready(function(){
	$(".js-like-post").click(function(){	
		//Get Post ID
		var post_full_id = $(this).attr('id');
		var splitParts;
		splitParts = post_full_id.split("_");
		var post_id = splitParts[1];
		var logged_in_user = $('input[name=logged-in-user]').val();
		var like_post = "true";
		var current_likes_string = $("#js-total-likes_" + post_id).text();
		var total_likes = parseInt(current_likes_string);
	
		$.post(CODE_ROOT + 'posts.php', { post_id: post_id, logged_in_user: logged_in_user, like_post: like_post}, 
	
		function(data) {
			$("#js-total-likes_" + post_id).text(data);
			$("#js-like-post_" + post_id).hide();	
			$("#js-unlike-post_" + post_id).show();		
			console.log(data);
			//$("#js-total-likes_" + post_id).text(total_likes + 1)
			//$("#like_" + post_id).hide();	
			//$("#unlike_" + post_id).show();						
		})

		//console.log("LIKE " + post_id + " " +  current_likes_string + " " + total_likes + " " + logged_in_user);


    });
});

//Function B2: UnLike a Post 
$(document).ready(function(){
	$(".js-unlike-post").click(function(){	
		//Get Post ID
		var post_full_id = $(this).attr('id');
		var splitParts;
		splitParts = post_full_id.split("_");
		var post_id = splitParts[1];
		var logged_in_user = $('input[name=logged-in-user]').val();
		var unlike_post = "true";
		var current_likes_string = $("#js-total-likes_" + post_id).text();
		var total_likes = parseInt(current_likes_string);
		
		//Set total like value to new value 
		$.post(CODE_ROOT + 'posts.php', { post_id: post_id, logged_in_user: logged_in_user, unlike_post: unlike_post }, 
	
		function(data) {
			$("#js-total-likes_" + post_id).text(data);	
			$("#js-unlike-post_" + post_id).hide();
			$("#js-like-post_" + post_id).show();
			//$("#js-total-likes_" + post_id).text(total_likes - 1)
			//$("#unlike_" + post_id).hide();
			//$("#like_" + post_id).show();					
		})		
		//console.log("LIKE " + post_id + " " +  current_likes_string + " " + total_likes + " " + logged_in_user);
    });
});

//Function B3: Delete a Post  	
$(document).ready(function(){
	$(".js-post-delete").click(function(){	
		//Get Post ID
		var post_full_id = $(this).attr('id');
		var splitParts;
		splitParts = post_full_id.split("_");
		var delete_post_id = splitParts[1];

		if (confirm('Are you sure you want to delete this post?')) {		
			$.post(CODE_ROOT + 'posts.php', { delete_post_id: delete_post_id }, 
			
			function(data) {
				$("#js-post_" + delete_post_id).fadeOut(140);	
			})
			
		} else {
			// Don't delete post 
		}	

    });
});

//Function B4: Edit Post Caption (Show Edit Area) 
$(document).ready(function(){
	$(".js-post-edit").click(function(){	
		//Step 1: Get All Variables 
		var post_full_id = $(this).attr('id');
		var splitParts;
		splitParts = post_full_id.split("_");
		var post_id = splitParts[1];
	    var current_post_caption = $("#js-post-caption_" + post_id).text();
		
		$(".js-post-setting-menu").hide();
		$(".js-post-caption-edit-area").hide();
		$(".js-post-caption-area").show();
		$("#js-post-caption-area_" + post_id).hide();		
		$("#js-post-caption-edit-area_" + post_id).show();		


    });
});

//Function B4: Edit Post Caption (Cancel Edit) 
$(document).ready(function(){
	$(".js-cancel-edit-caption").click(function(){	
	
		$(".js-post-setting-menu").hide();
		$(".js-post-caption-edit-area").hide();
		$(".js-post-caption-area").show();
    });
});

//Function B4: Edit Post Caption (Save New Caption) 
$(document).ready(function(){
	$(".js-save-new-caption").click(function(){	
		var post_full_id = $(this).attr('id');
		var splitParts;
		splitParts = post_full_id.split("_");
		var post_id = splitParts[1];
		var logged_in_user   = $('input[name=logged-in-user]').val();	
		var new_post_caption = $("#js-new-post-caption_" + post_id).val();

		$.post(CODE_ROOT + 'posts.php', { post_id: post_id, logged_in_user: logged_in_user, new_post_caption: new_post_caption }, 

		function(data) {
			//console.log(data);
			$("#js-post-caption_" + post_id).text(new_post_caption);
			$(".js-post-caption-edit-area").hide();
			$(".js-post-caption-area").show();
		})
	
		//console.log(new_post_caption + " " + logged_in_user);
    });
});



//FUNCTIONS C: All Functions Related to Commenting on a Post 

//Function C1: Make a New Comment 
 $(document).ready(function(){
    $(".js-submit-comment").click(function() {
		console.log("new comment");
 
		/*
		var post_full_id = $(this).attr('id');
		var splitParts;
		splitParts = post_full_id.split("_");
		var post_id = splitParts[1];	
		var logged_in_user   = $('input[name=logged-in-user]').val();	
		var new_comment		 = $("#js-new-comment_" + post_id).val();	
			
		console.log(post_id + " " + new_comment);	
		
		//Check that an article was entered 	
		if (new_comment) {

			//Submit new Comment 
			$.post(CODE_ROOT + 'posts.php', { post_id: post_id, logged_in_user: logged_in_user, new_comment: new_comment }, 

			function(data) {
				//alert(data);
				var tempScrollTop = $(window).scrollTop();
				location.reload(); 
				$(window).scrollTop(tempScrollTop);	
			})
		
		//Error: No Comment Entered 
		} else {
			//$('#js-new-comment-empty').show();			
		}

		e.preventDefault();
		*/
		//submit form via ajax, this is not JS but server side scripting so not showing here
		//$("#chatbox").append($(this).val() + "<br/>");
		//$(this).val("");


    });
});
	

/*
//Function C1: Make a New Comment 
 $(document).ready(function(){
    $(".js-new-comment").keypress(function (e) {
		console.log("new comment");
        if(e.which == 13) {
			console.log("new comment");
			 
			var post_full_id = $(this).attr('id');
			var splitParts;
			splitParts = post_full_id.split("_");
			var post_id = splitParts[1];	
			var logged_in_user   = $('input[name=logged-in-user]').val();	
			var new_comment		 = $("#js-new-comment_" + post_id).val();	
				
			console.log(post_id + " " + new_comment);	
			
			//Check that an article was entered 	
			if (new_comment) {

				//Submit new Comment 
				$.post(CODE_ROOT + 'posts.php', { post_id: post_id, logged_in_user: logged_in_user, new_comment: new_comment }, 

				function(data) {
					//alert(data);
					var tempScrollTop = $(window).scrollTop();
					location.reload(); 
					$(window).scrollTop(tempScrollTop);	
				})
			
			//Error: No Comment Entered 
			} else {
				//$('#js-new-comment-empty').show();			
			}
	
			e.preventDefault();
		 
			//submit form via ajax, this is not JS but server side scripting so not showing here
            //$("#chatbox").append($(this).val() + "<br/>");
            //$(this).val("");

        }
    });
});
	*/
//Function C2: Edit a Comment(Show Edit Area) 
$(document).ready(function(){
	$(".js-comment-edit").click(function(){	
	
		//Get Comment ID
		var comment_full_id = $(this).attr('id');
		var splitParts;
		splitParts = comment_full_id.split("_");
		var comment_id = splitParts[1];	
		
		//Hide Any Open Edit Boxes and Show Comment
		$(".js-comment-setting-menu").hide();	
		$(".js-comment-caption-edit").hide();		
		$(".js-comment-caption").show();	

		//Hide Comment and Show Edit Comment 
		$("#js-comment-caption_" + comment_id).hide();	
		$("#js-comment-caption-edit_" + comment_id).show();		
		
		console.log(comment_id);
    });
});

//Function C2: Edit a Comment(Cancel Edit) 
$(document).ready(function(){
	$(".js-comment-cancel-edit").click(function(){	
				
		$(".js-comment-setting-menu").hide();		
		$(".js-comment-caption-edit").hide();		
		$(".js-comment-caption").show();			
		
    });
});

//Function C2: Edit Comment (Save New Caption) 
$(document).ready(function(){
	$(".js-comment-save").click(function(){	
		//Get Comment ID
		var comment_full_id = $(this).attr('id');
		var splitParts;
		splitParts = comment_full_id.split("_");
		var comment_id = splitParts[1];
		var comment_caption_edited = $("#js-comment-edit-text-area_" + comment_id).val();

		$.post(CODE_ROOT + 'posts.php', { comment_id: comment_id, comment_caption_edited: comment_caption_edited }, 

		function(data) {
			
			//Update the New Comment 
			$("#js-comment-caption-text_" + comment_id).text(comment_caption_edited);
			
			$(".js-comment-setting-menu").hide();		
			$(".js-comment-caption-edit").hide();		
			$(".js-comment-caption").show();
						
		})

    });
});


//Function C3: Delete a Comment 
$(document).ready(function(){
	$(".js-comment-delete").click(function(){	
		
		//Get Comment ID
		var comment_full_id = $(this).attr('id');
		var splitParts;
		splitParts = comment_full_id.split("_");
		var delete_comment_id = splitParts[1];	

		if (confirm('Are you sure you want to delete this post?')) {		
			$.post(CODE_ROOT + 'posts.php', { delete_comment_id: delete_comment_id }, 
			
			function(data) { 
				//$("#js-comment-child_"  + delete_comment_id).hide();			
				//$("#comment_" + delete_comment_id).hide();
				$("#js-comment_" + delete_comment_id).hide();


			})
			
		} else {
			// Don't delete Comment 
		}	

    });
});


	
//FUNCTIONS A: All Functions Related to Making a Post
//Function A1: Post Text (or Discussion) 
$(document).ready(function(){
	$("#js-add-text-submit").click(function(){	
		var post_comment = $("#js-post-text-caption").val();	
		var post_text_from = $('input[name=post-from]').val();
		var post_to = $("#js-post-text-to").val();		
		var parent_folder = $('input[name=parent]').val();		
		var group_id = $('input[name=group-id]').val();					
		var list_id = $('input[name=list-id]').val();		
		var post_type = $("#js-post-text-type").val();
		var notification_message = $("#js-text-notification-message").val();
		var notification_type = $("#js-text-notification-type").val();
		var notification_link = $("#js-text-notification-link").val();

		//console.log(text_item_title + "  " + text_item_link + "  " + text_item_description );
		var master_site = $('input[name=master-site]').val();

		//Check if user entered something 
		if (post_comment) {
			$.post(CODE_ROOT + 'posts.php', {
				post_text_from: post_text_from, 
				post_to: post_to, 
				post_comment: post_comment,  
				parent_folder: parent_folder,
				group_id: group_id, 
				list_id: list_id, 				
				post_type: post_type, 
				notification_message: notification_message, 
				notification_type: notification_type, 
				notification_link: notification_link, 
				master_site: master_site
				}, 
			
			function(data) {
				console.log(data);
				//$('.uk-modal-close').click();
				var tempScrollTop = $(window).scrollTop();
				location.reload(); 
				//window.location=window.location;
			});	
			
		} else {
			$("#js-text-comment-warning").show();
		}
    });
});

//Function A2: Post a Photo
//Trigger Browse for File 
$(document).ready(function(){
	$("#js-trigger-browse-for-post-photo").click(function(){
		$('#js-trigger-browse-for-post-photo').text("Change File (+)");
		$('#js-browse-for-post-photo').click();
	});
});

//Trigger Upload File 
$(document).ready(function(){
	$("#js-trigger-upload-post-photo").click(function(){	
		if(document.getElementById("js-browse-for-post-photo").value != "") {
			$('.js-error-no-file-selected').hide();
			$('#js-post-photo-upload-submit').click();
		} else {
			$('.js-error-no-file-selected').show();
		}
    });
});


//Function A3: Post a Video
$(document).ready(function(){
	$("#js-make-post-video-submit").click(function(){	
		var master_site = $('input[name=master-site]').val();
		var logged_in_user = $('input[name=logged-in-user]').val();	
		var video_url = $('input[name=video-url]').val();		
		var video_caption = $("textarea#js-post-video-caption").val();		
		var group_id = $('input[name=group-id]').val();					
		var list_id = $('input[name=list-id]').val();	
		var post_from_video = $('input[name=post-from]').val();	
		var post_to = $('input[name=post-to]').val();
		var notification_message = $("#js-notification-message-video").val();
		var notification_link = $("#js-notification-link-video").val();
		var notification_type = $('#js-notification-type-video').val();			
		var post_type = "video";
	

		//Check if URL is a valid URL
		var outcome = validateURL(video_url);	
		var outcome = outcome * 1;
			console.log(notification_message + " " + notification_link + " " + notification_type + " Outcome: " + outcome);
		
		//console.log(master_site + " " + logged_in_user + " " + video_url + " " + video_caption + " " + group_id + " " +  list_id + " " + 
		//post_from_video + " " + post_to + " " + notification_message + " " + notification_link + " " + notification_type + " Outcome: " + outcome);

		//Youtube
		if(outcome == 1) {
			
			$.post(CODE_ROOT + 'posts.php', { 
				post_from_video: post_from_video, 
				post_to: post_to, 
				video_url: video_url, 
				group_id: group_id,
				list_id: list_id,				
				video_caption: video_caption, 			
				notification_message: notification_message,
				notification_type: notification_type,
				notification_link: notification_link,
				master_site: master_site,						
				post_type: post_type
				}, 
				
			function(data) {
				console.log(data);
				//$('.uk-modal-close').click();/
 				//var tempScrollTop = $(window).scrollTop();
				location.reload();
				//window.location=window.location;				
				//console.log(data);
			})
		} else {
			$("#js-video-comment-warning").show();
		} 
	
		//Vimeo
		
		//Other 

    });
});

//Function A4: Post an Article 
//Trigger Browse for File 
$(document).ready(function(){
	$("#js-trigger-browse-for-post-article").click(function(){
		$('#js-trigger-browse-for-post-article').text("Change File (+)");
		$('#js-browse-for-post-article').click();
		$("#js-error-no-link").hide();
	});
});

//Trigger Upload File 
$(document).ready(function(){
	$("#js-trigger-upload-post-article").click(function(){	
		var article_link = $("#js-article-link").val();
		if (article_link) {
			//alert(article_link); 
			$('#js-post-article-upload-submit').click();
		} else {
			//alert("LINK " + article_link);
			$("#js-error-no-article-link").show();
		}	
		
    });
});

 
//Function A5: Post an File 
//Trigger Browse for File 
$(document).ready(function(){
	$("#js-trigger-browse-for-post-file").click(function(){
		$('#js-trigger-browse-for-post-file').text("Change File (+)");
		$('#js-browse-for-post-file').click();
	});
});

//Trigger Upload File 
$(document).ready(function(){
	$("#js-trigger-upload-post-file").click(function(){	
		if(document.getElementById("js-browse-for-post-file").value != "") {
			$('.js-error-no-file-selected').hide();
			$('#js-post-file-upload-submit').click();
		} else {
			$('.js-error-no-file-selected').show();
		}
    });
});


//FUNCTIONS UI: All Functions Related to UI 
//Function UI.1: Show Make Photo
$(document).ready(function(){
	$("#js-post-select-photo").click(function(){	
		
		$(".js-new-post-selected-type").removeClass("post-selected ");
		$("#js-new-post-selected-type-photo").addClass("post-selected ");

		$(".new-post-divider").show();		
		$("#js-make-post-video").hide();		
		$("#js-make-post-article").hide();		
		$("#js-make-post-text").hide();		
		$("#js-make-post-file").hide();		
		$("#js-make-post-photo").show();		
	
    });
});

//Function UI.2: Show Make Video
$(document).ready(function(){
	$("#js-post-select-video").click(function(){
		
		$(".js-new-post-selected-type").removeClass("post-selected ");
		$("#js-new-post-selected-type-video").addClass("post-selected ");		
		
		$(".new-post-divider").show();	
		$("#js-make-post-article").hide();		
		$("#js-make-post-text").hide();		
		$("#js-make-post-file").hide();		
		$("#js-make-post-photo").hide();
		$("#js-make-post-video").show();	
    });
});

//Function UI.3: Show Make Article
$(document).ready(function(){
	$("#js-post-select-article").click(function(){		
	
		$(".js-new-post-selected-type").removeClass("post-selected ");
		$("#js-new-post-selected-type-article").addClass("post-selected ");
		
		$(".new-post-divider").show();		
		$("#js-make-post-text").hide();		
		$("#js-make-post-file").hide();		
		$("#js-make-post-photo").hide();
		$("#js-make-post-video").hide();	
		$("#js-make-post-article").show();			
		
    });
});

//Function UI.4: Show Make Text
$(document).ready(function(){
	$("#js-post-select-text").click(function(){	

		$(".js-new-post-selected-type").removeClass("post-selected ");	
		$("#js-new-post-selected-type-text").addClass("post-selected ");
		
		$(".new-post-divider").show();		
		$("#js-make-post-article").hide();			
		$("#js-make-post-file").hide();		
		$("#js-make-post-photo").hide();
		$("#js-make-post-video").hide();	
		$("#js-make-post-text").show();		
    });
});

//Function UI.5: Show Make File
$(document).ready(function(){
	$("#js-post-select-file").click(function(){	

		$(".js-new-post-selected-type").removeClass("post-selected ");	
		$("#js-new-post-selected-type-file").addClass("post-selected ");
		
		$(".new-post-divider").show();		
		$("#js-make-post-article").hide();		
		$("#js-make-post-text").hide();		
		$("#js-make-post-photo").hide();
		$("#js-make-post-video").hide();	
		$("#js-make-post-file").show();			
    });
});

//Function UI.6: Show Edit Post on Hover over Post 
$(document).ready(function(){
    $(".js-post-edit-trigger-icon").hover(function(){

		//Post is Active 
		var post_full_id = $(this).attr('id');
		var splitParts;
		splitParts = post_full_id.split("_");
		var post_id = splitParts[1];
		
		$("#js-edit-post-trigger_" + post_id).fadeIn(175);

			
		//Post is Hidden
        }, function(){
			var post_full_id = $(this).attr('id');
			var splitParts;
			splitParts = post_full_id.split("_");
			var post_id = splitParts[1];			
			
			if($("#js-edit-post-menu_" + post_id).is(":visible")) {
				$("#js-edit-post-trigger_" + post_id).show();	
			} else {
				$("#js-edit-post-trigger_" + post_id).fadeOut(175);				
			}	

    });
});

//Function UI.7: Show Make Comment Area
$(document).ready(function(){
	$(".js-show-comments").click(function(){	
 
		var post_full_id = $(this).attr('id');
		var splitParts;
		splitParts = post_full_id.split("_");
		var post_id = splitParts[1];
 
		$("#js-show-comments-image_" + post_id).hide();	
		$("#js-hide-comments-image_" + post_id).show();
		
		$("#js-show-comments_" + post_id).hide();	
		$("#js-hide-comments_" + post_id).show();	
		$("#js-post-comments_" + post_id).show();	
				
    });
});

//Function UI.8: Hide Make Comment Area
$(document).ready(function(){
	$(".js-hide-comments").click(function(){	
	
		var post_full_id = $(this).attr('id');
		var splitParts;
		splitParts = post_full_id.split("_");
		var post_id = splitParts[1];		

		$("#js-hide-comments-image_" + post_id).hide();
		$("#js-show-comments-image_" + post_id).show();	
				
		$("#js-hide-comments_" + post_id).hide();	
		$("#js-show-comments_" + post_id).show();	
		$("#js-post-comments_" + post_id).hide();		
    });
});
 
//Function UI.9: Hide Edit Post Menu on Click  
$(document).ready(function(){
	$(".js-close-edit-menu").click(function(){	
		$(".js-edit-post-menu").hide(); 
    });
});

//Function UI.9: Set Post Display View Large
$(document).ready(function(){
	$("#js-large-post-view").click(function(){	
		var post_view_type_large = "large";
		var logged_in_user = $('input[name=logged-in-user]').val();
		
		$.post(CODE_ROOT + 'posts.php', { logged_in_user: logged_in_user, post_view_type_large: post_view_type_large}, 
		
		function(data) {
			console.log(data);
			location.reload();
		})
	
    });
});

//Function UI.10: Set Post Display View Small
$(document).ready(function(){
	$("#js-small-post-view").click(function(){	
		var post_view_type_small = "small";
		var logged_in_user = $('input[name=logged-in-user]').val();
			
		$.post(CODE_ROOT + 'posts.php', { logged_in_user: logged_in_user, post_view_type_small: post_view_type_small}, 
		
		function(data) {
			console.log(data);
			location.reload();
		})

    });
});




///////////////////////////////////////////////
/////////         APPENDIX 			///////////
///////////////////////////////////////////////
  
