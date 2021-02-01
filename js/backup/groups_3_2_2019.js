//FUNCTIONS TABLE OF CONTENTS//
/*
FUNCTIONS G: All Functions Related to Group
	1) Function G1: Create Group from Existing User 
	2) Function G2: Create Group from Email
	3) Function G3: Add Existing User to Group 
	4) Function G4: Add Existing User to Group through Email 
	5) Function G5: Create Board (boards are like groups but can have followers)
	6) Function G6: Follow Group  
	7) Function G7: UnFollow Group 	
	8) Function G8: Rename Group 
	9) Function G9: Leave Group 
	10) Function G10: Delete Group 
	
FUNCTIONS I: Internal Functions
	1) Function I.1: Internal Rename Group	
	2) Function I.2: Internal Leave Group
	3) Function I.3: Check for Valid Email Address
	4) Function I.4: Internal Delete Group
	
FUNCTIONS UI: Functions Related to Group User Interface
	1) Function UI.1: Show Pending Members
	2) Function UI.1: Show Active Members

FUNCTIONS R: Right Click and Other Code 
	1) Function R.1: Group Right Click Code
	2) Function R.2: Mywall Right Click Code
*/

//Development Code Root
var CODE_ROOT = "../../functions/";

//Live Code Root 
//var CODE_ROOT = "../functions/";


//Function G1: Create Group from Existing User 
$(document).ready(function(){
	$("#js-create-new-group").click(function(){
		var create_new_group  	= "true";
		var new_group_type 		= $('input[name=new-group-type]').val();	
		var group_name 		    = $('input[name=new-group-name]').val();	
		var master_site		    = $('input[name=master-site]').val();
 		var logged_in_user 	 	= $('input[name=logged-in-user]').val();	
 
		var selected_friends 	= $('input:checkbox.js-new-group-user-check-box').filter(':checked').map(function () {
			return this.id;
		}).get(); 

		//Add Logged in User to Group
		selected_friends.push(logged_in_user);
			
		$.post(CODE_ROOT + 'groups.php', { 
			create_new_group: create_new_group, 
			new_group_type: new_group_type, 
			master_site: master_site, 
			group_name: group_name, 
			logged_in_user: logged_in_user, 
			selected_friends: selected_friends }, 
	
		function(data) {
			
			//Reset Form Values
			location.reload();
			
		})		

		//console.log(selected_friends);
	});
});

//Function G2: Create Group from Email
$(document).ready(function(){
	$("button.js_create-new-group-email").click(function(){
 		var logged_in_user 	 	 	= $('input[name=logged-in-user]').val();
	 	var ng_invited_friend_email = $('input[name=js_new-group-user-email]').val();			
		var group_name 		        = $('input[name=js-new-group-name]').val();	
		var site_url			 	= $('input[name=js-site-url]').val();

		//Check if an email was entered and then process request 
		if (isValidEmailAddress(ng_invited_friend_email)){
			
			$.post(CODE_ROOT + 'groups.php', { logged_in_user: logged_in_user, ng_invited_friend_email: ng_invited_friend_email, group_name: group_name, site_url: site_url }, 
		
			function(data) {
				location.reload();
				//alert(data);
				//$("div#js_email-sent").show();
			})
		} else {
			//alert("hi");
			
			$("div#js_error-new-group-member-email").show();
		}	
	});
});

//Function G3: Add Existing User to Group 
$(document).ready(function(){
	$(".js-add-users-to-group").click(function(){
		var group_add_users	= "true";
		var logged_in_user  = $('input[name=logged-in-user]').val();
 		var group_id_full	= $(this).attr('id');
		splitParts 			= group_id_full.split("_");
		var group_id 		= splitParts[1];	
		var group_add_users_selected = $('input:checkbox.js-add-users-to-group-check-box').filter(':checked').map(function () {
			return this.id;
		}).get();
		
		var user_selected_test	= group_add_users_selected[0];
		
		//Submit New Users if there was no Error
		if (user_selected_test == null){
			$("#js-add-users-to-group-error").show();
		} else {
			$.post(CODE_ROOT + 'groups.php', { group_add_users: group_add_users, group_id: group_id, logged_in_user: logged_in_user, group_add_users_selected: group_add_users_selected }, 
		
			function(data) {		
				//location.reload();
	
			})			
		}

	});
});

