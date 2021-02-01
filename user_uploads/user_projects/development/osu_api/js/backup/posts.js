//FUNCTIONS TABLE OF CONTENTS//
/*

FUNCTIONS A: All Functions Related to Making a Post
	1) Function A1: Post Text (or Discussion) 
	2) Function A2: Post a Photo
	3) Function A3: Post a Video
	4) Function A4: Post a News Article (or Item)
	5) Function A5: Listen for Change to the radio select button to control how the image is handled 
	6) Function A6: Post a News Article (or Item) using a URL, this item has already been uploaded to the temp_article_image folder 
	7) Function A7: Trigger Browse for File 
	8) Function A8: Listen for Current File Name and Display on Page 
	9) Function A9: Post a News Article (or Item) by uploading a photo
	10) Function A10: Post a Link (URL)
	11) Function A11: Trigger Browse for File 
	12) Function A12: Listen for Current File Name and Display on Page 
	13) Function A13: Trigger Post File  
	13) Function A13: Post a Celeb
	14) Function A14: Purchase Item 
	15) Function A15: Cancel Purchase Item 
	16) Function A16: Post Password
	
FUNCTIONS B: All Functions Related to an Existing Post 
	1) Function B1: Edit a Post (5 Parts) 
	2) Function B2: Like or Unlike a Post 
	3) Function B3: Vote Right a Post  
	4) Function B4: Vote Left a Post 	
	5) Function B5: Upvote a Post 	
	6) Function B6: Downvote a Post 	
	7) Function B7: Cancel Vote (and potentiall vote up or down)
	8) Function B8: Bias Vote (Left or Right or Cancel)
	9) Function B9: See Post Comments and Update Notifications 
	10) Function B10: Trigger Comment Post When User Hits Enter 	
	11) Function B11: Post Right Click
	12) Function B12: Close Post Modal 
	
////ORGANIZE	
FUNCTIONS C: All Functions Related to Comments (Discussion Board) 
	1) Function C1: Make a Comment on a Post 
	2) Function C2: Make a Comment on a Post with a File
	3) Function C3: Show Make New Comment Area 
	4) Function C4: Cancel Making a New Comment 
	5) Function C5: Edit a Comment (5 Parts) 
	6) Function C6: Make a Child Comment *Child
	7) Function C7: Show Make New Child Comment Area *Child	
	
FUNCTIONS D: All Functions Related to Comments (Discussion Board) **DISORGANIZED
	1) Function D1: Make a Discussion Post 
	2) Function D2: Cancel Post Comment 
	3) Function D3: Show add Comment to an Existing Comment 
	4) Function D4: Show comments responding to a discussion
	5) Function D5: Hide comments responding to a discussion
	6) Function D6: Like or Unlike a Comment on a Discussion
	7) Function D7: Show add Comment to an Existing Post 
	8) Function D8: Show Edit button when user hovers over comment 
	9) Function D9: Show Edit button when user hovers over Discussion
////ORGANIZE

	
FUNCTIONS UI: All Functions Related to UI 
	1) Function UI.1: Show Make Photo
	1) Function UI.1: Show Make Video
	1) Function UI.1: Show Make Article
	1) Function UI.1: Show Make Text
	1) Function UI.1: Show Make File
	
*/

//Development Code Root
var CODE_ROOT = "../../functions/";

//Live Code Root 
//var CODE_ROOT = "../functions/";


//FUNCTIONS A: All Functions Related to Making a Post

//Function A1: Post Text (or Discussion) 
$(document).ready(function(){
	$("#js-add-text-submit").click(function(){	
		var post_comment = $("#js-post-text-caption").val();	
		var post_text_from = $('input[name=post-from]').val();
		var post_to = $("#js-post-text-to").val();		
		var parent_folder = $('input[name=parent]').val();			
		var visiting_friend = $('input[name=visiting-friend]').val();			
		var group_id = $('input[name=group-id]').val();					
		var list_id = $('input[name=list-id]').val();		
		var post_type = $("#js-post-text-type").val();
		var notification_message = $("#js-text-notification-message").val();
		var notification_type = $("#js-text-notification-type").val();
		var notification_link = $("#js-text-notification-link").val();
		var text_item_title = $("#js-text-item-title").val();
		var text_item_link = $("#js-text-item-link").val();		
		var text_item_description = $("#js-text-item-description").val();	
		//console.log(text_item_title + "  " + text_item_link + "  " + text_item_description );
		var master_site = $('input[name=master-site]').val();

		//Check if user entered something 
		if (post_comment) {
			$.post(CODE_ROOT + 'posts.php', {
				post_text_from: post_text_from, 
				post_to: post_to, 
				post_comment: post_comment,  
				parent_folder: parent_folder,
				visiting_friend: visiting_friend,
				group_id: group_id, 
				list_id: list_id, 				
				post_type: post_type, 
				notification_message: notification_message, 
				notification_type: notification_type, 
				notification_link: notification_link, 
				text_item_title: text_item_title, 
				text_item_link: text_item_link, 
				text_item_description: text_item_description, 
				master_site: master_site
				}, 
			
			function(data) {
				//alert(data);
				//$('.uk-modal-close').click();
				var tempScrollTop = $(window).scrollTop();
				//location.reload(); 
				window.location=window.location;
			});	
			
		} else {
			$("#js-text-comment-warning").show();
		}
    });
});

