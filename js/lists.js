//FUNCTIONS TABLE OF CONTENTS//
/*

FUNCTIONS A: Master List 
	1) Function A1: Create New List
	2) Function A2: Show Edit List Area 
	3) Function A3: Rename List 
	4) Function A4: Delete List
	5) Function A5: Leave List
	
FUNCTIONS B: Master List with Abilility to add and Remove Users (more Control) 
	1) Function B1: Add Existing User to View List 
	2) Function B2: Add Existing User to Own list 
	3) Function B3: Email User to View list 
	4) Function B4: Email User to Own list 
	5) Function B5: Remove User From List (They must only have viewing privilege) 
	6) Function B6: Make List Public	
    7) Function B7: Make List Private	
	8) Function B8: Remove User From List 

FUNCTIONS C: Internal Functions and External Code 
	1) Function C1: Delete List	 
	2) Function C2: Leave List  
	
FUNCTIONS D: External Code 
	1) Function D1: Right Click on Master list (Folder)
	2) Function D2: Right Click on Master list for Viewer (Folder)
	3) Function D3: Right Click on Default list (Folder)
	4) Function D4: Drag and Drop Code 
 
*/
 
//Development Code Root
var CODE_ROOT = "../../functions/";

//Live Code Root 
//var CODE_ROOT = "../functions/";


//Function A1: Create New List
$(document).ready(function(){
	$(".js-new-list").click(function() {
		var list_name 			= $('input[name=list-name]').val();
		var group_id_full     	= $(this).attr('id');
		splitParts 	          	= group_id_full.split("_");
		var group_id		  	= splitParts[1];		
		var list_type			= $('input[name=list-type]').val();
		var logged_in_user 		= $('input[name=logged-in-user]').val();
	
		//Check list name is not empty
		if (list_name) {
			
			$.post(CODE_ROOT + 'lists.php', { list_name: list_name, list_type: list_type, group_id: group_id, logged_in_user: logged_in_user }, 
			
			function(data) {
				//alert(data);
				location.reload();
			})
			
		} else {
			$("#new-list-error-message").fadeIn(250);
			setTimeout(
			  function() 
			  {
				$("#new-list-error-message").fadeOut(2000);
			  }, 6000);
			
		}	
		
	});
});

//Function A2: Show Edit List Area 
$(document).ready(function(){
	$(".js-show-edit-list").click(function() {
		var list_full_id 	= $(this).attr('id');
		var splitParts;
		splitParts 		= list_full_id.split("_");
		var list_id 	= splitParts[1];
		
		$(".js-edit-list-area").hide();
		$(".js-list-area").show();
		
		$("#js-list-area_" + list_id).hide();
		$("#js-edit-list-area_" + list_id).show();
			
	});
});
	
//Function A3: Rename List 
//Part 1: Save New List Name 
$(document).ready(function(){
	$(".js-rename-list").click(function() {
		var list_full_id 	= $(this).attr('id');
		var splitParts;
		splitParts 		= list_full_id.split("_");
		
		var list_id 	= splitParts[1];
		var new_list_name = $('#js-edit-list-name-textarea_' + list_id).val();
		var logged_in_user  = $('input[name=logged-in-user]').val();
		var list_type  = $('input[name=list-type]').val();
		console.log(list_id);	
		
		$.post(CODE_ROOT + "lists.php", { new_list_name: new_list_name, list_id: list_id, logged_in_user: logged_in_user, list_type: list_type},
		
		function(data){
			$(".js-edit-list-area").hide();
			$(".js-list-area").show();
			$('#js-list-name-text_' + list_id).text(new_list_name);	
			
		});
			
	});
});

//Part 2: Cancel New List Name 
$(document).ready(function(){
	$(".js-cancel-edit-list").click(function() {

		$(".js-edit-list-area").hide();
		$(".js-list-area").show();		
			
	});
});

//Function A4: Delete List
$(document).ready(function(){
	$(".js-delete-list").click(function() {
		var list_id_full     	= $(this).attr('id');
		splitParts 	          	= list_id_full.split("_");
		var list_id			  	= splitParts[1];		
		var logged_in_user 		= $('input[name=logged-in-user]').val();

		if (confirm('Are you sure you want to delete this List?')) {
			internalDeleteList(list_id, logged_in_user);
		} else {
			// Don't delete post 
		}			
			
	});
});

//Function A5: Leave List


