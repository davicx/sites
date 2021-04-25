//FUNCTIONS TABLE OF CONTENTS//
/*
FUNCTIONS A: File 
	1) Function A1: Select File 
	2) Function A2: Double Click File (Trigger Download)
	3) Function A3: Rename File (Handle UI)
	4) Function A4: Cancel File Rename (Handle UI)
	5) Function A5: Save New File Name
	6) Function A6: Delete File (from File Action)
	7) Function A7: Trigger File Download from File Action Area 

FUNCTIONS B: Upload Handling
	1) Function B1: Trigger Browse for File 
	2) Function B2: Trigger Upload File 
	3) Function B3: Listen for File Upload Button Click and Display File Name
	4) Function B4: Upload File (only server code)

FUNCTIONS C: Global File Functions   
	1) Function C1: Global Rename Folder 
	2) Function C2: Global Delete Folder 

FUNCTIONS D: Right Click, Dropzone Related and Drag and Drop  
	1) Function D1: File Right Click Code  
	
*/


//Development Code Root
var CODE_ROOT = "../../functions/";

//Live Code Root 
//var CODE_ROOT = "../functions/";

var CURRENT_FILE_ID = 0;
var CURRENT_FOLDER_ID = 0;


//FUNCTIONS A: File 
//Function A1: Select File 
$(document).ready(function(){
	$('.js-file').on('click',function(e){

		//Part 1: Get File Information
		var file_id_full 	= $(this).attr('id');
		splitParts 			= file_id_full.split("_");	
		var file_id			= splitParts[1];	
		var file_name = $("#js-file-name-text_" + file_id).text();
		
		//Part 2: Set Selected File Global Variables 
		CURRENT_FILE_ID = file_id;
		CURRENT_FOLDER_ID = 0;
		
		//Part 3: Handle File Action Area 
		$("#js-selected-file-name").text(file_name);
		$("#js-folder-selected").hide();	
		$("#js-file-selected").show();		 

		//Part 4: Add CSS Style  
		$(".js-file").removeClass("file-selected");
		$("#" + file_id_full).addClass("file-selected");

	});
});

//Function A2: Double Click File (Trigger Download)

//Function A3: Rename File (Handle UI)
$(document).ready(function(){
	$('.js-trigger-file-rename').on('click',function(e){	
		
		//Hide any previous Errors 
		$(".js-rename-file-error").hide();
		
		//This function accesses the global variable that has already been set on first click 
		var file_id = CURRENT_FILE_ID;
		$(".js-file-name-edit").hide();	
		$(".js-file-name").show();			
		$("#js-file-name_" +  file_id).hide();					
		$("#js-file-name-edit_" +  file_id).show();  
		
	});
});

//Function A4: Cancel File Rename (Handle UI)
$(document).ready(function(){
	$('.js-file-edit-name-cancel').on('click',function(e){	
	
		//Remove Error Warnings 
		$(".js-rename-file-error").hide();
		
		$(".js-file-name-edit").hide();					
		$(".js-file-name").show();		
	});
});


//FUNCTIONS B: Upload Handling
//Function B1: Trigger Browse for File 
$(document).ready(function(){
	$("#js-trigger-browse-for-file").click(function(){
		//$('#js-trigger-browse-for-file').addClass("file-actions-change-file-text");
		$('#js-trigger-browse-for-file').text("Change File (+)");
		$('#js-browse-for-file').click();
	});
});

//Function B2: Trigger Upload File 
$(document).ready(function(){
	$("#js-trigger-upload-file").unbind('click').bind('click', function (e) {			
		$('#js-file-upload-submit').click();		
    });
});

//Function B3: Listen for File Upload Button Click and Display File Name


//Function B4: Upload File (only server code)
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




//FUNCTIONS D: Upload Handling
//Function D1: Trigger Browse for File 
/*

*/

