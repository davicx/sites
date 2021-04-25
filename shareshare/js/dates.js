//FUNCTIONS TABLE OF CONTENTS//
/*

FUNCTIONS A: All Functions Related to Dates
	1) Function A1: Instantiate a New Calendar 
	2) Function A2: Get Value of Selected Datepicker 

	
*/

//Development Code Root
var CODE_ROOT = "../../functions/";

//Live Code Root 
//var CODE_ROOT = "../functions/";

//FUNCTIONS A: All Functions Related to Discussion
//Function A1: Instantiate a New Calendar 
$(document).ready(function(){
	$(function(){
		$( ".js-datepicker" ).datepicker({ minDate: 0 });
	});
});

	
//Function A2: Get Value of Selected Datepicker  
/*
$(document).ready(function(){
	$(".js-datepicker").datepicker({
		onSelect: function() { 
			var dateObject = $(this).datepicker('getDate'); 
			
		}
	});
});
*/

//Function A3: Get Value of Calendar when User Makes a Change 
$(document).ready(function(){
	$(".js-datepicker").datepicker({
		onSelect: function() { 
			var depart_date = $("#js-depart-date").datepicker('getDate');
			var return_date = $("#js-return-date").datepicker('getDate');		
			
			//console.log(depart_date + " " + return_date);
			
			alert(depart_date + " " + return_date);
			
		}
	});
});
