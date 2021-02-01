//FUNCTIONS TABLE OF CONTENTS//
/*

FUNCTIONS A: ACTIVITY RELATED 
	1) Function A1: Get Total New Activity for Header Since Last Click
	2) 

FUNCTIONS B: USER ACTION RELATED 
	1) Function B1: Update icon to Clicked (by ID) 
	2) Function B2: Update Group Header Icon to Clicked (by ID) 
*/

//Development Code Root
var CODE_ROOT = "../../functions/";


//FUNCTIONS B: USER ACTION RELATED 
//Function B1: Update Notification Icon to Clicked (by ID) 
$(document).ready(function(){
	$(".js-notification-header-seen").click(function(){
		var update_icon_click_id = $(this).attr('id');
		var logged_in_user = $('input[name=logged-in-user]').val();
	
		$.post(CODE_ROOT + 'activity.php', { logged_in_user: logged_in_user, update_icon_click_id: update_icon_click_id }, 
		
		function(data) {	
			var new_activity = data;
			//console.log(data + " " + logged_in_user);
			
			
			$("#js-header-total-notice-activity").text(new_activity);	
			//$("#js-add-friend_" + add_friend_id).hide();
			//$("#js-cancel-friend-request_" + add_friend_id).show();
		})	

	});
});


//Function B2: Update Group Header Icon to Clicked (by ID) 
$(document).ready(function(){
	$(".js-activity-group-icon-clicked").click(function(){
		var update_group_icon_click_id = $(this).attr('id');
		var logged_in_user = $('input[name=logged-in-user]').val();

		$.post(CODE_ROOT + 'activity.php', { logged_in_user: logged_in_user, update_group_icon_click_id: update_group_icon_click_id }, 
		
		function(data) {	
			console.log(data);
			
			//$("#js-add-friend_" + add_friend_id).hide();
			//$("#js-cancel-friend-request_" + add_friend_id).show();
		})	
		
		//console.log(add_friend_id_full);
	});
});