//Function D2: Trigger Upload File 
/*


*/
//Function D3: Listen for File Upload Button Click and Display File Name
/*
 $(function() {
	$("input:file").change(function (){

		var fullPath = document.getElementById('js-browse-for-file').value;

		if (fullPath) {
			var startIndex = (fullPath.indexOf('\\') >= 0 ? fullPath.lastIndexOf('\\') : fullPath.lastIndexOf('/'));
			var filename = fullPath.substring(startIndex);
			if (filename.indexOf('\\') === 0 || filename.indexOf('/') === 0) {
				filename = filename.substring(1);
			}
			var file_selected_status = $('#js-file-upload-submit').val();
			console.log(file_selected_status);

			console.log("A File is selected " + filename);		

			//PART 1: Photo Upload 
			if ($('#js-file-upload-submit').val()) {
				
				//Type 1: Photo Upload 
				$("#js-make-photo-empty-photo").hide();
				$("#js-make-photo-post").show();
							
			} else {
				$("#js-trigger-upload-file").hide();

			}

			//Display File Name on Site 
			$("#js-selected-file-name").text(filename);
			
		} else {
			console.log("No File Selected ");	
		}
		
	});
});	
*/


//FUNCTIONS C: Global File Functions   
//Function C1: Global Rename Folder 
//Function C2: Global Delete Folder 

//FUNCTIONS D: Right Click, Dropzone Related and Drag and Drop  
//Function D1: File Right Click Code  
$(document).ready(function(){
    $('.js-file-right-click').on('contextmenu', function(e) {
        //Get File ID and split
        var file_full_id           = $(this).attr('id');
        var splitParts;
        splitParts                 = file_full_id.split("_");
        var file_id_local          = splitParts[1];  
        var rename_file_name_local = $("#js-file-name-text_" + file_id_local).text();
      	var logged_in_user_local   = $('input[name=logged-in-user]').val();	  
		//alert(file_id_local + " " + rename_file_name_local);
		
         
        //Make variables global 
        window.file_id = file_id_local; 
        window.file_name = rename_file_name_local;
        window.logged_in_user = logged_in_user_local;
       
    });
 
    context.init({preventDoubleContext: false});
     
    context.attach('.js-file-right-click', [
        {header: 'Files'},
        {divider: true},

        //Rename File
        {text: 'Rename', action: function(e){
			
			//Hide any previous Errors 
			//$(".js-rename-file-error").hide();

			//This function accesses the global variable that has already been set on first click 
			//var file_id = CURRENT_FILE_ID;

			//$(".js-file-name-edit").hide();			
			//$("#js-file-name-edit_" +  file_id).show();  	
					
			console.log("rename " + file_id);
        }},
		
		//Download File
        {text: 'Download', action: function(e){
			console.log("download");		
			//$('#js-file-download-link_' + file_id).find('a').trigger('click');
			//$("#js-file-download-link_" + file_id).hide();
			//window.location = $("#js-download-file_" + file_id).attr('href');
        }},
         
        {divider: true},
         
        //Delete File 
        {text: 'Delete File', action: function(e){
			console.log("delete");
			 //alert(logged_in_user + " " + file_id);
			//deleteFile(file_id, logged_in_user);
			//alert("delete");
        }}
         
    ]);
});





///////////////////