//Function A2: Post a Photo
$(document).ready(function(){
	$("button#js-add-photo-submit").unbind('click').bind('click', function (e) {			

		//The below code used to execute then do the upload. Now it just uploads once this clicks the upload button.
		$('#upload-photo').click();	

		//Get values for video post 
		var photo_caption = $("#js-post-photo-caption").val();					
		var user_name_photo = $('input[name=logged-in-user]').val();
		var friend_page_user = $('input[name=friend-page-user]').val();
		var parent_folder = $('input[name=parent]').val();
		var post_type = $('input[name=post-type-photo]').val();	
		var unique_id = $('input[name = key]').val();
		var post_master_type = $('input[name=post-master-type]').val();
		var list_id = $('input[name=current-list-id]').val();
		var group_id = $('input[name=group-id]').val();
		var notification_message = $('input[name=notification-message]').val();
		var notification_type = $('input[name=notification-type]').val();
		var notification_link = $('input[name=notification-message]').val();
		var master_site = $('input[name=master-site]').val();
			
		//Get category if it is set 
		var category = $('#post-category').val();
		
		if (category) { 
			var category = category;
		} else {
			var category = "null";
		}

		$.post(CODE_ROOT + 'posts.php', { 
			user_name_photo: user_name_photo, 
			friend_page_user: friend_page_user, 
			photo_caption: photo_caption, 
			parent_folder: parent_folder, 
			post_type: post_type, 
			unique_id: unique_id, 
			post_master_type: post_master_type, 
			group_id: group_id,
			list_id: list_id,
			category: category, 
			notification_message: notification_message, 
			notification_type: notification_type, 
			notification_link: notification_link, 
			master_site: master_site
		}, 
		
		function(data) {
			$('#upload-photo').click();	
			console.log(data);
			//console.log(data);
			location.reload();
			//window.location=window.location;
		})
		
    });
});

//Function A3: Post a Video
$(document).ready(function(){
	$("#js-make-post-video-submit").click(function(){	
		var post_from_video = $("#js-video-post-from").val();
		var post_to = $("#js-video-post-to").val();
		var video_url = $('input[name=video-url]').val();
		var video_caption = $("textarea#js-post-video-caption").val();				
		var group_id = $("#js-video-group-id").val();			
		var list_id = $("#js-video-list-id").val();
		var notification_message = $("#js-video-notification-message").val();
		var notification_link = $('input[name=notification-link]').val();	
		var notification_type = $('#js-video-notification-type').val();			
		var master_site = $('input[name=master-site]').val();
		var post_type = "video";
	
		//Check if URL is a valid URL
		var outcome = validateURL(video_url);	
		//console.log(post_from_video + " " + post_to + " " + video_url + " " + group_id + " " +  list_id + " " + video_caption + " " + notification_message + " " + notification_link + " \" + master_site);
		var outcome = outcome * 1;

		//Execute if outcome is true 
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
				
				//$('.uk-modal-close').click();/
 				//var tempScrollTop = $(window).scrollTop();
				//location.reload();
				window.location=window.location;				
				//alert(data);
			})
		} else {
			$("#js-video-comment-warning").show();
		} 

    });
});

//Function A4: Post a News Article (or Item)
//PART 1: Get needed information and display in second modal 
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

//Function A5: Listen for Change to the radio select button to control how the image is handled 
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


//PART 2: Finalize user input and put post on wall 
//Function A6: Post a News Article (or Item) using a URL, this item has already been uploaded to the temp_article_image folder 
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
		var notification_message = $('input[name=notification-message').val();			
		var notification_type = $('input[name=notification-type').val();			
		var notification_link = $('input[name=notification-link').val();			

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
			//alert(data);
			$('.uk-modal-close').click();
			window.location=window.location;
			//location.reload();
		})
		
    });
});

