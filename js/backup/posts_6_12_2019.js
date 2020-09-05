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
	
FUNCTIONS C: All Functions Related to Commenting on a Post 
	1) Function C1: Make a New Comment 
 
	
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


//FUNCTIONS C: All Functions Related to Commenting on a Post 
//Function C1: Make a New Comment 
 
	





	
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

/*
$(document).ready(function(){
	$("#js-make-photo-post").click(function(){	
		if(document.getElementById("js-browse-for-file").value != "") {
			$('#js-error-post-no-photo-selected').hide();
			$('#js-trigger-upload-file').click();
		} else {
			$('#js-error-post-no-photo-selected').show();
		}
    });
});
*/

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



//Part 4: Delete Post   
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



//////OLD 



/*

//FUNCTIONS A: All Functions Related to Making a Post

//Function A4: Post an Article 
//Function A4.1: Get needed information and display in second modal 
$(document).ready(function(){
	$("#js-make-post-article-initial-submit").click(function(){	
		var post_article_url_initial = $("#js-post-article-url").val();
			
		//Check that an article was entered 	
		if (post_article_url_initial) {
			$("#js-article-url-loading").show();			
			$("#js-article-url").val(post_article_url_initial);	
		
			$.post(CODE_ROOT + 'posts.php', { post_article_url_initial: post_article_url_initial }, 
			
			function(data) {		

				$("#js-article-url-loading").hide();	

				//Hide and show the new parts of the modal that need to be 
				$("#js-post-article-get-information").hide();	
				$("#js-post-article-confirm-information").show();	
				
				var article_array = JSON.parse(data);
				
				//Set all photos to display the image name 
				var photo_one = article_array["photo_one"];
				var photo_two = article_array["photo_two"];
				var photo_three = article_array["photo_three"];
				var link_title = article_array["link_title"];
				var description = article_array["description"];
				
				//Set the text areas with the caption and description 
				$("#js-post-article-title").val(link_title);
				$("#js-post-article-description").val(description);			

				//Load the images and set the ids of the images with the correct names 	
				$("#js-article-photo-one").attr("src", "../../user_uploads/temp_article_image/" + photo_one);
				$("#js-article-photo-two").attr("src", "../../user_uploads/temp_article_image/" + photo_two);
				$("#js-article-photo-three").attr("src", "../../user_uploads/temp_article_image/" + photo_three);
				document.getElementById("js-article-image-temp-four").disabled = true;
			
				$("input[name=photo-selection]#radio-photo-one").val(photo_one);
				$("input[name=photo-selection]#radio-photo-two").val(photo_two);
				$("input[name=photo-selection]#radio-photo-three").val(photo_three);			

				//console.log(data);
			})			

		} else {
			$("#js-article-comment-warning").show();
		}
    });
});

//Function A4.2: Finalize and Post News Article 
$(document).ready(function(){
	$("#js-make-post-submit-article").click(function(){			
		var article_submit_confirm = "true";
		var article_selected_image = $("input[name=photo-selection]:checked").val(); //image_url, file_url and file_name
		var article_caption = $("#js-post-article-caption").val();		
		var post_from = $('input[name=post-from').val();
		var post_to = $('input[name=post-to]').val();		
		var visiting_friend_user = $('input[name=visiting-friend').val();		
		var post_type = $('input[name=post-type]').val();
		var article_url = $('input[name=post-article-url]').val();	
		var article_title = $("#js-post-article-title").val();	
		var article_description = $("#js-post-article-description").val();			
		var group_id = $("#js-article-group-id").val();			
		var list_id = $("#js-article-list-id").val();			
		var master_site = $("#js-article-master-site").val();			
		var notification_message = $('#js-article-notification-message').val();			
		var notification_type = $('#js-article-notification-type').val();			
		var notification_link = $('#js-article-notification-link').val();			

		//console.log(article_selected_image + " " + article_caption + " " + post_from + " " + post_to + " " + post_type);

		//Check that at least one thing is entered 
		$.post(CODE_ROOT + 'posts.php', { 
			article_submit_confirm: article_submit_confirm, 
			article_selected_image: article_selected_image, 
			article_caption: article_caption, 
			post_from: post_from, 
			post_to: post_to, 
			post_type: post_type, 			
			visiting_friend_user: visiting_friend_user, 
			article_url: article_url, 
			article_title: article_title, 
			article_description: article_description,
			group_id: group_id,
			list_id: list_id,
			notification_message: notification_message,
			notification_type: notification_type,
			notification_link: notification_link,
			master_site: master_site
			}, 
		
		function(data) {
			//Trigger File Upload to Server 
			//console.log(data);
			$('.uk-modal-close').click();
			window.location=window.location;
			//location.reload();
		})
		
    });
});

//Function A5: Post an Article by Uploading your Own Image

//Function A5.1: Trigger Browse for File 
$(document).ready(function(){
	$("#js-trigger-browse-for-file-article-temp-photo").click(function(){
		
		//Enable Check Box for User Imeage 
		document.getElementById("js-article-image-temp-four").disabled = false;
		$("#js-article-image-temp-four").prop("checked", true)
		
		//Show Upload File Submit Button and Hide Upload Parsed Image Button 
		$("#js-make-post-submit-article").hide();
		$("#js-make-post-submit-article-uploaded-image").show();
		
		//Make it so user sees change file instead of upload new file 
		$('#js-trigger-browse-for-file-article-temp-photo').text("Change File +");
		
		$('#js-browse-for-file-article-temp-photo').click();
	});
});
 
//Function A5.2: Listen for Change to the radio select button to control how the image is handled (either the parsed image or the uploaded image)
$(document).ready(function() {
    $('input[type=radio][name=photo-selection]').change(function() {
		var radio_selection_id = $(this).attr('id');
		
		//Show Upload File
		if(radio_selection_id === "js-article-image-temp-four") {	
			$("#js-make-post-submit-article").hide();
			$("#js-make-post-submit-article-uploaded-image").show();
		} else {
			
			$("#js-make-post-submit-article-uploaded-image").hide();			
			$("#js-make-post-submit-article").show();			
		}
		
    });
});

//Function A5.2: Submit Article with user Uploaded Image 
$(document).ready(function(){
	$("#js-make-post-submit-article-uploaded-image").click(function(){
		$('#js-file-upload-submit-article-photo').click();

    });
});

//Function A6: Post a File
//Function A6.1: Trigger Browse for File 


//Function A6.2: Listen for Current File Name and Display on Page * May need to move 
//$(function() {
//	$("input:file").change(function (){
//		var fullPath = document.getElementById('js-browse-for-file-post-file').value;
//		if (fullPath) {
//			var startIndex = (fullPath.indexOf('\\') >= 0 ? fullPath.lastIndexOf('\\') : fullPath.lastIndexOf('/'));
//			var filename = fullPath.substring(startIndex);
//			if (filename.indexOf('\\') === 0 || filename.indexOf('/') === 0) {
//				filename = filename.substring(1);
//			}
//			//alert(filename);
//			$("#js-selected-file-name-post-file").text(filename);
//		}
//	});
//});

//Function A6.3: Trigger Post File  
$(document).ready(function(){
	$("#js-trigger-upload-file-post-file").click(function(){	
		$("#js-file-upload-submit-post-file").click();	

    });
});

//Function A7: Post a Link (URL)
$(document).ready(function(){
	$("#js-add-link-submit").click(function(){	
		var master_site = $('input[name=master-site]').val();	
		var logged_in_user = $('input[name=logged-in-user]').val();
		var visiting_friend = $('input[name=visiting-friend]').val();
		var post_from = $("#js-post-link-from").val();
		var post_to = $("#js-post-link-to").val();
		var link_url = $("#js-add-link-url").val();
		var link_description = $("#js-add-link-description").val();
		var link_caption = $("#js-link-caption").val();		
		var group_id = $("#js-link-group-id").val();	
		var list_id = $("#js-link-list-id").val();	
		var post_type = $("#js-post-link-type").val();			
		var notification_message = $("#js-link-notification-message").val();		
		var notification_link = $("#js-link-notification-link").val();		
		var notification_type = $("#js-link-notification-link").val();		
		
		if (link_url) {
			//console.log(post_from + " " + post_to + " " + link_description + " " + link_url + " " + link_caption + " " + list_id + " " + post_type + " " +  notification_message );			
			//Handle form submit 
			$.post(CODE_ROOT + 'posts.php', { 
				master_site: master_site,
				logged_in_user: logged_in_user,
				post_from: post_from, 
				post_to: post_to, 
				link_url: link_url, 
				link_description: link_description, 
				link_caption: link_caption,
				group_id: group_id,
				list_id: list_id,
				post_type: post_type,
				notification_message: notification_message, 
				notification_link: notification_link,
				notification_type: notification_type

			}, 
			
			function(data) {
				console.log(data);
				//$('.uk-modal-close').click();
				//location.reload();
			})
		
		
		
		
		
		} else {
			$("#js-link-comment-warning").show();
		} 

		
    });
});


//FUNCTIONS B: All Functions Related to an Existing Post 
//Function B1: Edit a Post (5 Parts) 
//Part 1: Hide caption and show edit area 
$(document).ready(function(){
	$(".js-post-edit").click(function(){	

		//Step 1: Get All Variables 
		var post_full_id = $(this).attr('id');
		var splitParts;
		splitParts = post_full_id.split("_");
		var post_id = splitParts[1];
	    var current_post_caption = $("#js-post-caption-text_" + post_id).text();	
	    var current_post_title = $("#js-post-title-text_" + post_id).text();	
	    var current_post_description = $("#js-post-description-text_" + post_id).text();	

		if(!current_post_title ) {
			current_post_title = "";
		}	
		
		if(!current_post_description ) {
			current_post_description = "";
		}
			
		//Step 2: Hide post and show edit post 		
		
		$(".js-post-edit-display-area").hide();
		$(".js-post-normal-display-area").show();
		$("#js-post-normal-display-area_" + post_id).hide();	
		$("#js-post-edit-display-area_" + post_id).show();	 
		
		$("#js-edit-post-caption-text_" + post_id).val(current_post_caption);	
		
		
		console.log(current_post_caption);
	
		
    });
});

//Part 2: Cancel Edit by Clicking Edit button 
$(document).ready(function(){
	$(".js-post-cancel-edit").click(function(){	
		$(".js-post-edit-display-area").hide();
		$(".js-post-normal-display-area").show();	
	});
});

//Part 3: Save Edited Post  
$(document).ready(function(){
	$(".js-post-save").click(function(){	
		//Get Post ID
		var post_full_id = $(this).attr('id');
		var splitParts;
		splitParts = post_full_id.split("_");
		var post_id = splitParts[1];
		var post_caption_edited = $("#js-edit-post-caption-text_" + post_id).val();
		var post_title_edited = $("#js-post-edit-title-area_" + post_id).val();
		var post_description_edited = $("#js-post-edit-description-area_" + post_id).val();
		
		if(!post_title_edited ) {
			post_title_edited = "";
		}	
		
		if(!post_description_edited ) {
			post_description_edited = "";
		}
		

		$.post(CODE_ROOT + 'posts.php', { 
			post_id: post_id, 
			post_caption_edited: post_caption_edited, 
			post_title_edited: post_title_edited, 
			post_description_edited: post_description_edited
		}, 

		function(data) {
			console.log(data);
			$("#js-post-caption-text_" + post_id).text(post_caption_edited);
			$(".js-post-edit-display-area").hide();
			$(".js-post-normal-display-area").show();	
		})
	
		//console.log(post_caption_edited + " " + post_title_edited + " " + post_description_edited);
    });
});

//Part 3.B: Save Edited Password Post   
$(document).ready(function(){
	$(".js-password-save").click(function(){	
		//Get Post ID
		var post_full_id = $(this).attr('id');
		var splitParts;
		splitParts = post_full_id.split("_");
		var post_id = splitParts[1];
		
		var post_site_name = $("#js-post-edit-site-title_" + post_id).val();		
		var post_password_update  = $("#js-post-edit-password_" + post_id).val();
		var post_user_name = $("#js-post-edit-user-name_" + post_id).val();
		var post_email	   = $("#js-post-edit-password-email_" + post_id).val();
		var post_notes	   = $("#js-post-edit-password-notes_" + post_id).val();
		var master_key	   = $("#js-post-edit-password-notes_" + post_id).val();

		//Prompt User for There Key 
		var master_key = prompt("Please Re-enter your master key. You must enter the SAME key your originally entered or the next time you view this password it will not display correctly. ");
		if (master_key != null) {

			$.post(CODE_ROOT + 'posts.php', { 
				post_id: post_id, 
				post_site_name: post_site_name, 
				post_password_update: post_password_update, 
				post_user_name: post_user_name,
				post_email: post_email,
				post_notes: post_notes,
				master_key: master_key
			}, 

			function(data) {
				//Reset Values into new Field 
				$("#js-post-current-caption_" + post_id).text(post_caption_edited);
				$("#js-post-current-title" + post_id).text(post_title_edited);
				$("#js-post-current-description_" + post_id).text(post_description_edited);
				
				//Hide and Show Fields 
				$("#js-post-edit-area_" + post_id).hide();
				$("#js-post-caption_" + post_id).show();	
				
				//Edit Buttons on Dropdown menu and click hide menu 
				$("#js-post-edit_" + post_id).show();	
				$("#js-post-edit-cancel-trigger_" + post_id).hide();
				
				//NEW Wishlist (Switch to using all this code)
				$("#js-post-caption-edit_" + post_id).hide();
				$("#js-post-caption_" + post_id).show();
				
				//NEW Password (Switch to using all this code)
				$("#js-full-post-edit_" + post_id).hide();
				$("#js-full-post_" + post_id).show();			
			
			})

		}
		//alert(post_caption_edited + " " + post_title_edited + " " + post_description_edited);
    });
});


//Part 5: Cancel Editing a Post 
$(document).ready(function(){
	$(".js-post-cancel").click(function(){	
		//Get Post ID
		var post_full_id = $(this).attr('id');
		var splitParts;
		splitParts = post_full_id.split("_");
		var post_id = splitParts[1];
		
		//Hide cancel button and show edit button 
		$("#js-post-edit-area_" + post_id).hide();
		$("#js-post-caption_" + post_id).show();	

		$("#js-post-edit_" + post_id).show();	
		$("#js-post-cancel-edit_" + post_id).hide();		
		
		//NEW Wishlist (Switch to using all this code)
		$("#js-post-caption-edit_" + post_id).hide();
		$("#js-post-caption_" + post_id).show();
		
		//Edit Buttons on Dropdown menu and click hide menu 
		$("#js-post-edit_" + post_id).show();	
		$("#js-post-edit-cancel-trigger_" + post_id).hide();
		$( ".post-header-left" ).click();
    });
});



//Function B3: Vote Right a Post  
$(document).ready(function(){
	$(".js-vote-right").click(function(){	
		//Get Post ID
		var post_full_id = $(this).attr('id');
		var splitParts;
		splitParts = post_full_id.split("_");
		var vote_right_post_id = splitParts[1];
		var logged_in_user = $('input[name=logged-in-user]').val();			
		
		$.post(CODE_ROOT + 'posts.php', { vote_right_post_id: vote_right_post_id, logged_in_user: logged_in_user }, 

		function(data) {
			var tempScrollTop = $(window).scrollTop();
			location.reload(); 
			$(window).scrollTop(tempScrollTop);
			//$("#js-post-current-caption_" + post_id).text(post_caption_edited);
			//$("#js-post-edit-area_" + post_id).hide();
			//$("#js-post-caption_" + post_id).show();	
		})		

    });
});

//Function B4: Vote Left a Post 	
$(document).ready(function(){
	$(".js-vote-left").click(function(){	
		//Get Post ID
		var post_full_id = $(this).attr('id');
		var splitParts;
		splitParts = post_full_id.split("_");
		var vote_left_post_id = splitParts[1];
		var logged_in_user = $('input[name=logged-in-user]').val();			
		

		$.post(CODE_ROOT + 'posts.php', { vote_left_post_id: vote_left_post_id, logged_in_user: logged_in_user }, 

		function(data) {
			var tempScrollTop = $(window).scrollTop();
			location.reload(); 
			$(window).scrollTop(tempScrollTop);	

		})		

    });
});

//Function B5: Upvote a Post 	
$(document).ready(function(){
	$(".js-up-vote").click(function(){	
		//Get Post ID
		var post_full_id = $(this).attr('id');
		var splitParts;
		splitParts = post_full_id.split("_");
		var up_vote_post_id = splitParts[1];
		var logged_in_user = $('input[name=logged-in-user]').val();			
		
		$.post(CODE_ROOT + 'posts.php', { up_vote_post_id: up_vote_post_id, logged_in_user: logged_in_user }, 

		function(data) {
			var tempScrollTop = $(window).scrollTop();
			location.reload(); 
			$(window).scrollTop(tempScrollTop);
		})		
		
    });
});

//Function B6: Downvote a Post 	
$(document).ready(function(){
	$(".js-down-vote").click(function(){	
		//Get Post ID
		var post_full_id = $(this).attr('id');
		var splitParts;
		splitParts = post_full_id.split("_");
		var down_vote_post_id = splitParts[1];
		var logged_in_user = $('input[name=logged-in-user]').val();			
		
		$.post(CODE_ROOT + 'posts.php', { down_vote_post_id: down_vote_post_id, logged_in_user: logged_in_user }, 

		function(data) {		
			var tempScrollTop = $(window).scrollTop();
			location.reload(); 
			$(window).scrollTop(tempScrollTop);	
		})		
    });
});

//Function B7: Cancel Vote (and potential vote up or down)	
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

//Function B8: Bias Vote (Left or Right or Cancel)
$(document).ready(function(){
	$(".js-cancel-bias").click(function(){	
		//Get Post ID
		var post_full_id = $(this).attr('id');
		var splitParts;
		splitParts = post_full_id.split("_");
		var post_action = splitParts[0];
		var post_id = splitParts[1];
		var logged_in_user = $('input[name=logged-in-user]').val();		

		//Action 1: Cancel Right Vote 
		if(post_action.localeCompare("js-cancel-right-vote")==0) {
   			var cancel_right_vote = post_action;
   			var cancel_right_id = post_id;
			
			$.post(CODE_ROOT + 'posts.php', { cancel_right_vote: cancel_right_vote, cancel_right_id: cancel_right_id, logged_in_user: logged_in_user }, 

			function(data) {
				var tempScrollTop = $(window).scrollTop();
				location.reload(); 
				$(window).scrollTop(tempScrollTop);	
			
			})		

		//Action 2: Cancel Right Vote and Vote Left
		} else if (post_action.localeCompare("js-cancel-right-vote-left")==0){			
   			var cancel_right_vote_left = post_action;
   			var cancel_right_vote_left_id = post_id;
			
			$.post(CODE_ROOT + 'posts.php', { cancel_right_vote_left: cancel_right_vote_left, cancel_right_vote_left_id: cancel_right_vote_left_id, logged_in_user: logged_in_user }, 

			function(data) {
				var tempScrollTop = $(window).scrollTop();
				location.reload(); 
				$(window).scrollTop(tempScrollTop);	
				
			})				

		//Action 3: Cancel Left Vote
		} else if (post_action.localeCompare("js-cancel-left-vote")==0) {
			var cancel_left_vote = post_action;
   			var cancel_left_id = post_id;
			
			$.post(CODE_ROOT + 'posts.php', { cancel_left_vote: cancel_left_vote, cancel_left_id: cancel_left_id, logged_in_user: logged_in_user }, 

			function(data) {
				var tempScrollTop = $(window).scrollTop();
				location.reload(); 
				$(window).scrollTop(tempScrollTop);	
			
			})	

		//Action 4: Cancel Left Vote and Vote Right 
		} else {
			var cancel_left_vote_right = post_action;
   			var cancel_left_vote_right_id = post_id;
			
			$.post(CODE_ROOT + 'posts.php', { cancel_left_vote_right: cancel_left_vote_right, cancel_left_vote_right_id: cancel_left_vote_right_id, logged_in_user: logged_in_user }, 

			function(data) {
				var tempScrollTop = $(window).scrollTop();
				location.reload(); 
				$(window).scrollTop(tempScrollTop);	
			})	
		}

    });
});



//FUNCTIONS C: All Functions Related to Comments
//Function C1: Make a Comment on a Post 
$(document).ready(function(){
	$(".js-submit-comment").click(function(){	
		
		//Get Post ID
		var post_full_id = $(this).attr('id');
		var splitParts;
		splitParts = post_full_id.split("_");
		var post_id = splitParts[1];	
		var logged_in_user   = $('input[name=logged-in-user]').val();	
		var new_comment		 = $("#js-new-comment_" + post_id).val();	
		var comment_level	 = $('input[name=comment-level]').val();	
		var comment_to		 = $('input[name=comment-to]').val();	
		var comment_parent   = $('input[name=comment-parent]').val();	
			
		console.log(post_id + " " + new_comment);	
		

		//Check that an article was entered 	
		if (new_comment) {
			
			//Submit new Comment 
			$.post(CODE_ROOT + 'posts.php', { post_id: post_id, logged_in_user: logged_in_user, comment_parent: comment_parent, new_comment: new_comment, comment_level: comment_level, comment_to: comment_to }, 

			function(data) {
				console.log(data);
				var tempScrollTop = $(window).scrollTop();
				location.reload(); 
				$(window).scrollTop(tempScrollTop);	
			})
		
		//Error: No Comment Entered 
		} else {
			$('#js-new-comment-empty').show();			
		}
	

    });
});

//Function C2: Show Make New Comment Area 
$(document).ready(function(){
	$('#js-new-comment-text-area').click(function() { 
		$("#js-new-comment-action-area").show();	
		 
	}); 
});	

//Function C3: Cancel Making a New Comment 
 $(document).ready(function(){
	$('#js-hide-make-comment-buttons').click(function() { 
		$("#js-new-comment-action-area").hide();	
		 
	}); 
});

//Function C4: Edit a Comment (5 Parts) 	 
//Part 1: Hide caption and show edit area 
$(document).ready(function(){
	$(".js-comment-edit-trigger").click(function(){	
	
		//Get Comment ID
		var comment_full_id = $(this).attr('id');
		var splitParts;
		splitParts = comment_full_id.split("_");
		var comment_id = splitParts[1];	
		
		//Hide Any Open Edit Boxes and Show Comment
		$(".js-comment-caption-edit").hide();		
		$(".js-comment-caption").show();	

		//Hide Comment and Show Edit Comment 
		$("#js-comment-caption_" + comment_id).hide();	
		$("#js-comment-caption-edit_" + comment_id).show();		
		
		
	//Hide Dropdown Menu 
		//$(".discussion-settings-menu").hide();	
		
		//Show Cancel Button
		//$(".js-comment-edit-trigger-cancel").show();	
		
		//Change Button in Dropdown from Edit to Cancel Edit 
	//	$(".js-comment-dropdown-edit-trigger-cancel").hide();		
	//	$(".js-comment-dropdown-edit-trigger").show();			
	//	$("#js-comment-dropdown-edit-trigger_" + comment_id).hide();	
	//	$("#js-comment-dropdown-edit-trigger-cancel_" + comment_id).show();				
			
	//	$(".js-comment-caption-edit").hide();		
	//	$(".js-comment-caption").hide();			
		
		
		console.log(comment_id);
    });
});

//Part 2: Cancel Editing a Comment
$(document).ready(function(){
	$(".js-comment-edit-trigger-cancel").click(function(){	
		
		//Hide Open Dropdown
		//$(".js-close-open-dropdown").click();
		$(".discussion-settings-menu").hide();	
		
		//Hide edit button and show cancel button 
		$(".js-comment-edit-trigger-cancel").hide();	
		$(".js-comment-edit-trigger").show();	
	
		//Show Edit Comment Area 
		$(".js-comment-caption-edit").hide();		
		$(".js-comment-caption").show();			
		

    });
});

//Part 3: Save Edited Comment  
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
			$(".js-comment-caption-edit").hide();		
			$(".js-comment-caption").show();			
				
			
			//Hide edit button and show cancel button 
			//$(".js-comment-edit-trigger-cancel").hide();	
			//$(".js-comment-edit-trigger").show();	
		
			//Show Edit Comment Area 
			//$(".js-comment-caption-edit").hide();		
			//$(".js-comment-caption").show();		
			
		})

    });
});

//Part 4: Delete Comment   
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

//Part 5: Cancel Edit by Clicking Edit button 
$(document).ready(function(){
	$(".js-comment-edit-cancel").click(function(){	
		//Get Comment ID
		var comment_full_id = $(this).attr('id');
		var splitParts;
		splitParts = comment_full_id.split("_");
		var comment_id = splitParts[1];	
		
		$(".js-comment-caption-edit").hide();		
		$(".js-comment-caption").show();
		
		//Hide cancel button and show edit button 
		//$("#js-comment-edit-cancel_" + comment_id).hide();
		//$("#js-comment-edit_" + comment_id).show();	
	
		//Hide Edit Comment area and add Caption		
		//$("#js-comment-reply-caption-edit_" + comment_id).hide();		
		//$("#js-comment-reply-caption_" + comment_id).show();			
		
	});
});




//FUNCTIONS D: All Functions Related to Unique Posts 
//Function D1: Purchase Item 
$(document).ready(function() {
    $('.js_purchase_item').change(function() {
		var post_full_id = $(this).attr('id');
		var splitParts;
		splitParts = post_full_id.split("_");
		var post_id = splitParts[1];
		var purchase_user = $('input[name=logged-in-user-purchase]').val();

		$.post(CODE_ROOT + 'posts.php', { post_id: post_id, purchase_user: purchase_user }, 
		
		function(data) {
			$("#js_item-purchased-" +  post_id).show();		
		})
    });
});

//Function D2: Cancel Purchase Item 
$(document).ready(function() {
    $('.js_cancel-purchase_item').change(function() {
		var post_full_id = $(this).attr('id');
		var splitParts;
		splitParts = post_full_id.split("_");
		var post_id = splitParts[1];
		var cancel_purchase_user = $('input[name=logged-in-user-purchase]').val();;

		$.post(CODE_ROOT + 'posts.php', { post_id: post_id, cancel_purchase_user: cancel_purchase_user }, 
		
		function(data) {
			var tempScrollTop = $(window).scrollTop();
			location.reload(); 
			$(window).scrollTop(tempScrollTop);
			//window.location=window.location;
		})

    });
});

//Function D3: Post a Celeb (*probably outdated)
$(document).ready(function(){
	$("button#add-celeb-submit").unbind('click').bind('click', function (e) {	
		//Get values for video post 
		var celeb_name_photo = $('input[name=logged-in-user]').val();
		var friend_page_user = $('input[name=friend-page-user]').val();
		var photo_caption = $('input[name=photo-caption]').val();
		var parent_folder = $('input[name=parent]').val();
		var post_type = $('input[name=post-type-photo]').val();	
		var unique_id = $('input[name = key]').val();
		var post_master_type = $('input[name=post-master-type]').val();
		var list_id = $('input[name=current-list-id]').val();
		var master_site = $('input[name=master-site]').val();	
		//Get category if it is set 
		var category = $('#post-category').val();
		var celeb_name = $('input[name=celeb-name]').val();
		var celeb_biography = $('input[name=celeb-biography]').val();
	
		
		if (category) { 
			var category = category;
		} else {
			var category = "null";
		}

		$.post(CODE_ROOT + 'upload.php', { celeb_name_photo: celeb_name_photo, friend_page_user: friend_page_user, photo_caption: photo_caption, parent_folder: parent_folder, post_type: post_type, unique_id: unique_id, post_master_type: post_master_type, list_id: list_id, category: category, celeb_name: celeb_name, celeb_biography: celeb_biography}, 
		
		function(data) {
			$('#upload').click();	
			//location.reload();
			//window.location=window.location;
		})

    });
});

//Function D4: Post Password (or Discussion) 
$(document).ready(function(){
	$("button#js-add-password-submit").click(function(){	

		var post_password_from = $('input[name=post-from]').val();
		var post_to = $('input[name=post_to]').val();	
		var post_type = $('input[name=post-type]').val();	
		var parent_folder = $('input[name=parent]').val();		
		var group_id = $('input[name=group-id]').val();			
		var list_id = $('input[name=list-id]').val();

		var post_master_type = $('input[name=post-master-type]').val();
		var notification_message = $('input[name=notification-message]').val();
		var notification_link = $('input[name=notification-link]').val();

	
		//Code for Password
		//var text_item_title = $('input[name=text-item-title]').val(); //Site
		var site_name = $('input[name=text-item-title]').val(); //Site
		
		//var text_item_link = $('input[name=text-item-link]').val(); //Site URL
		var site_url = $('input[name=text-item-link]').val(); //Site URL
	
		//var post_comment = $("textarea#js-post-text-caption").val(); //Password
		var site_password = $("textarea#js-post-text-caption").val(); //Password

		var password_email = $("textarea#js-post-email").val(); //Email
		var password_notes = $("textarea#js-post-notes").val(); //Notes	
	
			
		//var text_item_description = $('textarea[name=text-item-description]').val(); //Login Name
		var login_name = $('textarea[name=text-item-description]').val(); //Login Name
		
		var master_key = $("textarea#js-post-master-key").val();	
		//alert("Site Name " + site_name + " site_url " + site_url + " site_password " + site_password + " login_name " + login_name + master_key);
	
		//Check if user entered something 
		if (master_key) {
		
			$.post(CODE_ROOT + 'posts.php', {
					post_password_from: post_password_from, 
					post_to: post_to, site_password: site_password,  
					post_type: post_type, 
					parent_folder: parent_folder, 
					group_id: group_id, 
					list_id: list_id, 
					post_master_type: post_master_type, 
					site_name: site_name, 
					site_url: site_url, 
					login_name: login_name, 
					notification_message: notification_message, 
					notification_link: notification_link, 
					password_email: password_email,
					password_notes: password_notes, 
					master_key: master_key}, 
			
			function(data) {
				//$('.uk-modal-close').click();
			    //var tempScrollTop = $(window).scrollTop();
				//location.reload(); 
				window.location=window.location;
				//alert(data);
			});	

		} else {
		
			$("div#js-text-comment-warning").show();
		}

    });
});


/*
*TEMP- Moved to files.js 

//FUNCTIONS E: Global Upload File Listeners 
//Function E1: Listen for File Upload Button Click and Display File Name
 $(function() {
	$("input:file").change(function (){
		
		//TYPE 1: Post Article
		if(document.getElementById('js-browse-for-file-article-temp-photo') !== null) {
		
			var fullPath = document.getElementById('js-browse-for-file-article-temp-photo').value;
			if (fullPath) {
				var startIndex = (fullPath.indexOf('\\') >= 0 ? fullPath.lastIndexOf('\\') : fullPath.lastIndexOf('/'));
				var filename = fullPath.substring(startIndex);
				if (filename.indexOf('\\') === 0 || filename.indexOf('/') === 0) {
					filename = filename.substring(1);
				}
				
				//$("#js-selected-file-name-article-temp-photo").text(filename);
				$("#js-selected-file-name-comment").text(filename);
				
				var d = new Date();
				var unique_id = Math.round(d.getTime() / 1000);
				
				var post_article_image_name = unique_id + filename;
				$("input[name=photo-selection]#js-article-image-temp-four").val(post_article_image_name);			
				$("#js-user-selected-article-image-name-temp").val(post_article_image_name);			
				$("#js-full-name-temp").text(post_article_image_name);			
					
			}
		}
		
		//TYPE 2: Handle Post Photo 
		if(document.getElementById('js-browse-for-post-photo') !== null) {
			
			//Get Path and File Name
			var fullPath = document.getElementById('js-browse-for-post-photo').value;

			//If File Name is Set Dispaly
			if (fullPath) {
				var startIndex = (fullPath.indexOf('\\') >= 0 ? fullPath.lastIndexOf('\\') : fullPath.lastIndexOf('/'));
				var filename = fullPath.substring(startIndex);
				if (filename.indexOf('\\') === 0 || filename.indexOf('/') === 0) {
					filename = filename.substring(1);
				}
				$(".js-selected-post-photo-name").text(filename);
				$("#js-post-upload-photo-ui-text").show();
						
			}
		}		
				
		//TYPE 3: Handle Comment File 
		if(document.getElementById('js-browse-for-file-comment') !== null) {
			
			var fullPath = document.getElementById('js-browse-for-file-comment').value;
			//var fullPath = document.getElementsByClassName("js-browse-for-file-comment");
			
			if (fullPath) {
				var startIndex = (fullPath.indexOf('\\') >= 0 ? fullPath.lastIndexOf('\\') : fullPath.lastIndexOf('/'));
				var filename = fullPath.substring(startIndex);
				if (filename.indexOf('\\') === 0 || filename.indexOf('/') === 0) {
					filename = filename.substring(1);
				}
				//alert(filename);
				$(".js-selected-file-name-comment").text(filename);
				
			}			
		}
		
		//TYPE 4: Handle Discussion File
		if(document.getElementById('js-browse-for-file-discussion') !== null) {
		
			var fullPath = document.getElementById('js-browse-for-file-discussion').value;
			
			if (fullPath) {
				var startIndex = (fullPath.indexOf('\\') >= 0 ? fullPath.lastIndexOf('\\') : fullPath.lastIndexOf('/'));
				var filename = fullPath.substring(startIndex);
				if (filename.indexOf('\\') === 0 || filename.indexOf('/') === 0) {
					filename = filename.substring(1);
				}
		
				$("#js-selected-file-name").text(filename);
				
			}			
		}		
		
		//TYPE 5: Handle File System File Upload
		if(document.getElementById('js-browse-for-file') !== null) {
		
			var fullPath = document.getElementById('js-browse-for-file').value;
			
			if (fullPath) {
				var startIndex = (fullPath.indexOf('\\') >= 0 ? fullPath.lastIndexOf('\\') : fullPath.lastIndexOf('/'));
				var filename = fullPath.substring(startIndex);
				if (filename.indexOf('\\') === 0 || filename.indexOf('/') === 0) {
					filename = filename.substring(1);
				}
		
				$("#js-selected-file-name").text(filename);
				
			}			
		}		
		
		//TYPE 6: Handle Post File Upload
		if(document.getElementById('js-browse-for-file-post-file') !== null) {
		
			var fullPath = document.getElementById('js-browse-for-file-post-file').value;
			
			if (fullPath) {
				var startIndex = (fullPath.indexOf('\\') >= 0 ? fullPath.lastIndexOf('\\') : fullPath.lastIndexOf('/'));
				var filename = fullPath.substring(startIndex);
				if (filename.indexOf('\\') === 0 || filename.indexOf('/') === 0) {
					filename = filename.substring(1);
				}
				//console.log(filename);
				$("#js-selected-file-name-post-file").text(filename);
				$("#js-post-upload-file-ui-text").show();
				
				 
				
			}			
		}	
		
	});
});


/*

*/

