//FUNCTIONS TABLE OF CONTENTS//
/*
FUNCTIONS A: All Functions Related to Boards
	1) Function A1: Create a Board 
	
*/

//FUNCTIONS A: All Functions Related to Boards
//Function A1: Create a Board 
$(document).ready(function(){
	//$("button.js_create-new-group").click(function(){
	$("#js-create-new-board").click(function(){
		var new_board_name 		= $('input[name=board-name]').val();
		var group_id 		    = $('input[name=group-id]').val();
 		var logged_in_user 	 	= $('input[name=logged-in-user]').val();	
 		var group_is_private 	= 1;
		/*
		if(document.getElementById('js-create-board-private').checked) {
			var group_is_private = 1;
		} else {
			var group_is_private = 0;
		}
		*/
		//User has entered Group Name 
		if (new_board_name) {

			$.post(CODE_ROOT + 'boards.php', { 
				new_board_name: new_board_name, 
				group_id: group_id, 
				logged_in_user: logged_in_user, 
				group_is_private: group_is_private }, 
		
			function(data) {
				location.reload();
				console.log(data);
			})	
		
		//User has not entered Group Name 
		} else {
			$("#js-create-new-board-empty-name-warning").show();			
		}

	});
});












////SORT////

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



//Function G5: Create Board 

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


/*


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
*/