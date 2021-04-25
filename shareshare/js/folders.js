/*
FUNCTIONS A: Create New Folder 
	1) Function A1: Show Create new Folder Area 
	2) Function A2: Hide Create new Folder Area (Cancel)	
	3) Function A3: Save New Folder

FUNCTIONS B: Folder Related 
	1) Function B1: Select Folder 
	2) Function B2: Double Click Folder (Open Folder)
	3) Function B3: Rename Folder 
	4) Function B4: Cancel Rename Folder 
	5) Function B5: Save New Folder Name 
	6) Function B6: Delete Folder 

FUNCTIONS C: Global Folder Functions   
	1) Function C1: Global Rename Folder 
	2) Function C2: Global Delete Folder 

FUNCTIONS D: Right Click, Dropzone Related and Drag and Drop  
	1) Function D1: Folder Right Click Code  
	
*/

var CURRENT_FILE_ID = 0;
var CURRENT_FOLDER_ID = 0;

//FUNCTIONS A: Create New Folder 
//Function A1: Show Create new Folder Area 
$(document).ready(function(){
	$(".js-show-create-folder").click(function(){
		$("#js-create-new-folder-area").show();	
	});
});

//Function A2: Hide Create new Folder Area (Cancel)
$(document).ready(function(){
	$(".js-cancel-create-folder").click(function(){
		$("#js-create-new-folder-area").hide();		
	});
});

//Function A3: Save New Folder
$(document).ready(function(){
    $("#js-save-new-folder-create").click(function(){

		var master_site 			= $('input[name=master-site]').val();
		var create_new_folder_name 	= $("#js-create-new-folder-name").val();
		var parent_folder 			= $('#js-parent-folder').val();
		var group_id    			= $('input[name=group-id]').val();
		var logged_in_user			= $('input[name=logged-in-user]').val();

		if (!create_new_folder_name) {
			var create_new_folder_name = "New Folder";
		} 	
		//console.log(master_site + "  " + create_new_folder_name + "  " + parent_folder + "  " + group_id + "  " + logged_in_user);
 
		$.post(CODE_ROOT + 'folders.php', { 
			master_site: master_site, 
			create_new_folder_name: create_new_folder_name, 
			parent_folder: parent_folder, 
			group_id: group_id, 
			logged_in_user: logged_in_user 
		}, 		

		function(data) {
			//alert(data);
			location.reload();
		})	

    });
});

//FUNCTIONS B: Folder Related 
//Function B1: Select Folder 
$(document).ready(function(){
	$('.js-folder').on('click',function(e){
		
		//Part 1: Get File ID and File Name then call the Select Folder Function 
		var folder_id_full 	= $(this).attr('id');
		splitParts 			= folder_id_full.split("_");	
		var folder_id		= splitParts[1];	
		var folder_name = $("#js-folder-name-text_" + folder_id).text();
		
		//Part 2: Set Selected File Global Variables 
		CURRENT_FOLDER_ID = folder_id;
		CURRENT_FILE_ID = 0;
		
		//Part 3: Add CSS Style  
		$(".js-folder").removeClass("folder-selected");
		$(".js-file").removeClass("file-selected");
		$("#js-folder_" + folder_id).addClass("folder-selected");
		$(".js-folder-name-edit").hide();	
		$(".js-folder-name").show();			
	
		//Part 4: Set data for the Folder Action Area 
		$("#js-file-selected").hide();	
		$("#js-folder-selected").show();			
		$("#js-selected-folder-name").text(folder_name);		
		
	});
});

//Function B2: Double Click Folder (Open Folder)
$(document).ready(function(){
    $(".js-folder").dblclick(function(){
		var folder_id_full		= $(this).attr('id');
		splitParts 				= folder_id_full.split("_");
		var folder_id			 = splitParts[1];	
		//var current_folder 	 	= $('input[name=current-folder]').val();
		window.location = $("#js-open-folder-link_" + folder_id).attr('href');
		//console.log(" File: " + CURRENT_FILE_ID + " Folder: " + CURRENT_FOLDER_ID);
		
    });
});

//Function B3: Rename Folder (Handle UI) 
$(document).ready(function(){
	$('.js-trigger-folder-rename').on('click',function(e){	

		//Hide any previous Errors 
		$(".js-rename-folder-error").hide();

		//This function accesses the global variable that has already been set on first click 
		var folder_id = CURRENT_FOLDER_ID;
		
		$(".js-folder-name").show();			
		$(".js-folder-name-edit").hide();			
		$("#js-folder-name_" +  folder_id).hide();  
		$("#js-folder-name-edit_" +  folder_id).show();  
		
	});
});