//FUNCTIONS B: Master List with Abilility to add and Remove Users (more Control) 
//Function B1: Add Existing User to View List 
$(document).ready(function(){
	$("button.js_list-new-member-submit").unbind('click').bind('click', function (e) {	
		var $button	 		 		= $(this);
		var group_id_full			= $(this).attr('id');
		splitParts 					= group_id_full.split("_");
		var list_id			 		= splitParts[1];	
		var logged_in_user 	 		= $('input[name=logged-in-user]').val();
		
		var master_site 	 		= $('input[name=master-site]').val();
		var notification_message 	= $('input[name=notification-message]').val();
		var notification_link 		= $('input[name=notification-link]').val();
		var list_type 		 = $('input[name=list-type]').val();
		var list_add_selected_friends = $('input:checkbox.js_add-group-user-check-box').filter(':checked').map(function () {
			return this.id;
		}).get();
		
		//alert(master_site + " " + notification_message  + " " + notification_link);
		
		//This is a test to make sure at lease one value was selected 
		var friend_username	= list_add_selected_friends[0];
		
		if (friend_username == null){
			$("div#js_error-add-list-member").show();
		} else {
			
			$.post(CODE_ROOT + 'lists.php', { 
				list_id: list_id, 
				logged_in_user: logged_in_user, 
				list_type: list_type, 
				list_add_selected_friends: list_add_selected_friends,
				master_site: master_site,
				notification_message: notification_message,
				notification_link: notification_link,
				}, 

			function(data) {
				location.reload();
			})		
			//alert(logged_in_user + " " + friend_username + " " + list_id + " " + list_type);
		}
	});
});

//Function B2: Add Existing User to Own list 
//Function ML3: Add Existing User to Own list (Does not have notifications yet)
$(document).ready(function(){
	$("button.js_list-new-co-owner-submit").unbind('click').bind('click', function (e) {	
	
		var $button	 		 = $(this);
		var group_id_full	 = $(this).attr('id');
		splitParts 			 = group_id_full.split("_");
		var list_id			 = splitParts[1];	
		var logged_in_user 	 = $('input[name=logged-in-user]').val();
		var list_type 		 = $('input[name=list-type]').val();
		var list_add_selected_owners = $('input:checkbox.js_add-group-user-check-box').filter(':checked').map(function () {
			return this.id;
		}).get();
		
		
		//This is a test to make sure at lease one value was selected 
		var friend_username	= list_add_selected_owners[0];
		
		if (friend_username == null){
			$("div#js_error-add-list-owner-member").show();
		} else {
			$.post(CODE_ROOT + 'lists.php', { list_id: list_id, logged_in_user: logged_in_user, list_type: list_type, list_add_selected_owners: list_add_selected_owners }, 

			function(data) {
				location.reload();
				//alert(data);
			})	
		}
	});
});

//Function B3: Email User to View list
 //Function ML4: Email User to View list

//Part 1: Add New Email to List 
$(document).ready(function(){
	$("#invite-user-add-email-one").click(function() {
	//	alert();
		$("#invite-user-add-email-one").hide();	
		$("#invite-user-add-email-two").show();
		$("#invite-email-two").show();
	});
});

$(document).ready(function(){
	$("#invite-user-add-email-two").click(function() {
		$("#invite-user-add-email-two").hide();	
		$("#invite-user-add-email-three").show();
		$("#invite-email-three").show();
	});
});

$(document).ready(function(){
	$("#invite-user-add-email-three").click(function() {
		$("#invite-user-add-email-three").hide();	
		$("#invite-user-add-email-four").show();
		$("#invite-email-four").show();
	});
});

$(document).ready(function(){
	$("#invite-user-add-email-four").click(function() {
		$("#invite-user-add-email-four").hide();	
		$("#invite-user-add-email-five").show();
		$("#invite-email-five").show();
	});
});

//Part 2: Invite User to View List with Email 
$(document).ready(function(){
	$("#js-list-email-invite-view-list").click(function() {
		//var email_message = $('input[name=invite-email-message]').val();
	    var email_message	 = $("textarea#invite-email-message-id").val();
		var email_one    	 = $('input[name=invite-email-one]').val();
		var email_two   	 = $('input[name=invite-email-two]').val();	
		var email_three 	 = $('input[name=invite-email-three]').val();
		var email_four   	 = $('input[name=invite-email-four]').val();
		var email_five    	 = $('input[name=invite-email-five]').val();	
		var logged_in_user 	 = $('input[name=logged-in-user]').val();
		var list_type 		 = $('input[name=list-type]').val();	
		var list_id			 = $('input[name=list-id]').val();	
		var site_link		 = $('input[name=site-link]').val();	

		var logged_in_user_id = $("#update-user-hidden-id").val();
		var invite_list_viewer = email_one + email_two + email_three + email_four + email_five;		
		var selected_users = new Array(email_one, email_two, email_three, email_four, email_five); 
		
		//Make sure email was entered 
		if (email_one || email_two || email_three || email_four || email_five) {
		
			$.post(CODE_ROOT + 'lists.php', { 
				list_id: list_id, 
				list_type: list_type, 
				invite_list_viewer: invite_list_viewer, 
				email_message: email_message, 
				selected_users: selected_users, 
				logged_in_user: logged_in_user, 
				site_link: site_link }, 
			
			function(data) {
				alert(data);
				$("#invite-email-message-sent").fadeIn(250);
				
				//location.reload();
			})

		} else {
			$("#invite-email-message-no-email").fadeIn(250);
			//$("div#empty-email-invite").fadeIn(250);
		}	
		
		
	});
});