//FUNCTIONS: Appendix

/*
//Function B9: See Post Comments and Update Notifications 
$(document).ready(function(){
	$(".show-all-post").unbind('click').bind('click', function (e) {
		var post_id_full = $(this).attr('id');
		var splitParts;
		splitParts = post_id_full.split("_");
		var post_id = splitParts[1];
		var post_id_comment_time = splitParts[1];
		var logged_in_user = $(this).data('selector');
		e.preventDefault();

		
		//Update the post last viewed comments area 
		$.post(CODE_ROOT + 'notifications.php', { post_id_comment_time: post_id_comment_time, logged_in_user: logged_in_user }, 
		
		function(data) {
			$("#full-post_" + post_id).show();
			$("#post-see-more_" + post_id).hide();	
			$("#post-new-comments_" + post_id).hide();			
			
		});	
	});
});
*/
/*
//Function B10: Trigger Comment Post When User Hits Enter 
$(document).ready(function(){
	$('textarea.add-comment-box').bind("enterKey",function(e){
		//alert("Enter");
		//$('.make-comment').click();
		var $textarea = $(this);
		var make_post_full = $(this).attr('id');
		var splitParts;
		splitParts = make_post_full.split("_");
		var post_id = splitParts[1];
		//alert(post_id);
		$("#add-comment_" + post_id).click();
		//User has hit enter set text box to zero and add new comment 
		$current_comment = $("#comment_" + post_id).val();
		$("#comment_" + post_id).val("");
		//Somehow this needs to get the new comment and display it 
		//Run a AJAX call and post new comment last made what is its ID though... 
		//$("post_current_comment_" + post_id).append(" <div class = "comment-individual"><p> test </p></div>");
		//alert(post_id);

	});
	
	$('textarea.add-comment-box').keyup(function(e){
		if(e.keyCode == 13) {
			$(this).trigger("enterKey");
		}
	});
});
*/
/*
//Function B11: Post Right Click
$(document).ready(function(){
	//$('.individual-link-holder').on('contextmenu', function(e) {
	$('.js-post-right-click').on('contextmenu', function(e) {
		
		//Get File ID and split
		var list_full_id = $(this).attr('id');
		var splitParts;
		splitParts = list_full_id.split("_");
		var list_id_local = splitParts[1];

		//Make variables global 
		window.list_id = list_id_local; 
			
	});

	context.init({preventDoubleContext: false});
	
	context.attach('.js-post-right-click', [
		{header: 'Links'},
		{divider: true},
		
		//Function  Part 1: Rename Folder 
		{text: 'Rename Folder', action: function(e){
			alert("Rename " + list_id);

		}},
		
		//Function  Part 2: Delete Folder 
		{text: 'Delete Folder', action: function(e){
				alert("Delete");

		}},
		

		{divider: true},

		//Function  Part 3: Create a New Link Folder 
		{text: 'Make New Folder ', action: function(e){
			$('.open-new-link-folder-modal').trigger('click');
				alert("New Folder");
		}}	
	]);
});
*/