//Function G4: Add Existing User to Group through Email 
$(document).ready(function(){
	$("button.js_group-new-member-email-submit").unbind('click').bind('click', function (e) {	
		var $button	 				= $(this);
		var group_id_full			= $(this).attr('id');
		splitParts 				 	= group_id_full.split("_");
		var group_id 			 	= splitParts[1];		
		var logged_in_user_email 	= $('input[name=logged-in-user]').val();
		var friend_email		 	= $('input[name=js-add-group-user-email]').val();
		var site_url			 	= $('input[name=js-site-url]').val();
		

		//Check if an email was entered and then process request 
		if (isValidEmailAddress(friend_email)){
		
			$.post(CODE_ROOT + 'groups.php', { group_id: group_id, logged_in_user_email: logged_in_user_email, friend_email: friend_email, site_url: site_url }, 
	
			function(data) {
				//location.reload();
				console.log(data);
				//alert(data);
				$("div#js_email-sent").show();
			})	
	
		} else { 
			$("div#js_error-add-group-member-email").show();
		}		
	});
});


//Function G5: Create Board 
$(document).ready(function(){
	//$("button.js_create-new-group").click(function(){
	$("#js-create-new-board").click(function(){
		var create_new_board 	= "board";
		var group_name 		    = $('input[name=new-group-name]').val();
 		var logged_in_user 	 	= $('input[name=logged-in-user]').val();	
 		var master_site 	 	= $('input[name=master-site]').val();	
 		if(document.getElementById('js-create-board-private').checked) {
			var group_is_private = 1;
		} else {
			var group_is_private = 0;
		}

		//User has entered Group Name 
		if (group_name) {

			$.post(CODE_ROOT + 'groups.php', { create_new_board: create_new_board, group_name: group_name, master_site: master_site, logged_in_user: logged_in_user, group_is_private: group_is_private }, 
		
			function(data) {
				location.reload();
				
			})	
		
		//User has not entered Group Name 
		} else {
			$("#js-create-new-board-empty-name-warning").show();			
		}

	});
});


//Function G6: Follow Board (Group)
$(document).ready(function(){
	$(".js-follow-group").click(function(){	
		var group_id_full			= $(this).attr('id');
		splitParts 					= group_id_full.split("_");
		var group_id_follow 		= splitParts[1];	
		var group_created_by		= $('input[name=group-created-by]').val();	
		var logged_in_user  		= $('input[name=logged-in-user]').val();
		var group_total_followers 	= $("#js-group-total-followers_" + group_id_follow).text();
		group_total_followers 		= parseInt(group_total_followers);
		var follow_group    		= "follow";

		$.post(CODE_ROOT + 'groups.php', { group_id_follow: group_id_follow, logged_in_user: logged_in_user, follow_group: follow_group, group_created_by: group_created_by}, 

		function(data) {
			
			//UPDATE UI 
			//Step 1: Update Follower Count
			group_total_followers = group_total_followers + 1;
			$("#js-group-total-followers_" + group_id_follow).text(group_total_followers);
			
			//Step 2: Update Button
			$("#js-follow-group_" + group_id_follow).hide();
			$("#js-unfollow-group_" + group_id_follow).show();				
			//$("#js-unfollow-group_" + group_id_follow).hide();	
			//$(".js-unfollow-group").hide();	
			//$(".js-follow-group").hide();	
			//alert(data);
			//alert(data);
			//console.log(group_id_full);
		})

	});
});