//Function B4: Email User to Own list 
//Part 1: Add New Email to List 
$(document).ready(function(){
	$("#js_invite-user-add-email-one").click(function() {
	//	alert();
		$("#js_invite-user-add-email-one").hide();	
		$("#js_invite-user-add-email-two").show();
		$("#js_invite-email-two").show();
	});
});

$(document).ready(function(){
	$("#js_invite-user-add-email-two").click(function() {
		$("#js_invite-user-add-email-two").hide();	
		$("#js_invite-user-add-email-three").show();
		$("#js_invite-email-three").show();
	});
});

$(document).ready(function(){
	$("#js_invite-user-add-email-three").click(function() {
		$("#js_invite-user-add-email-three").hide();	
		$("#js_invite-user-add-email-four").show();
		$("#js_invite-email-four").show();
	});
});

$(document).ready(function(){
	$("#js_invite-user-add-email-four").click(function() {
		$("#js_invite-user-add-email-four").hide();	
		$("#js_invite-user-add-email-five").show();
		$("#js_invite-email-five").show();
	});
});

//Part 2: Invite User to List with Email 
$(document).ready(function(){
	$("#js-list-email-invite-user-submit").click(function() {

	    var email_message	 = $("textarea#invite-email-message-id").val();
		var email_one    	 = $('input[name=shared-list-invite-email-one]').val();
		var email_two   	 = $('input[name=shared-list-invite-email-two]').val();	
		var email_three 	 = $('input[name=shared-list-invite-email-three]').val();
		var email_four   	 = $('input[name=shared-list-invite-email-four]').val();
		var email_five    	 = $('input[name=shared-list-invite-email-five]').val();	
		var logged_in_user 	 = $('input[name=logged-in-user]').val();
		var list_type 		 = $('input[name=list-type]').val();	
		var list_id			 = $('input[name=list-id]').val();	
		var site_link		 = $("#js-site-link").val();	
		var logged_in_user_id = $("#update-user-hidden-id").val();
		var co_list_email_test = email_one + email_two + email_three + email_four + email_five;
		var selected_users = new Array(email_one, email_two, email_three, email_four, email_five); 
		
		//alert(email_message + " " + email_one + " " + email_two  + " " + email_three   + " " + logged_in_user);
	

		
		//Make sure email was entered 
		if (email_one || email_two || email_three || email_four || email_five) {
		
			$.post(CODE_ROOT + 'lists.php', { list_id: list_id, list_type: list_type, co_list_email_test: co_list_email_test, email_message: email_message, selected_users: selected_users, logged_in_user: logged_in_user, site_link: site_link }, 
			
			function(data) {
				//alert(data);
				//$("#invite-email-message-sent").fadeIn(250);
				
				location.reload();
			})

		} else {
			$("#js_invite-email-message-no-email").fadeIn(250);
			//$("div#empty-email-invite").fadeIn(250);
		}	
		
	
	});
});


//Function B5: Remove User From List (They must only have viewing privilege) 
$(document).ready(function(){
	$(".js-list-remove-user").click(function() {
		var list_id_full	 = $(this).attr('id');
		splitParts 			 = list_id_full.split("_");
		var list_id			 = splitParts[1];			
		var remove_user 	= $(this).data('selector');
	
		if (confirm('Are you sure you want to remove this User From the List?')) {
			$.post(CODE_ROOT + 'lists.php', { list_id: list_id, remove_user: remove_user }, 
			
			function(data) {
				//Hide User 
				$("#js-list-member-info_" + remove_user).hide();	
				//location.reload();
			})	
		} else {
			// Don't delete post 
		}	

	});
});


