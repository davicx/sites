//FUNCTIONS TABLE OF CONTENTS//
/*

FUNCTIONS A: NOTIFICATION RELATED
	1) Function A1: Update All Notifications to Seen
	2) Function A2: Update Single Notification to Seen
	3) Function A3: Delete Single Notification 
	4) Function A4: Delete All Notifications 

FUNCTIONS C: UI RELATED
	
*/

//Development Code Root
var CODE_ROOT = "../../functions/";


//FUNCTIONS A: USER RELATED
//Function A1: Update All Notifications to Seen
$(document).ready(function(){
	$(".js-update-all-notifications").click(function(){
		var notification_set_seen = "true";
		var logged_in_user = $('input[name=logged-in-user]').val();
		var master_site = $('input[name=master-site]').val();		

		$.post(CODE_ROOT + 'notifications.php', { notification_set_seen: notification_set_seen, logged_in_user: logged_in_user, master_site: master_site }, 
		
		function(data) {	
			$(".notification-unseen").removeClass("notification-unseen");
		})			

	});
});


//Function A2: Update Single Notification to Seen
$(document).ready(function(){
	$(".js-update-single-notification").click(function(){
		var notification_id_full = $(this).attr('id');
		var splitParts;
		splitParts = notification_id_full.split("_");
		var notification_id = splitParts[1];	
		var logged_in_user = $('input[name=logged-in-user]').val();
		var master_site = $('input[name=master-site]').val();		
		$(this).removeClass("notification-unseen");
		
		$.post(CODE_ROOT + 'notifications.php', { notification_id: notification_id, logged_in_user: logged_in_user, master_site: master_site }, 
		
		function(data) {	
			//var current_new_activity_count = $("#js-header-total-notice-activity").text();
			//var current_new_activity_count = parseInt(current_new_activity_count)
			//var updated_new_activity_count = current_new_activity_count - 1;
			//$("#js-header-total-notice-activity").text(updated_new_activity_count);

		})			
	});
});


//Function A3: Delete Single Notification 
$(document).ready(function(){
	$(".js-delete-single-notification").click(function(){
		var notification_id_full = $(this).attr('id');
		var splitParts;
		splitParts = notification_id_full.split("_");
		var notification_id = splitParts[1];	
		var notification_id_delete = notification_id;	
		var logged_in_user = $('input[name=logged-in-user]').val();
		//console.log(notification_id  + " " + logged_in_user);

		$.post(CODE_ROOT + 'notifications.php', { notification_id_delete: notification_id_delete, logged_in_user: logged_in_user }, 
		
		function(data) {	
			$("#js-notification_" + notification_id).hide();
		})			
		
	});
});


//Function A4: Delete All Notifications 
$(document).ready(function(){
	$("#js-clear-all-notifications").click(function(){
				
		if (confirm('Are you sure you want to clear all your Notifications?')) {			
			var logged_in_user = $('input[name=logged-in-user]').val();			
			var clear_all_notifications = "true";
			
			$.post(CODE_ROOT + 'notifications.php', { clear_all_notifications: clear_all_notifications, logged_in_user: logged_in_user  }, 
			
			function(data) { 
				$(".js-notification ").hide();
			})
			
		} else {
			// Don't delete  
		}	
		
	});
});

 
//FUNCTIONS C: UI RELATED
//Function C1: Show Pending Requests
$(document).ready(function(){
	$("#js-header-view-requests").click(function(){
		$("#js-header-pending-notifications").hide();
		$("#js-header-pending-requests").show();
		
		//Add Selected Bold
		$("#js-header-view-requests").removeClass("bold");
		$("#js-header-view-notifications").removeClass("bold");
		$("#js-header-view-requests").addClass("bold");
		
	});
});


//Function C2: Show Pending Notifications
$(document).ready(function(){
	$("#js-header-view-notifications").click(function(){
		$("#js-header-pending-requests").hide();	
		$("#js-header-pending-notifications").show();
 		
		//Add Selected Bold
		$("#js-header-view-requests").removeClass("bold");
		$("#js-header-view-notifications").removeClass("bold");
		$("#js-header-view-notifications").addClass("bold");
	});
});






