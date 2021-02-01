//FUNCTIONS TABLE OF CONTENTS//
/*

FUNCTIONS A:  RELATED
	1) Function A1: Get Tuning for Sharp Notes 
	2) Function A2: Get Tuning for Flat Notes 
	3) Function A3: Show Sharp Scale
	4) Function A4: Show Flat Scale 
	5) Function A4: Reset Tuner  
	6) Function: Get Tuning 

*/

//Development Code Root
var CODE_ROOT = "../../functions/";


//FUNCTIONS A:  RELATED

//Function A1: Get Tuning for Sharp Notes 
$(document).ready(function(){
	$(".js-get-tuning-sharp").click(function(){
		
		//Step 1: Set Default Note Values
		var current_note_E = 5;	
		var current_note_A = 12;	
		var current_note_D = 7;	
		var current_note_G = 2;	
		var current_note_B = 10;	
		var current_note_E = 5;	
		
		//Get Strings 
		var new_note_E = $('select[name=new-note-sharp-e]').val()
		var new_note_A = $('select[name=new-note-sharp-a]').val()
		var new_note_D = $('select[name=new-note-sharp-d]').val()
		var new_note_G = $('select[name=new-note-sharp-g]').val()
		var new_note_B = $('select[name=new-note-sharp-b]').val()
		var new_note_high_E = $('select[name=new-note-sharp-high-e]').val()
		
		var new_string_tuning_E = getTuning(current_note_E, new_note_E);
		var new_string_tuning_A = getTuning(current_note_A, new_note_A);
		var new_string_tuning_D = getTuning(current_note_D, new_note_D);
		var new_string_tuning_G = getTuning(current_note_G, new_note_G);
		var new_string_tuning_B = getTuning(current_note_B, new_note_B);
		var new_string_tuning_high_E = getTuning(current_note_E, new_note_high_E);

		console.log("sharp");		
		console.log(new_string_tuning_E);
		console.log(new_string_tuning_A);
		console.log(new_string_tuning_D);
		console.log(new_string_tuning_G);
		console.log(new_string_tuning_B);
		console.log(new_string_tuning_high_E);
		console.log("_________________");

		
	});
});

//Function A2: Get Tuning for Flat Notes 
$(document).ready(function(){
	$(".js-get-tuning-flat").click(function(){
		
		//Step 1: Set Default Note Values
		var current_note_E = 5;	
		var current_note_A = 12;	
		var current_note_D = 7;	
		var current_note_G = 2;	
		var current_note_B = 10;	
		var current_note_E = 5;	

		
		//Get E String 
		var new_note_E = $('select[name=new-note-flat-e]').val()
		var new_note_A = $('select[name=new-note-flat-a]').val()
		var new_note_D = $('select[name=new-note-flat-d]').val()
		var new_note_G = $('select[name=new-note-flat-g]').val()
		var new_note_B = $('select[name=new-note-flat-b]').val()
		var new_note_high_E = $('select[name=new-note-flat-high-e]').val()
		
		var new_string_tuning_E = getTuning(current_note_E, new_note_E);
		var new_string_tuning_A = getTuning(current_note_A, new_note_A);
		var new_string_tuning_D = getTuning(current_note_D, new_note_D);
		var new_string_tuning_G = getTuning(current_note_G, new_note_G);
		var new_string_tuning_B = getTuning(current_note_B, new_note_B);
		var new_string_tuning_high_E = getTuning(current_note_E, new_note_high_E);
		
		console.log("flat");
		console.log(new_string_tuning_E);
		console.log(new_string_tuning_A);
		console.log(new_string_tuning_D);
		console.log(new_string_tuning_G);
		console.log(new_string_tuning_B);
		console.log(new_string_tuning_high_E);
		console.log("_________________");

		
	});
});

//Function A3: Show Sharp Scale
$(document).ready(function(){
	$("#js-show-note-scale-sharp").click(function(){
		//alert();
		$("#js-note-scale-flat").hide();
		$("#js-note-scale-sharp").show();
	});
});

//Function A4: Show Flat Scale 
$(document).ready(function(){
	$("#js-show-note-scale-flat").click(function() {
		$("#js-note-scale-sharp").hide();
		$("#js-note-scale-flat").show();	
	});
});

//Function A4: Reset Tuner  
$(document).ready(function(){
	$("#js-reset-tuner").click(function() {
		
		//Reset Sharp Scale
		$('#js-new-note-sharp-e option').each(function () {
			if (this.defaultSelected) {
				this.selected = true;
				return false;
			}
		});	

		$('#js-new-note-sharp-a option').each(function () {
			if (this.defaultSelected) {
				this.selected = true;
				return false;
			}
		});	

		$('#js-new-note-sharp-d option').each(function () {
			if (this.defaultSelected) {
				this.selected = true;
				return false;
			}
		});	

		$('#js-new-note-sharp-g option').each(function () {
			if (this.defaultSelected) {
				this.selected = true;
				return false;
			}
		});	

		$('#js-new-note-sharp-b option').each(function () {
			if (this.defaultSelected) {
				this.selected = true;
				return false;
			}
		});	

		$('#js-new-note-sharp-high-e option').each(function () {
			if (this.defaultSelected) {
				this.selected = true;
				return false;
			}
		});	
		
		//Reset Flat Scale
		$('#js-new-note-flat-e option').each(function () {
			if (this.defaultSelected) {
				this.selected = true;
				return false;
			}
		});	

		$('#js-new-note-flat-a option').each(function () {
			if (this.defaultSelected) {
				this.selected = true;
				return false;
			}
		});	

		$('#js-new-note-flat-d option').each(function () {
			if (this.defaultSelected) {
				this.selected = true;
				return false;
			}
		});	

		$('#js-new-note-flat-g option').each(function () {
			if (this.defaultSelected) {
				this.selected = true;
				return false;
			}
		});	

		$('#js-new-note-flat-b option').each(function () {
			if (this.defaultSelected) {
				this.selected = true;
				return false;
			}
		});	

		$('#js-new-note-flat-high-e option').each(function () {
			if (this.defaultSelected) {
				this.selected = true;
				return false;
			}
		});	

	});
});


//Function: Get Tuning
function getTuning(current_note, new_note) {
	var note_difference = current_note - new_note;
	var note_difference_abs_value = Math.abs(note_difference); 
	
	//Step 1: Tune Up or Down
	
	//Case 1: Leave String as Is
	if(note_difference ==0 ) {
		var tuning_direction = "-";

	//Case 2: Tune String Up 
	} else if (note_difference > 0){
		
		//Tune Down (going up would break string)
		if (note_difference_abs_value > 3) {
			var special_case_tune_direction = 12 - note_difference_abs_value;
			var tuning_direction = "Tune Down " + special_case_tune_direction; 
		
		//Tune Up 
		} else {
			var tuning_direction = "Tune Up " + note_difference_abs_value;
		}	
		

	//Case 3: Tune String Down	
	} else if (note_difference < 0){
		
		//Tune Down
		if(note_difference_abs_value < 9) {
			var tuning_direction = "Tune Down " + note_difference_abs_value;	

		//Tune Up (Special Case)	
		} else {
			var tuning_direction = "Tune Up " + current_note;
		}
	
		//console.log("tune Down");
	} else {
		
	}	
	
	return tuning_direction;
}