//Function A7: Trigger Browse for File 
$(document).ready(function(){
	$("#js-trigger-browse-for-file-article-temp-photo").click(function(){
		//$('#js-trigger-upload-file-article-temp-photo').show();
		$('#js-trigger-browse-for-file-article-temp-photo').text("Change File +");
		$('#js-browse-for-file-article-temp-photo').click();
	});
});
 
 //Function A8: Listen for Current File Name and Display on Page 
 //THIS NEEDS TO BE SET FOR ALL FILES 
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
		
		//TYPE 2: Handle Discussion File 
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
		
	});
});

//Function A9: Post a News Article (or Item) by uploading a photo
$(document).ready(function(){
	$("#js-make-post-submit-article-uploaded-image").click(function(){
		$('#js-file-upload-submit-article-photo').click();

    });
});

//Function A10: Post a Link (URL)
$(document).ready(function(){
	$("button#js-add-link-submit").click(function(){	
		var post_from = $('input[name=post-from]').val();
		var post_to = $('input[name=post_to]').val();
		var link_url = $("#js-add-link-url").val();
		var link_caption = $("#js-link-caption").val();
		var parent_folder = $('input[name=parent]').val();			
		var list_id = $("#js-link-list-id").val();	
		var group_id = $("#js-link-group-id").val();		
		var post_type = $('input[name=post-type]').val();	
		var post_master_type = $("#js-link-post-master-type").val();		
		var notification_message = $("#js-link-notification-message").val();		
		var notification_link = $("#js-link-notification-link").val();		
		var master_site = $('input[name=master-site]').val();	
		console.log(post_from + " " + post_to + " " + link_url + " " + link_caption + " " + list_id + " " + post_type + " " +  post_master_type + " " +  notification_message );
		

		//Handle form submit 
		$.post(CODE_ROOT + 'posts.php', { 
			post_from: post_from, 
			post_to: post_to, 
			link_url: link_url, 
			link_caption: link_caption,
			parent_folder: parent_folder,	
			list_id: list_id,
			group_id: group_id,
			post_type: post_type,
			post_master_type: post_master_type,			
			notification_message: notification_message, 
			notification_link: notification_link,
			master_site: master_site
		}, 
		
		function(data) {
			$('.uk-modal-close').click();
			location.reload();
		})
		
    });
});

//Function A11: Trigger Browse for File 
$(document).ready(function(){
	$("#js-trigger-browse-for-file-post-file").click(function(){
		$('#js-trigger-upload-file-post-file').show();
		$('#js-trigger-browse-for-file-post-file').text("Change File +");
		$('#js-browse-for-file-post-file').click();
	});
});
 
//Function A12: Listen for Current File Name and Display on Page 
//* May need to move to Function A7
$(function() {
	$("input:file").change(function (){
		var fullPath = document.getElementById('js-browse-for-file-post-file').value;
		if (fullPath) {
			var startIndex = (fullPath.indexOf('\\') >= 0 ? fullPath.lastIndexOf('\\') : fullPath.lastIndexOf('/'));
			var filename = fullPath.substring(startIndex);
			if (filename.indexOf('\\') === 0 || filename.indexOf('/') === 0) {
				filename = filename.substring(1);
			}
			//alert(filename);
			$("#js-selected-file-name-post-file").text(filename);


		}
	});
});

//Function A13: Trigger Post File  
$(document).ready(function(){
	$("#js-trigger-upload-file-post-file").click(function(){	

		$("#js-file-upload-submit-post-file").click();	
		//alert();		

    });
});

//Function A14: Post a Celeb (*probably outdated)
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

//Function A15: Purchase Item 
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

//Function A16: Cancel Purchase Item 
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

//Function A17: Post Password (or Discussion) 
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


//FUNCTIONS B: All Functions Related to an Existing Post 