//Function G7: UnFollow Board (Group)
$(document).ready(function(){
	$(".js-unfollow-group").click(function(){	
		var group_id_full		= $(this).attr('id');
		splitParts 				= group_id_full.split("_");
		var group_id_unfollow 	= splitParts[1];	
		var group_created_by	= $('input[name=group-created-by]').val();	
		var logged_in_user  	= $('input[name=logged-in-user]').val();
		var unfollow_group    	= "unfollow";
		var group_total_followers 	= $("#js-group-total-followers_" + group_id_unfollow).text();
		group_total_followers 		= parseInt(group_total_followers);
		
		$.post(CODE_ROOT + 'groups.php', { group_id_unfollow: group_id_unfollow, logged_in_user: logged_in_user, unfollow_group: unfollow_group, group_created_by: group_created_by}, 

		function(data) {
			
			//UPDATE UI 
			//Step 1: Update Follower Count
			group_total_followers = group_total_followers - 1;
			$("#js-group-total-followers_" + group_id_unfollow).text(group_total_followers);
			
			//Step 2: Update Button		
			$("#js-unfollow-group_" + group_id_unfollow).hide();	
			$("#js-follow-group_" + group_id_unfollow).show();				
			console.log(group_id_unfollow);
		})
		
		//alert(group_id_full + " " + group_created_by + " " + logged_in_user + " " + follow_group);
	});
});


//Function G8: Rename Group 
//Part 1: Show Edit Area 
$(document).ready(function(){
	$(".js-group-rename").click(function(){
		var group_full_id = $(this).attr('id');
		var splitParts;
		splitParts = group_full_id.split("_");
		var group_id = splitParts[1]; 		

		$(".js-group-edit-name").hide();			
		$("#js-group-rename_" +  group_id).hide();
		$("#js-group-name_" +  group_id).hide();
		$("#js-group-edit-name_" +  group_id).show();
		$('input[name=rename-group]').focus();
		
	});
});


//Part 2: Cancel Edit 
$(document).ready(function(){
	$(".js-group-rename-cancel").click(function(){
		var group_full_id = $(this).attr('id');
		var splitParts;
		splitParts = group_full_id.split("_");
		var group_id = splitParts[1]; 		
	
		$(".js-group-edit-name").hide();	
		$(".js-group-name").show();
		$("#js-group-rename_" +  group_id).show();		

 	
	});
});

//Part 3: Save Changes 
$(document).ready(function(){
	$(".js-group-rename-save").click(function(){
		var group_full_id = $(this).attr('id');
		var splitParts;
		splitParts = group_full_id.split("_");
		var group_id_rename = splitParts[1]; 		
		var new_group_name = $('#js-rename-group_' + group_id_rename).val();
		var logged_in_user = $('input[name=logged-in-user]').val();
		
		$.post(CODE_ROOT + "groups.php", { group_id_rename: group_id_rename, new_group_name: new_group_name, logged_in_user: logged_in_user},
		
		function(data){
			$("#js-group-edit-name_" +  group_id_rename).hide();	
			$("#js-current-group-name_" +  group_id_rename).text(new_group_name);
			$("#js-group-rename_" +  group_id_rename).show();		
			$("#js-group-name_" +  group_id_rename).show();
		});	

	});
});


//Function G9: Leave Group 
$(document).ready(function(){
	$(".js-group-leave").click(function(){
		var group_full_id = $(this).attr('id');
		var splitParts;
		splitParts = group_full_id.split("_");
		var leave_group_id = splitParts[1]; 		
		var logged_in_user = $('input[name=logged-in-user]').val();
		
		if (confirm('Are you sure you want to leave this Group?')) {
			$.post(CODE_ROOT + "groups.php", { leave_group_id: leave_group_id, logged_in_user: logged_in_user},

			function(data){
				//window.location.href = "http://stackoverflow.com";
				//$("#group_" + group_id_leave).hide();	
				window.location.href = '../site_files/groups.php';
			});		
			
			
		} else {
			//Do nothing!
		}	

	});
});


//Function G10: Delete Group 
$(document).ready(function(){
	$(".js-group-delete").click(function(){
		var group_full_id = $(this).attr('id');
		var splitParts;
		splitParts = group_full_id.split("_");
		var delete_group_id = splitParts[1]; 		
		var logged_in_user = $('input[name=logged-in-user]').val();
			
		//Call Function to Delete Group	
		internalDeleteGroup(delete_group_id, logged_in_user);
	});
});