/*

/*
//FUNCTIONS A: File 
//Function A1: Select File 


//Function A2: Double Click File (Trigger Download)
$(document).ready(function(){
    $(".js-file").dblclick(function(){

		//This function accesses the global variable that has already been set on first click 
		var file_id_full		= $(this).attr('id');
		splitParts 				= file_id_full.split("_");
		var file_id			 	= splitParts[1];		
		
		document.getElementById('js-download-file_' + file_id).click();
				
	});
});


//Function A5: Save New File Name 
$(document).ready(function(){
	$(".js-save-file-name").click(function(){
		$(".js-rename-file-error").hide();
		var file_id_full		= $(this).attr('id');
		splitParts 				= file_id_full.split("_");
		var file_id			 	= splitParts[1];	
		
		var new_file_name		= $("#js-rename-file-new-name_" + file_id).val();
		console.log(new_file_name);
		var file_extension 	 	= $("#js-file-extension_" + file_id).val();
		var logged_in_user  	= $('input[name=logged-in-user]').val();
		//console.log(file_id + " " + new_file_name + " " + file_extension);
		
		//New Name is not Empty Update
		if (new_file_name) {
			console.log(new_file_name);
			
			renameFile(file_id, new_file_name, logged_in_user);			
			$("#js-file-name-text_" + file_id).text(new_file_name);	
			$(".js-file-name-edit").hide();  	
			$(".js-file-name").show();				
		
		//Empty String 	
		} else {
			$("#js-rename-file-error_" + file_id).show();
			
			console.log("empty");
			
		}
		
	});
});

//Function A6: Delete File (from File Action)
$(document).ready(function(){
	$('.js-trigger-file-delete').on('click',function(e){	
		
		//This function accesses the global variable that has already been set on first click 
		var file_id_delete = CURRENT_FILE_ID;
		var logged_in_user			= $('input[name=logged-in-user]').val();
 
		deleteFile(file_id_delete, logged_in_user)

	});
});


//Function A7: Trigger File Download from File Action Area 
$(document).ready(function(){
    $(".js-trigger-file-download").click(function(){

		//This function accesses the global variable that has already been set on first click 
		var file_id = CURRENT_FILE_ID;
		document.getElementById('js-download-file_' + file_id).click();	
		
		//var file_id = 0;
		//if(file != 0) {
	//		document.getElementById('js-download-file_' + file_id).click();	
	//	} else {
	//		//alert("An error has occured please reslect the file");
//			   $("#js-trigger-file-download-error").show();
//			setTimeout(function() {
//			   $("#js-trigger-file-download-error").fadeOut(1000);
//			}, 3000 );
//		}
	});
});







//FUNCTIONS C: File and Folder Related 
//Function C1: Rename File
function renameFile(file_id, new_file_name, logged_in_user) {
	$.post(CODE_ROOT + 'files.php', { file_id: file_id, new_file_name: new_file_name, logged_in_user: logged_in_user }, 

	function(data) {
		//console.log(data);

	})
}

//Function C2: Delete File
function deleteFile(file_id_delete, logged_in_user) {
	var file_delete_outcome = "fail";

	if (confirm('Are you sure you want to delete this file?')) {
		$.post(CODE_ROOT + 'files.php', { file_id_delete: file_id_delete, logged_in_user: logged_in_user},
			 
		function(data){
			$("#js-file_" + file_id_delete).fadeOut(100);
			$("#js-folder_" + file_id_delete).fadeOut(100);
		}); 
	}   
}


*/


//////////////////



///////////////////////////
//FUNCTIONS A: File 



//FUNCTIONS B: Folder Related 


//FUNCTIONS C: File and Folder Related 





/*
//FUNCTIONS D: Upload Handling




//Function D3: Listen for File Upload Button Click and Display File Name

	
*/


//FUNCTIONS E: Right Click, Dropzone Related and Drag and Drop  