/*
//Function B12: Close Post Modal 
$(document).ready(function(){
	$("button.uk-modal-close").click(function(){	
		$("div.post-article-enter-url").show();	
		$("div.post-article-confirm").hide();	
    });
});
*/

/*
//Function C6: Make a Child Comment *Child 
 $(document).ready(function(){
	$(".js-submit-comment-child").click(function(){	
		var comment_parent_id_full = $(this).attr('id');
		var splitParts;
		splitParts = comment_parent_id_full.split("_");
		var comment_parent   = splitParts[1];	
		var logged_in_user   = $('input[name=logged-in-user]').val();	
		//var new_comment		 = $('.js-new-child-comment-text-area').val();	
		var new_comment		 = $('#js-new-comment-text-area_' + comment_parent).val();	
		var comment_level	 = $('input[name=child-comment-level]').val();	
		var comment_to		 = $('input[name=child-comment-to]').val();	

		//Check that an article was entered 	
		if (new_comment) {
			
			//Submit new Comment 
			$.post(CODE_ROOT + 'posts.php', { logged_in_user: logged_in_user, comment_parent: comment_parent, new_comment: new_comment, comment_level: comment_level, comment_to: comment_to }, 

			function(data) {
				//var tempScrollTop = $(window).scrollTop();
				 $('.js-new-child-comment-text-area').val("");
				 $('.js-new-child-comment-text-area').text("");
				
				location.reload(); 
				//$(window).scrollTop(tempScrollTop);	
			})
		
		//Error: No Comment Entered 
		} else {
			$('#js-new-comment-empty').show();			
		}
		
		//console.log(logged_in_user + " " +  comment_parent  + " " +   new_comment  + " " +   comment_level  + " " +   comment_to); 
    });
});
*/

/*
//Function C7: Show Make New Child Comment Area *Child
$(document).ready(function(){
	$('.js-reply-to-comment').click(function() { 
		var comment_parent_id_full = $(this).attr('id');
		var splitParts;
		splitParts = comment_parent_id_full.split("_");
		var comment_id = splitParts[1];
		$("#js-reply-to-comment-area").hide();	
		$("#js-reply-to-comment-area_" + comment_id).show();	

		 
	}); 
});
*/

/*
//Function C8: Cancel Making a Comment 
$(document).ready(function(){
	$('.js-comment-reply-cancel').click(function() { 
		$(".js-reply-to-comment-area").hide();	
		 
	}); 
});	
*/

//ORGANIZE BELOW//
//////////////////////////////////////////////////////
//////////////////////////////////////////////////////