//Function B6: Make List Public	
$(document).ready(function(){
	$(".js-new-public-link").change(function() {
		var logged_in_user = $('input[name=logged-in-user]').val();		
		var list_id_full	 		= $(this).attr('id');
		splitParts 			 		= list_id_full.split("_");
		var list_id_make_public	 	= splitParts[1];			
			
		$.post(CODE_ROOT + 'lists.php', { list_id_make_public: list_id_make_public, logged_in_user: logged_in_user }, 
		
		function(data) {
			$(".js-list-status-public-area").show();
			$(".js-list-status-private-area").hide();	
		})		
	});
});


//Function B7: Make List Private	
$(document).ready(function(){
	$(".js-remove-public-link").change(function() {
		var logged_in_user = $('input[name=logged-in-user]').val();
		var list_id_full	 		= $(this).attr('id');
		splitParts 			 		= list_id_full.split("_");
		var list_id_make_private	= splitParts[1];		
			
		$.post(CODE_ROOT + 'lists.php', { list_id_make_private: list_id_make_private, logged_in_user: logged_in_user }, 
		
		function(data) {
			$(".js-list-status-private-area").show();				
			$(".js-list-status-public-area").hide();
		})			
	});
});



//FUNCTIONS C: Internal Functions 
//Function C1: Delete List	
function internalDeleteList(list_id, logged_in_user) {
	var delete_list_id = list_id;
	alert(list_id + " " + logged_in_user);

	$.post(CODE_ROOT + "lists.php", { delete_list_id: delete_list_id, logged_in_user: logged_in_user},
	
	function(data){
		$("#js-individual-list_" +  list_id).hide();
		
	});
}


//Function C2: Leave List	
function internalLeaveList(list_id, logged_in_user) {
	var leave_list_id = list_id;
	//alert(list_id + " " + logged_in_user);

	console.log(leave_list_id + " " + logged_in_user);
	
	$.post(CODE_ROOT + "lists.php", { leave_list_id: leave_list_id, logged_in_user: logged_in_user},
	
	function(data){
		$("#list-folder_" +  list_id).hide();
		//console.log(data);
	});
}


//FUNCTIONS D: External Code 
//Function D1: Right Click on Master list (Folder)
$(document).ready(function(){
	//$('.individual-link-holder').on('contextmenu', function(e) {
	$('.js-master-list-right-click').on('contextmenu', function(e) {
		
		//Get File ID and split
		var list_full_id 	= $(this).attr('id');
		var splitParts;
		splitParts 			= list_full_id.split("_");
		var list_id_local 	= splitParts[1];
		var user_name     	= $('input[name=logged-in-user]').val();	
		
		//Make variables global 
		window.list_id 		  = list_id_local; 
		window.logged_in_user = user_name; 	
			
	});

	context.init({preventDoubleContext: false});
	
	context.attach('.js-master-list-right-click', [
		{header: 'List'},
		{divider: true},
		
		/*Example
		{text: 'Rename Folder', action: function(e){
			alert("Rename" + list_id);
		
		}}, */
		
		//Function  Part 1: Delete List
		{text: 'Delete List', action: function(e){
			//If user confirms then delete this list 
			if (confirm('Are you sure you want to delete this list?')) {
				internalDeleteList(list_id, logged_in_user);
			} else {
				//Do nothing!
			}
	
		}},
		
		//Function Part 2: Rename List
		{text: 'Rename List', action: function(e){
			//internalRenameList(list_id, logged_in_user);
			//Hide Current List
			$(".js-individual-list").show();
			$("#js-individual-list_" + list_id).hide();
			$(".js-individual-list-edit").hide();

			//Show Editable List 
			$("#js-individual-list-edit_" + list_id).show();
			$("#js-new-list-name_" + list_id).focus();
			
			
		}}, 		
		/*
		//Function Part 3: Invite Users 
		{text: 'Invite Users', action: function(e){
			$("#js-share-list-trigger").click();
			
			//alert();		
		}}, 
		*/
		
		{divider: true},
		/*
		//Function  Part 3: Create a New Link Folder 
		{text: 'Share List', action: function(e){
			//$("#js-share-list-trigger").click();
			$("a#share-list").trigger("click");
		}}	
		*/
	]);
});