//SORT /////
/*

//FUNCTIONS E: Right Click, Dropzone Related and Drag and Drop  
//Function E1: File Right Click Code  
$(document).ready(function(){
    $('.js-file-right-click').on('contextmenu', function(e) {
        //Get File ID and split
        var file_full_id           = $(this).attr('id');
        var splitParts;
        splitParts                 = file_full_id.split("_");
        var file_id_local          = splitParts[1];  
        var rename_file_name_local = $("#js-file-name-text_" + file_id_local).text();
      	var logged_in_user_local   = $('input[name=logged-in-user]').val();	  
		//alert(file_id_local + " " + rename_file_name_local);
		
         
        //Make variables global 
        window.file_id = file_id_local; 
        window.file_name = rename_file_name_local;
        window.logged_in_user = logged_in_user_local;
       
    });
 
    context.init({preventDoubleContext: false});
     
    context.attach('.js-file-right-click', [
        {header: 'Files'},
        {divider: true},

        //Rename File
        {text: 'Rename', action: function(e){
			
			//Hide any previous Errors 
			$(".js-rename-file-error").hide();

			//This function accesses the global variable that has already been set on first click 
			var file_id = CURRENT_FILE_ID;

			$(".js-file-name-edit").hide();			
			$("#js-file-name-edit_" +  file_id).show();  	
			
			//Hide any open edit areas
			//$(".js-file-name-edit").hide();  	
			
			//Show All Files 
			//$(".js-file-name").show();	
			//$(".js-file-modified").show();	
			//$(".js-file-size").show();	
			//$(".js-file-settings").show();	
			
			//Hide Current File 
			//$("#js-file-name_" + file_id).hide();	
			//$("#js-file-modified_" + file_id).hide();
			//$("#js-file-size_" + file_id).hide();
			//$("#js-file-settings_" + file_id).hide();		
			
			//Show Edit Current File 
			//$("#js-file-name-edit_" +  file_id).show();    		
			console.log("right click");
        }},
		
		//Download File
        {text: 'Download', action: function(e){
		
			//$('#js-file-download-link_' + file_id).find('a').trigger('click');
			//$("#js-file-download-link_" + file_id).hide();
			window.location = $("#js-download-file_" + file_id).attr('href');
        }},
         
        {divider: true},
         
        //Delete File 
        {text: 'Delete File', action: function(e){
			 //alert(logged_in_user + " " + file_id);
			deleteFile(file_id, logged_in_user);
			//alert("delete");
        }}
         
    ]);
});
	
//Function E3: Drag and Drop Code 
$(document).ready(function(){
	
	//Dragable: With Image
	$( ".js-draggable" ).draggable({
      cursor: "move",
	  
	  //This positions the image of the file being dragged and displays its image
      cursorAt: { top: 20, left: 20 },
      helper: function( event ) {
        return $( "<div class='ui-widget-test file-active-dragged'><p class = ''> Drag </p></div>" );
      }
    });

	//Droppable: Accept file being dropped 
    $(".js-droppable").droppable({
      drop: function( event, ui ) {

		//Draggable: File or Folder ID
		var current_draggable_file_id_full = $(ui.draggable).attr("id");
        var splitParts;
        splitParts                 		= current_draggable_file_id_full.split("_");
        var current_draggable_file_id   = splitParts[1];  
		
		//Droppable: Get Folder ID
		var current_droppable_folder_id_full = $(this).attr('id');
        var splitPartsFolder;
        splitPartsFolder                 = current_droppable_folder_id_full.split("_");
        var current_droppable_folder_id   = splitPartsFolder[1];  		
		
		//Update Database 
		$.post(CODE_ROOT + 'files.php', { current_draggable_file_id: current_draggable_file_id, current_droppable_folder_id: current_droppable_folder_id  }, 

		function(data) {	
			//Fade Out Dropped Element
			$("#" + current_draggable_file_id_full).fadeOut();
			//console.log(data);
		})	
	
		console.log("DRAGGED " + current_draggable_file_id_full + " DROPPED " + current_droppable_folder_id_full);
	
      }
    });
	
});
*/
//FUNCTIONS F: Fild Upload Code 











////////////////////OLD ///////////////

//Function A8: Trigger File Download 

