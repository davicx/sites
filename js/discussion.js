//FUNCTIONS TABLE OF CONTENTS//
/*

FUNCTIONS A: All Functions Related to Discussion
	1) Function A1: Submit Discussion Post  

	
*/

//Development Code Root
var CODE_ROOT = "../../functions/";

//Live Code Root 
//var CODE_ROOT = "../functions/";

//FUNCTIONS A: All Functions Related to Discussion
//Function A1: Submit Discussion Post  
$(document).ready(function(){
	$("#js-submit-discussion").click(function(){	
		var post_discussion      = $("#js-new-discussion-text-area").val();	
		var master_site        	 = $('input[name=master-site]').val();
		var logged_in_user     	 = $('input[name=logged-in-user]').val();
		var post_from 		  	 = $('input[name=post-from]').val();
		var post_to 		  	 = $("#js-post-text-to").val();		
		var parent_discussion 	 = $('input[name=parent]').val();	
		var group_id 		  	 = $('input[name=group-id]').val();				
		var post_type 		  	 = $("#js-post-text-type").val();
		var notification_message = $("#js-text-notification-message").val();
		var notification_type    = $("#js-text-notification-type").val();
		var notification_link 	 = $("#js-text-notification-link").val();		

		if (post_discussion) {
			$.post(CODE_ROOT + 'discussion.php', {
				post_discussion: post_discussion, 
				master_site: master_site, 
				logged_in_user: logged_in_user, 
				post_from: post_from, 
				post_to: post_to, 
				parent_discussion: parent_discussion, 
				group_id: group_id, 
				post_type: post_type, 
				notification_message: notification_message, 
				notification_type: notification_type, 
				notification_link: notification_link 
				}, 
			
			function(data) {
				location.reload(); 
			});	
			
		} else {
			$("#js-discussion-empty-warning").show();
		}

    });
});

//Function A2: Delete Discussion Post  












/*

//FUNCTIONS: Appendix (Old Code)



//Function A1: Initiate Making a Discussion Post
$(document).ready(function(){
	$("#js-new-discussion-text-area").click(function(){		
		$("#js-discussion-empty-warning").hide();
		$("#js-new-discussion-action-area").show();
    });
});


//Function A2: Cancel Making Discussion Post
$(document).ready(function(){
	$(".js-cancel-discussion-post").click(function(){	
		$("#js-new-discussion-action-area").hide();
		$(".js-reply-to-discussion-area").hide();
		$("#js-discussion-empty-warning").hide();
		$("#js-new-discussion-text-area").val("");
		
    });
});




//alert();

//Function A4: Submit Discussion Post with File
//Part 1: Show Discussion with File Area and Trigger Browse for File
$(document).ready(function(){
	$("#js-trigger-browse-for-file-discussion").click(function(){		
		$("#js-new-discussion-text-type").hide();	
		$("#js-new-discussion-file-type").show();
		$("#js-browse-for-file-discussion").click();
		
    });
});


//Part 2: Listen for Current File Name and Display on Page 
//* Handled in posts.js Function E1

//Part 3: Listen to see if user wants to select a Different File (Change Selected File)
$(document).ready(function(){
	$("#js-trigger-change-file-discussion").click(function(){			
		$("#js-browse-for-file-discussion").click();
		
    });
});

//Part 4: Trigger File Upload 
$(document).ready(function(){
	$("#js-trigger-upload-file-discussion").click(function(){
		$('#js-file-discussion-upload-submit').click();
	
	});
});



//Function A5: Show Reply to Discussion 
$(document).ready(function(){
	$(".js-reply-to-discussion").click(function(){		
		var parent_discussion_id_full	= $(this).attr('id');
		splitParts 						= parent_discussion_id_full.split("_");
		var parent_discussion_id     	= splitParts[1];	
		$(".js-reply-to-discussion-area").hide();
		$("#js-reply-to-discussion-area_" + parent_discussion_id).show();
		
    });
});


//Function A6: Submit Child Discussion Post 
$(document).ready(function(){
	$(".js-submit-child-discussion").click(function(){	
		
		//Get ID of Current Post (All Data is relative to this since this is the parent)
		var parent_discussion_id_full	= $(this).attr('id');
		splitParts 						= parent_discussion_id_full.split("_");
		var parent_discussion_id     	= splitParts[1];	
		var post_discussion      = $("#js-new-discussion-text-area_" + parent_discussion_id).val();	
		var master_site        	 = $('input[name=master-site]').val();
		var logged_in_user     	 = $('input[name=logged-in-user]').val();
		var post_from 		  	 = $('input[name=post-from]').val();
		var post_to 		  	 = $("#js-post-text-to_" + parent_discussion_id).val();		
		var parent_discussion 	 = $("#js-discussion-current-parent_" + parent_discussion_id).val();	
		var group_id 		  	 = $('input[name=group-id]').val();				
		var post_type 		  	 = $('input[name=post-type]').val();	
		var notification_message = $('input[name=notification-discussion-reply-message]').val();	
		var notification_type    = $('input[name=notification-discussion-reply-type]').val();
		var notification_link 	 = $('input[name=notification-discussion-reply-link]').val();			

		if (post_discussion) {
			$.post(CODE_ROOT + 'discussion.php', {
				post_discussion: post_discussion, 
				master_site: master_site, 
				logged_in_user: logged_in_user, 
				post_from: post_from, 
				post_to: post_to, 
				parent_discussion: parent_discussion, 
				group_id: group_id, 
				post_type: post_type, 
				notification_message: notification_message, 
				notification_type: notification_type, 
				notification_link: notification_link 
				}, 
			
			function(data) {
				console.log(data);
				//var tempScrollTop = $(window).scrollTop();
				//window.location=window.location;
				location.reload(); 
			});	
			
		} else {
			$("#js-discussion-empty-warning_" + parent_discussion_id).show();
		}

    });
});

*/