//FUNCTIONS I: Internal Functions
//Function I.1: Internal Rename Group
function internalRenameGroup(group_id_rename, new_group_name, logged_in_user) {

	$.post(CODE_ROOT + "groups.php", { group_id_rename: group_id_rename, new_group_name: new_group_name, logged_in_user: logged_in_user},
	
	function(data){	
	
	});	
}

//Function I.2: Internal Leave Group
function internalLeaveGroup(leave_group_id, logged_in_user) {
	
	$.post(CODE_ROOT + "groups.php", { leave_group_id: leave_group_id, logged_in_user: logged_in_user},

	function(data){
		$("#group_" + group_id).hide();	
	
	});	
}

//Function I.3: Check for Valid Email Address
function isValidEmailAddress(emailAddress) {
    var pattern = /^([a-z\d!#$%&'*+\-\/=?^_`{|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+(\.[a-z\d!#$%&'*+\-\/=?^_`{|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+)*|"((([ \t]*\r\n)?[ \t]+)?([\x01-\x08\x0b\x0c\x0e-\x1f\x7f\x21\x23-\x5b\x5d-\x7e\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|\\[\x01-\x09\x0b\x0c\x0d-\x7f\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))*(([ \t]*\r\n)?[ \t]+)?")@(([a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|[a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF][a-z\d\-._~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]*[a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])\.)+([a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|[a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF][a-z\d\-._~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]*[a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])\.?$/i;
    return pattern.test(emailAddress);
}


//Function I.4: Internal Delete Group
function internalDeleteGroup(delete_group_id, logged_in_user) {
	$.post(CODE_ROOT + "groups.php", { delete_group_id: delete_group_id, logged_in_user: logged_in_user},

	function(data){
		$("#js-group_" + delete_group_id).hide();	
		$("#js-board_" + delete_group_id).hide();	
	});
}


//FUNCTIONS UI: Functions Related to Group User Interface
//Function UI.1: Show Pending Members
$(document).ready(function(){
	$(".js-group-list-show-pending-members").click(function(){
		var group_full_id = $(this).attr('id');
		var splitParts;
		splitParts = group_full_id.split("_");
		var group_id = splitParts[1];	
		$("#js-group-list-active-members_" + group_id).hide();
		$("#js-group-list-pending-members_" + group_id).show();
		
		//Add Selected Bold
		$("#js-group-list-show-pending-members_" + group_id).removeClass("bold");
		$("#js-group-list-show-active-members_" + group_id).removeClass("bold");
		$("#js-group-list-show-pending-members_" + group_id).addClass("bold");
		
	});
});

//Function UI.1: Show Active Members
$(document).ready(function(){
	$(".js-group-list-show-active-members").click(function(){
		var group_full_id = $(this).attr('id');
		var splitParts;
		splitParts = group_full_id.split("_");
		var group_id = splitParts[1];	
		
		$("#js-group-list-pending-members_" + group_id).hide();
		$("#js-group-list-active-members_" + group_id).show();

		//Add Selected Bold
		$("#js-group-list-show-pending-members_" + group_id).removeClass("bold");
		$("#js-group-list-show-active-members_" + group_id).removeClass("bold");
		$("#js-group-list-show-active-members_" + group_id).addClass("bold");		
		
	});
});


//Function UI.3: Group Menu Show Pending Members
$(document).ready(function(){
	$(".js-group-show-pending-members").click(function(){
		var group_full_id = $(this).attr('id');
		var splitParts;
		splitParts = group_full_id.split("_");
		var group_id = splitParts[1];	

		$("#js-group-menu-active-members_" + group_id).hide();
		$("#js-group-menu-pending-members_" + group_id).show();

		//Add Selected Bold
		$("#js-group-show-pending-members_" + group_id).removeClass("bold");
		$("#js-group-show-active-members_" + group_id).removeClass("bold");
		$("#js-group-show-pending-members_" + group_id).addClass("bold");
	});
});

//Function UI.4: Group Menu Show Active Members
$(document).ready(function(){
	$(".js-group-show-active-members").click(function(){
		var group_full_id = $(this).attr('id');
		var splitParts;
		splitParts = group_full_id.split("_");
		var group_id = splitParts[1];	

		$("#js-group-menu-pending-members_" + group_id).hide();
		$("#js-group-menu-active-members_" + group_id).show();


		//Add Selected Bold
		$("#js-group-show-pending-members_" + group_id).removeClass("bold");
		$("#js-group-show-active-members_" + group_id).removeClass("bold");
		$("#js-group-show-active-members_" + group_id).addClass("bold");		

	});
});



//FUNCTIONS R: Right Click and Other Code 
//Function R.1: Board Right Click Code (Own)
$(document).ready(function(){
    $('.js-board-right-click').on('contextmenu', function(e) {
        //Get File ID and split
        var group_id_full           = $(this).attr('id');
        var splitParts;
        splitParts                 = group_id_full.split("_");
        var group_id_local          = splitParts[1];  
      	var logged_in_user_local   = $('input[name=logged-in-user]').val();	  
      	var logged_in_user_local   = $('input[name=logged-in-user]').val();	  
         
        //Make variables global 
        window.group_id         = group_id_local; 
        window.delete_group_id  = group_id_local; 
        window.logged_in_user   = logged_in_user_local;
       
    });
 
    context.init({preventDoubleContext: false});
     
    context.attach('.js-board-right-click', [
        {header: 'Groups'},
        {divider: true},

        //Rename Group
        {text: 'Rename', action: function(e){
			alert(group_id);
			//$(".js-file-name-edit").hide();  	
			//$(".js-file-name").show();	
			//$("#js-file-name_" +  file_id).hide();	
			//$("#js-file-name-edit_" +  file_id).show();  		
        }},
		
        {divider: true},
         
        //Delete Group 
        {text: 'Delete Board', action: function(e){
			
			if (confirm('Are you sure you want to delete this Group?')) {
				//alert(delete_group_id);
				internalDeleteGroup(delete_group_id, logged_in_user);		
			} else {
				//Do Nothing	
			}	

        }}
         
    ]);
});

//Function R.2: Board Right Click Code (Do not own just following)
$(document).ready(function(){
    $('.js-board-right-click-follow').on('contextmenu', function(e) {
        //Get File ID and split
        var group_id_full           = $(this).attr('id');
        var splitParts;
        splitParts                 = group_id_full.split("_");
        var group_id_local          = splitParts[1];  
      	var logged_in_user_local   = $('input[name=logged-in-user]').val();	  
      	var logged_in_user_local   = $('input[name=logged-in-user]').val();	  
         
        //Make variables global 
        window.group_id         = group_id_local; 
        window.logged_in_user   = logged_in_user_local;
       
    });
 
    context.init({preventDoubleContext: false});
     
    context.attach('.js-board-right-click-follow', [
        {header: 'Groups'},
        {divider: true},

        //Rename Group
        {text: 'Unfollow', action: function(e){
			alert(group_id);
			//$(".js-file-name-edit").hide();  	
			//$(".js-file-name").show();	
			//$("#js-file-name_" +  file_id).hide();	
			//$("#js-file-name-edit_" +  file_id).show();  		
        }},
		
        {divider: true},
         
        //Delete Group 
        {text: 'Other Group', action: function(e){
			
			if (confirm('Are you sure you want to delete this Group?')) {
				//alert(delete_group_id);
				//internalDeleteGroup(delete_group_id, logged_in_user);		
			} else {
				//Do Nothing	
			}	

        }}
         
    ]);
});


//Function R.2: Mywall Right Click Code
/*
$(document).ready(function(){
    $('.js-my-wall-group-right-click').on('contextmenu', function(e) {
        //Get File ID and split
        var group_id_full           = $(this).attr('id');
        var splitParts;
        splitParts                 = group_id_full.split("_");
        var group_id_local          = splitParts[1];  
      	var logged_in_user_local   = $('input[name=logged-in-user]').val();	  
         
        //Make variables global 
        window.delete_group_id = group_id_local; 
        window.logged_in_user = logged_in_user_local;
       
    });
 
    context.init({preventDoubleContext: false});
     
    context.attach('.js-my-wall-group-right-click', [
        {header: 'Groups'},
        {divider: true},

        //Rename Group
        {text: 'Rename', action: function(e){
			
			//$(".js-file-name-edit").hide();  	
			//$(".js-file-name").show();	
			//$("#js-file-name_" +  file_id).hide();	
			//$("#js-file-name-edit_" +  file_id).show();  		
        }},
		
        {divider: true},
         
        //Delete Group 
        {text: 'Delete Group', action: function(e){
			
			if (confirm('Are you sure you want to delete this Group?')) {
				internalDeleteGroup(delete_group_id, logged_in_user);		
			} else {
				//Do Nothing	
			}	

        }}
         
    ]);
});

*/


/*
$(document).ready(function(){
	$('.js-my-wall-group-right-click').on('contextmenu', function(e) {
		//Get File ID and split
		var group_full_id = $(this).attr('id');
		var splitParts;
		splitParts = group_full_id.split("_");
		var group_id_local = splitParts[1];
		
		var logged_in_user_local = $('input[name=logged-in-user]').val();;	

		
		//Make variables global 
		//window.group_id = group_id_local; 
		window.logged_in_user = logged_in_user_local; 
		//window.group_name = squareName; 

	});

	context.init({preventDoubleContext: false});
	
	context.attach('.js-my-wall-group-right-click', [
		{header: 'Group'},
		{divider: true},
		
		//Function G8 Part 3: Leave Group 
		{text: 'Change Image', action: function(e){
			
			//alert(group_id + " " + user_name + " " + group_name);
			alert(logged_in_user);
			
		}},
		
		{divider: true},
		
		//Function G8 Part 3: Leave Group 
		{text: 'Delete', action: function(e){
			var leave_group_id = group_id;	
			
			if (confirm('Are you sure you want to leave this Group?')) {
				
				
				
			} else {
				//Do nothing!
			}			
		}}	
		
	]);
});
*/








//////////////////

/*
//Function G10: Open and Close Group Create Type 
//Part 1: Show Create Group
$(document).ready(function(){
	$("#js-group-create-current-friend").click(function(){
		$("#js-create-group-email").hide();
		$("#js-create-group-email-submit-button").hide();	
		$("#js-create-group-current-user-submit-button").show();
		$("#js-create-group-current-user").show();
	});
});


//Part 2: Show Add User by Current User
$(document).ready(function(){
	$("#js-group-create-email").click(function(){
		$("#js-create-group-current-user").hide();
		$("#js-create-group-current-user-submit-button").hide();
		$("#js-create-group-email-submit-button").show();		
		$("#js-create-group-email").show();		
	});
});



//Function G11: Open Group on Click Code   
//Part 1: 
$(document).ready(function(){
	$(".js-group-individual").click(function(){
		var group_full_id = $(this).attr('id');
		var splitParts;
		splitParts = group_full_id.split("_");
		var group_id = splitParts[1]; 		
		//alert(group_id);
		$("#js-group-open-trigger_" + group_id).find('a').trigger('click');

		var href = $("#js-group-open-trigger_" + group_id).attr('href');
		window.location.href = href; //causes the browser to refresh and load the requested url
	});
});


//Part 2: Trigger Individual Group Opening on Click 
$(document).ready(function(){
	$("div.individual-group").click(function(){
		var $div	 		= $(this);
		var group_id_full	= $(this).attr('id');
		splitParts 			= group_id_full.split("_");
		var group_id 		= splitParts[1];	
		
		if ($("#group-edit-name_" + group_id).is(":visible")){
			// element is hidden
			//alert("visible");
		} else {
			//alert("not");
			document.getElementById("individual-group-link_" + group_id).click()
		}
	});
});




//FUNCTIONS G.UI: Functions Related to Group User Interface

//Function G.UI 3: Show Create Solo Group (Create New Board)
$(document).ready(function(){
	$("#js-create-new-group-show").click(function(){		
		$("#js-create-new-board-area").hide();
		//$("#js-create-new-board-input-area").slideDown();
		$("#js-create-new-board-input-area").show();
	});
});

//Function G.UI 4: Hide Create Solo Group (Create New Board)
$(document).ready(function(){
	$("#js-create-new-group-hide").click(function(){	
		$("#js-create-new-board-input-area").hide();	
		$("#js-create-new-board-area").show();	
	});
});

*/