/*

	
////OLD ////
FUNCTIONS A: File Related 
	1) Function A1: Rename File
	2) Function A2: Delete File

	4) Function A4: Trigger Delete File 
	5) Function A5: Delete File 
	6) Function A6: Rename File 
	7) Function A7: Trigger File Rename on Menu Click 
	8) Function A8: Trigger File Download
	9) Function A9: Trigger File Download on Double Click 
	
FUNCTIONS B: Folder Related 
	1) Function B1: Rename Folder 
	2) Function B2: Delete Folder
	
	Create and Save New Folder

	Show Create New Folder Area 
		3) Function B3: Cancel New Folder 
	4) Function B4: Initiate Rename Folder
	5) Function B5: Trigger Rename Folder From Header
	6) Function B6: Cancel Rename Folder 
	7) Function B7: Rename Folder  
	8) Function B8: Open Folder when Name is Clicked 
	9) Function B9: Open Folder When Double Click 

FUNCTIONS C: Upload Handling 
	1) Function C1: Trigger Browse for File 
	2) Function C2: Trigger Upload File 
	3) Function C3: Listen for File Upload Button Click and Display File Name

FUNCTIONS D: Upload Related 
	1) Function D1: Upload a Post Photo 
	2) Function D2: Upload a Post Article
	3) Function D3: Upload a Post File 
	4) Function D4: Upload to File System
	5) Function D5: Generic Upload (works with template_upload.php)
	5) Function D6: Change User Image 
	
FUNCTIONS E UI and Design Related 
	1) Function E1: Add File Selected Class 
	2) Function E2: Add Folder Selected Class 
	
FUNCTIONS F: Right Click, Dropzone Related and Drag and Drop  
	1) Function F1: File Right Click Code  
	2) Function F2: Folder Right Click Code 
	3) Function F3: Drag and Drop Code 
	4) Function F4: Dropzone Code 
*/
//////////////

///////////////////CLEAN///////////////////

		//OLD
		//Show the Selected File Actions Area 
		//$("#js-selected-file-actions").hide();		
		//$("#js-selected-folder-actions").show();
		
		//Get File Name 
		/*
		$.post(CODE_ROOT + 'files.php', { file_id_get_name: file_id_get_name},
			 
		function(data){
			$("#js-selected-folder-name-display").text(data);

		}); 
		*/

		
		//OLD
		//Show the Selected File Actions Area 
		//$("#js-selected-file-actions").hide();		
		//$("#js-selected-folder-actions").show();
		
		//Get File Name 
		/*
		$.post(CODE_ROOT + 'files.php', { file_id_get_name: file_id_get_name},
			 
		function(data){
			$("#js-selected-folder-name-display").text(data);

		}); 
		*/





/*
//Function B7: Rename Folder  
function renameFolder(file_id, file_update_name, logged_in_user, file_extension, is_folder) {
	$.post(CODE_ROOT + 'files.php', { file_id: file_id, file_update_name: file_update_name, logged_in_user: logged_in_user }, 

	function(data) {

		//console.log(file_id_full + " " + file_update_name);
		$("#js-file-name-text_" + file_id).text(file_update_name);  	
		$(".js-file-name-edit").hide();  	
		$(".js-file-name").show();	
	})
}
*/

//FUNCTIONS B: Folder Related   

//FUNCTIONS C: 










/////////////CLEAN////////////////////////



//FUNCTIONS D: Upload Related 
//Function D1: Upload a Post Photo 
//Function D2: Upload a Post Article
//Function D3: Upload a Post File 
//Function D4: Upload to File System
//Function D5: Generic Upload (works with template_upload.php)
//Function D6: Change User Image 





//FUNCTIONS A: File Related 
//Function A1: Trigger File Rename 