//Function B4: Cancel Rename Folder  
$(document).ready(function(){
	$('.js-folder-edit-name-cancel').on('click',function(e){	
	
		//Remove Error Warnings 
		$(".js-rename-folder-error").hide();
		
		$(".js-folder-name-edit").hide();					
		$(".js-folder-name").show();		
	});
});

//Function B5: Save New Folder Name 
$(document).ready(function(){
	$(".js-save-folder-name").click(function(){
		$(".js-rename-folder-error").hide();
		var folder_id_full		= $(this).attr('id');
		splitParts 				= folder_id_full.split("_");
		var folder_id			 = splitParts[1];	
		var new_folder_name		= $("#js-rename-folder-new-name_" + folder_id).val();
		var logged_in_user  	= $('input[name=logged-in-user]').val();
		
		console.log(folder_id + " " + new_folder_name  + " " + logged_in_user);
		renameFolder(folder_id, new_folder_name, logged_in_user);
	
	});
});

//Function B6: Delete Folder 
$(document).ready(function(){
	$('.js-trigger-folder-delete').on('click',function(e){	
		
		//This function accesses the global variable that has already been set on first click 
		var folder_id 				= CURRENT_FOLDER_ID;
		var logged_in_user			= $('input[name=logged-in-user]').val();
 
		//console.log(folder_id, logged_in_user);
		deleteFolder(folder_id, logged_in_user);
	});
});

//Function C1: Global Rename Folder 
function renameFolder(folder_id, new_folder_name, logged_in_user) {	
	
	//A Valid Folder Name was Entered 
	if (new_folder_name) {
		$.post(CODE_ROOT + 'folders.php', { folder_id: folder_id, new_folder_name: new_folder_name, logged_in_user: logged_in_user }, 

		function(data) { 
			$("#js-folder-name-text_" + folder_id).text(new_folder_name);					
			$(".js-folder-name-edit").hide();  	
			$(".js-folder-name").show();
		})		
			
	//No Folder Name 
	} else {
		$("#js-rename-folder-error_" + folder_id).show();
	}

	
}

//Function C2: Global Delete Folder 
function deleteFolder(folder_id_delete, logged_in_user) {
	var file_delete_outcome = "fail";

	if (confirm('Are you sure you want to delete this file?')) {
		$.post(CODE_ROOT + 'folders.php', { folder_id_delete: folder_id_delete, logged_in_user: logged_in_user},
			 
		function(data){
			$("#js-folder_" + folder_id_delete).fadeOut(100);
		}); 
	}   
}

//FUNCTIONS D: Right Click, Dropzone Related and Drag and Drop  
//Function D1: Folder Right Click Code  
$(document).ready(function(){
    $('.js-folder-right-click').on('contextmenu', function(e) {
        //Get File ID and split
        var folder_id_full           = $(this).attr('id');
        var splitParts;
        splitParts                 = folder_id_full.split("_");
        var folder_id_local        = splitParts[1];  
      	var logged_in_user_local   = $('input[name=logged-in-user]').val();	  

        //Make variables global 
        window.folder_id = folder_id_local; 
        window.logged_in_user = logged_in_user_local;
     	
		//Add CSS Style  
		$(".js-folder").removeClass("file-selected");
		$("#" + folder_id_full).addClass("file-selected");
		
    });
 
    context.init({preventDoubleContext: false});
     
    context.attach('.js-folder-right-click', [
        {header: 'Folders'},
        {divider: true},

        //Rename Folder
        {text: 'Rename', action: function(e){
			console.log("rename " + folder_id);
			
			//Hide any previous Errors 
			$(".js-rename-folder-error").hide();
			$(".js-folder-name").show();			
			$(".js-folder-name-edit").hide();			
			$("#js-folder-name_" +  folder_id).hide();  
			$("#js-folder-name-edit_" +  folder_id).show();  
        }},

       {divider: true},
         
        //Delete Folder 
        {text: 'Delete Folder', action: function(e){
			console.log("delete " + folder_id);
			deleteFolder(folder_id, logged_in_user);
			//deleteFolder(folder_id, logged_in_user);
        }}
         
    ]);
});	
	

/////////////////////////////////
//// APPENDIX: Old Code 
/////////////////////////////////
/*
//Function G4: Prevent link on folders opening until double click
$('a.folder').click(function(e) {
  //alert();
  e.preventDefault();
});

$('a.folder').dblclick(function(e) {
	//alert();
    window.location.replace($(this).attr("href"));
});

//Function G5: Only allow file download on double click 
$('a.file-click').click(function(e) {
  //alert();
  e.preventDefault();
});

$('a.file-click').dblclick(function(e) {
	//alert();
    window.location.replace($(this).attr("href"));
});

*/