//Function B1: Edit a Post (5 Parts) 
//Part 1: Hide caption and show edit area 
$(document).ready(function(){
	$(".js-post-edit").click(function(){	
	
		//PART 1: Main Code 
		var post_full_id = $(this).attr('id');
		var splitParts;
		splitParts = post_full_id.split("_");
		var post_id = splitParts[1];
		var current_post_text = $("#js-post-caption_" + post_id).text();		
		$("#js-post-edit-caption_" + post_id).val(current_post_text);	

		$(".js-post-edit-area").hide();
		$(".js-post").show();					
				
		$("#js-post_" + post_id).hide();
		$("#js-post-edit-area_" + post_id).show();			
		
		
		//var discussion_edited_text = $("#js-post-edit-text-area_" + post_id).val();	
		//$(".post-header-edit-dropdown").hide();
		
		//PART 2: Site Specific Code 
		//Discussion
		
		/*
		//Hide edit button and show cancel button
		$("#js-post-edit_" + post_id).hide();	
		$("#js-post-cancel-edit_" + post_id).show();	
		
		//Edit Buttons on Dropdown menu
		$("#js-post-edit_" + post_id).hide();	
		$("#js-post-edit-cancel-trigger_" + post_id).show();
		
		//NEW Wishlist (switch to all code using this)
		$("#js-post-caption_" + post_id).hide();
		$("#js-post-caption-edit_" + post_id).show();

		//NEW Password (Switch to using all this code)
		$("#js-full-post-edit_" + post_id).show();			
		$("#js-full-post_" + post_id).hide();	
		*/
    });
});

//Part 2: Cancel Edit by Clicking Edit button 
$(document).ready(function(){
	$(".js-post-cancel-edit").click(function(){	
		$(".js-post-edit-area").hide();
		$(".js-post").show();			
		/*
		//Hide cancel button and show edit button 
		$("#js-post-cancel-edit_" + post_id).hide();
		$("#js-post-edit_" + post_id).show();	

		//Hide Edit area and show caption 
		$("#js-post-edit-area_" + post_id).hide();
		$("#js-post-caption_" + post_id).show();	
		
		//Edit Buttons on Dropdown menu and click hide menu 
		$("#js-post-edit_" + post_id).show();	
		$("#js-post-edit-cancel-trigger_" + post_id).hide();
		$( ".post-header-left" ).click();
		
		//NEW Wishlist 
		$("#js-post-caption-edit_" + post_id).hide();
		$("#js-post-caption_" + post_id).show();
		
		//NEW Password (Switch to using all this code)
		$("#js-full-post-edit_" + post_id).hide();
		$("#js-full-post_" + post_id).show();		
		*/
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
		var post_caption_edited = $("#js-post-edit-caption_" + post_id).val();
		var post_title_edited = $("#js-post-edit-title-area_" + post_id).val();
		var post_description_edited = $("#js-post-edit-description-area_" + post_id).val();

		$.post(CODE_ROOT + 'posts.php', { 
			post_id: post_id, 
			post_caption_edited: post_caption_edited, 
			post_title_edited: post_title_edited, 
			post_description_edited: post_description_edited
		}, 

		function(data) {
			$("#js-post-caption_" + post_id).text(post_caption_edited);
			
			$(".js-post-edit-area").hide();
			$(".js-post").show();			
			/*
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
			*/			
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
				
				//Regular Post 
				//$("#js-post-delete_" + delete_post_id).hide();	
				
				//Discussion Code 
				//
				
				//Wishlist Code 
				//$("#wishlist-post_" + delete_post_id).fadeOut(340);
				
				//Password Code
				//$("#js-full-post_" + delete_post_id).fadeOut(340);
				
			})
			
		} else {
			// Don't delete post 
		}	

    });
});
/*
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
*/