//Function A3: Cancel Save File Name 
/*
$(document).ready(function(){
	$(".js-file-edit-name-cancel").click(function(){
		$(".js-file-name-edit").hide();  	
		$(".js-file-name").show();	
		$(".js-file-modified").show();	
		$(".js-file-size").show();	
		$(".js-file-settings").show();		
	});
});

//Function A4: Trigger Delete File 
$(document).ready(function(){
	$('.js-trigger-delete-file').on('click',function(e){	

		var file_id_delete		= CURRENT_FILE_ID;
		var logged_in_user  	= $('input[name=logged-in-user]').val();	
		//console.log(logged_in_user + " " + file_id_delete);
		deleteFile(file_id_delete, logged_in_user);
	});
});
	

//Function A7: Trigger File Rename on Menu Click 
$(document).ready(function(){
	$('.js-menu-trigger-file-rename').on('click',function(e){	

		//This function accesses the global variable that has already been set on first click 
		var file_id_full		= $(this).attr('id');
		splitParts 				= file_id_full.split("_");
		var file_id			 	= splitParts[1];		
		
		//Hide any open edit areas
		$(".js-file-name-edit").hide();  	
		
		//Show All Files 
		$(".js-file-name").show();	
		$(".js-file-modified").show();	
		$(".js-file-size").show();	
		$(".js-file-settings").show();	
		
		//Hide Current File 
		$("#js-file-name_" + file_id).hide();	
		$("#js-file-modified_" + file_id).hide();
		$("#js-file-size_" + file_id).hide();
		$("#js-file-settings_" + file_id).hide();		
		
		//Show Edit Current File 
		$("#js-file-name-edit_" +  file_id).show();  

	});
});

*/ 
/*
//FUNCTIONS B: Folder Related 
//Function B1: Show Create New Folder Area 
$(document).ready(function(){
    $("#js-create-new-folder").click(function(){
		$("#js-create-new-folder-area").fadeIn(500);
    });
});

//Function B2: Create and Save New Folder


//Function B5: Trigger Rename Folder From Header 
$(document).ready(function(){
	$('.js-header-trigger-folder-rename').on('click',function(e){	

		//This function accesses the global variable that has already been set on first click 
		var file_id = CURRENT_FOLDER_ID;
		//console.log("folder " + file_id);
		
		$(".js-file-name-edit").hide();  	
		$(".js-file-name").show();	
		$("#js-file-name_" +  file_id).hide();	
		$("#js-file-name-edit_" +  file_id).show();  
	

	});
});
			
//Function B6: Cancel Rename Folder 
$(document).ready(function(){
	$(".js-folder-edit-name-cancel").click(function(){
		$(".js-file-name-edit").hide();  	
		$(".js-file-name").show();	
	});
});


/*
//Function B8: Trigger Rename Folder From Header 

$(document).ready(function(){
	$('.js-header-trigger-folder-rename').on('click',function(e){	

		//This function accesses the global variable that has already been set on first click 
		var file_id = CURRENT_FOLDER_ID;
		//console.log("folder " + file_id);
		
		$(".js-file-name-edit").hide();  	
		$(".js-file-name").show();	
		$("#js-file-name_" +  file_id).hide();	
		$("#js-file-name-edit_" +  file_id).show();  

	});
});
*/




/*


//Function B9: Trigger Delete Folder 
$(document).ready(function(){
	$('.js-trigger-delete-folder').on('click',function(e){	

		var file_id_delete		= CURRENT_FOLDER_ID;
		var logged_in_user  	= $('input[name=logged-in-user]').val();	
		//console.log(logged_in_user + " " + file_id_delete);
		deleteFile(file_id_delete, logged_in_user);
	});
});
*/


//FUNCTIONS D: UI and Design Related   


//Function A9: Trigger File Download on Double Click 
/*
$(document).ready(function(){
	$('.js-file').on('dblclick',function(e){	
		var file_id_full		= $(this).attr('id');
		splitParts 				= file_id_full.split("_");
		var file_id			 	= splitParts[1];		
		
		//$("#js-download-file_" + file_id).trigger("click");
		//$('#js-download-file_' + file_id + 'a').trigger('click');
		document.getElementById('js-download-file_' + file_id).click(); 
	});
});
*/	
	
	

////////////////////ORGANIZE ////////////////////////


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

////



	//Function R4: Dropzone Code
//Function R3: Drag and Drop Code 


//Function R4: Dropzone Code	
/*
Dropzone.options.myAwesomeDropzone = {
	paramName: "file", // The name that will be used to transfer the file
	clickable: false,
	createImageThumbnails: false,
	previewsContainer: false,
	maxFilesize: 10000, // MB
	accept: function(file, done) {
		if (file.name == "justinbieber.jpg") {
			done();
		} else { 
			done();
		}
			
		/*
		init: function () {
		this.on("complete", function (file) {
		  if (this.getUploadingFiles().length === 0 && this.getQueuedFiles().length === 0) {
			doSomething();
		  }
		});
	  } *//*
	}
};
*/	
	
	//APPENDIX 
	
	/*
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
	*/

	
	
	