//Function D2: Right Click on Master list for Viewer (Folder)
$(document).ready(function(){
	//$('.individual-link-holder').on('contextmenu', function(e) {
	$('.js-master-list-right-click-view').on('contextmenu', function(e) {
		
		//Get File ID and split
		var list_full_id 	= $(this).attr('id');
		var splitParts;
		splitParts 			= list_full_id.split("_");
		var list_id_local 	= splitParts[1];
		var user_name     	= $('input[name=logged-in-user-list-delete]').val();	
		
		//Make variables global 
		window.list_id 		  = list_id_local; 
		window.logged_in_user = user_name; 	
			
	});

	context.init({preventDoubleContext: false});
	
	context.attach('.js-master-list-right-click-view', [
		{header: 'List'},
		{divider: true},
		
		/*Example
		{text: 'Rename Folder', action: function(e){
			alert("Rename" + list_id);
		
		}}, */
		
		//Function  Part 1: Leave List
		{text: 'Leave List', action: function(e){
			
			//If user confirms then delete this list 
			if (confirm('Are you sure you want to delete this list?')) {
				internalLeaveList(list_id, logged_in_user);		
			} else {
				//Do nothing!
			} 
		}}
	]);
});

//Function D3: Right Click on Default list (Folder)
$(document).ready(function(){
	//$('.individual-link-holder').on('contextmenu', function(e) {
	$('.js-default-list-right-click').on('contextmenu', function(e) {
		
		//Get File ID and split
		var list_full_id 	= $(this).attr('id');
		var splitParts;
		splitParts 			= list_full_id.split("_");
		var list_id_local 	= splitParts[1];
		var user_name     	= $('input[name=logged-in-user-list-delete]').val();	
		
		//Make variables global 
		window.list_id 		  = list_id_local; 
		window.logged_in_user = user_name; 	
			
	});

	context.init({preventDoubleContext: false});
	
	context.attach('.js-default-list-right-click', [
		{header: 'List'},
		{divider: true},
		
		/*Example
		{text: 'Rename Folder', action: function(e){
			alert("Rename" + list_id);
		
		}}, */
		/*
		//Function  Part 1: Delete List
		{text: 'Delete List', action: function(e){
			//If user confirms then delete this list 
			if (confirm('Are you sure you want to delete this list?')) {
				internalDeleteList(list_id, logged_in_user);
			} else {
				//Do nothing!
			}
	
		}},
		*/
		
		//Function  Part 2: 
		{text: 'Rename List', action: function(e){
			//internalRenameList(list_id, logged_in_user);
			//Hide Current List
			$(".js-individual-list").show();
			$("#js-individual-list_" + list_id).hide();
			$(".js-individual-list-edit").hide();

			//Show Editable List 
			$("#js-individual-list-edit_" + list_id).show();
			$("#js-new-list-name_" + list_id).focus();
			
		}}, 
		
		//Function Part 3: Invite Users 
		{text: 'Invite Users', action: function(e){
			alert();		
		}}, 	
		
		{divider: true},

		//Function  Part 3: Create a New Link Folder 
		{text: 'Share List', action: function(e){
			alert("Share");
			
		}}	
	]);
});

//Function D4: Drag and Drop Code 
$(document).ready(function(){
	//Code for dragable List 
	$( ".draggable-list" ).draggable({
      cursor: "move",
      cursorAt: { top: 32, left: 40 },
      helper: function( event ) {
        return $( "<div class='ui-widget-test'><img src='../images/icons/liked.png' alt='' style='width:40px;'></div>" );
      }
    });
 
	//Code for dropable 
 	$( ".droppable-list" ).droppable({
	
		accept: ".draggable-list",
		activeClass: "ui-state-hover",
		hoverClass: "ui-state-active",
		drop: function( event, ui ) {
			
		//Get ID for the link or file and split 
		var drag = $(ui.draggable).attr("id")
		var splitParts;
		splitParts = drag.split("_");
		var post_type_drag = splitParts[0];
		var post_id = splitParts[1];
		var logged_in_user = $(this).data('selector');
		var list_type = $(this).data('list-type');
		
		
		
		//Use AJAX to handle database actions 
		$(this)
			
			//Get ID of Master List 
			var id = $(this).attr('id');
			var splitPartsMasterList;
			splitPartsMasterList = id.split("_");
			var action_type = splitPartsMasterList[0];
			var list_folder_id = splitPartsMasterList[1];
			
			var folder_test = "list-folder";
	
			$.post(CODE_ROOT + 'lists.php', { list_folder_id: list_folder_id, post_id: post_id, logged_in_user: logged_in_user, list_type: list_type  }, 

			function(data) {	
				//Hide the file and clone (basically this looks like the file was "dropped" into the folder)
				$("div#" + drag).hide();
				$(".dragged-file").hide();
				//alert(data);
			
			})		
	
			//alert(list_folder_id + " " + post_id);
		}
	});
});