//Function B2: Like or Unlike a Post 
$(document).ready(function(){
	$(".js_like-post").click(function(){	
		//Get Post ID
		var post_full_id = $(this).attr('id');
		var splitParts;
		splitParts = post_full_id.split("_");
		var like_action = splitParts[0];
		var post_id = splitParts[1];
		var logged_in_user = $('input[name=logged-in-user]').val();
		
		var current_likes_string = $("#js-total-likes_" + post_id).text();
		var total_likes = parseInt(current_likes_string);
	
		//Like Post 
		if(like_action.localeCompare("like")==0) {

			//Set total like value to new value 
			$.post(CODE_ROOT + 'posts.php', { post_id: post_id, logged_in_user: logged_in_user, like_action: like_action }, 
		
			function(data) {
				$("#js-total-likes_" + post_id).text(total_likes + 1)
				$("#like_" + post_id).hide();	
				$("#unlike_" + post_id).show();						
			})

		//Unlike Post 	
		} else {
			
			//Set total like value to new value 
			$.post(CODE_ROOT + 'posts.php', { post_id: post_id, logged_in_user: logged_in_user, like_action: like_action }, 
		
			function(data) {
				$("#js-total-likes_" + post_id).text(total_likes - 1)
				$("#unlike_" + post_id).hide();
				$("#like_" + post_id).show();					
			})	
		}
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

//Function B11: Post Right Click
/*
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


//Function B12: Close Post Modal 
$(document).ready(function(){
	$("button.uk-modal-close").click(function(){	
		$("div.post-article-enter-url").show();	
		$("div.post-article-confirm").hide();	
    });
});


//////////////// ORGANIZE ///////////////////////




//FUNCTIONS C: All Functions Related to Comments
//Function C1: Make a Comment on a Post 
$(document).ready(function(){
	$(".js-submit-comment").click(function(){	
		
		//Get Post ID
		var logged_in_user   = $('input[name=logged-in-user]').val();	
		var comment_parent   = $('input[name=comment-parent]').val();	
		var new_comment		 = $('.js-new-comment-text-area').val();	
		var comment_level	 = $('input[name=comment-level]').val();	
		var comment_to		 = $('input[name=comment-to]').val();	
		
		//Check that an article was entered 	
		if (new_comment) {
			
			//Submit new Comment 
			$.post(CODE_ROOT + 'posts.php', { logged_in_user: logged_in_user, comment_parent: comment_parent, new_comment: new_comment, comment_level: comment_level, comment_to: comment_to }, 

			function(data) {
				//var tempScrollTop = $(window).scrollTop();
				location.reload(); 
				//$(window).scrollTop(tempScrollTop);	
			})
		
		//Error: No Comment Entered 
		} else {
			$('#js-new-comment-empty').show();			
		}

    });
});


/*
//Function C3: Show Make New Comment Area 
$(document).ready(function(){
	$('#js-new-comment-text-area').click(function() { 
		$("#js-new-comment-action-area").show();	
		 
	}); 
});	


//Function C4: Cancel Making a New Comment 
 $(document).ready(function(){
	$('#js-hide-make-comment-buttons').click(function() { 
		$("#js-new-comment-action-area").hide();	
		 
	}); 
});
*/

//Function C5: Edit a Comment (5 Parts) 	 
//Part 1: Hide caption and show edit area 
$(document).ready(function(){
	$(".js-comment-edit-trigger").click(function(){	
	
		//Get Comment ID
		var comment_full_id = $(this).attr('id');
		var splitParts;
		splitParts = comment_full_id.split("_");
		var comment_id = splitParts[1];	

		//Hide Dropdown Menu 
		$(".discussion-settings-menu").hide();	
		
		//Show Cancel Button
		$(".js-comment-edit-trigger-cancel").show();	
		
		//Change Button in Dropdown from Edit to Cancel Edit 
		$(".js-comment-dropdown-edit-trigger-cancel").hide();		
		$(".js-comment-dropdown-edit-trigger").show();			
		$("#js-comment-dropdown-edit-trigger_" + comment_id).hide();	
		$("#js-comment-dropdown-edit-trigger-cancel_" + comment_id).show();				
			
		//Hide Any Open Edit Boxes and Show Comments
		$(".js-comment-caption-edit").hide();		
		$(".js-comment-caption").show();		

		//Hide Comment and Show Edit Comment 
		$("#js-comment-caption_" + comment_id).hide();	
		$("#js-comment-caption-edit_" + comment_id).show();				

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
			$("#js-current-comment-caption_" + comment_id).text(comment_caption_edited);		
			
			//Hide edit button and show cancel button 
			$(".js-comment-edit-trigger-cancel").hide();	
			$(".js-comment-edit-trigger").show();	
		
			//Show Edit Comment Area 
			$(".js-comment-caption-edit").hide();		
			$(".js-comment-caption").show();		
	
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
				$("#js-comment-child_"  + delete_comment_id).hide();			
				$("#comment_" + delete_comment_id).hide();


			})
			
		} else {
			// Don't delete Comment 
		}	

//alert(delete_comment_id);
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
		
		//Hide cancel button and show edit button 
		$("#js-comment-edit-cancel_" + comment_id).hide();
		$("#js-comment-edit_" + comment_id).show();	
	
		//Hide Edit Comment area and add Caption		
		$("#js-comment-reply-caption-edit_" + comment_id).hide();		
		$("#js-comment-reply-caption_" + comment_id).show();			
		
	});
});


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



//FUNCTIONS UI: All Functions Related to UI 
//Function UI.1: Show Make Photo
$(document).ready(function(){
	$("#js-post-select-photo").click(function(){	
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
		$("#js-make-post-article").hide();		
		$("#js-make-post-text").hide();		
		$("#js-make-post-photo").hide();
		$("#js-make-post-video").hide();	
		$("#js-make-post-file").show();			
    });
});

////////////////////////	
// APPENDIX: Old Code //
////////////////////////


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