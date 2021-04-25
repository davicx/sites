

//EXAMPLE: Recursion 
function subtract(x) {
	var new_number = x;
	
	if(new_number==0) {
		break; 
	} else {
		new_number = new_number-1;
		subtract(new_number);
		console.log(new_number);
	}
	return new_number;
  
}

subtract(7);
















//EXAMPLE: JSON 
var numbers = [4, 9, 16, 25];	
//console.log(numbers);


numbers = numbers.map(Math.sqrt);
//console.log(numbers);

//JSON
var text = '{"employees":[' +
'{"firstName":"John","lastName":"Doe" },' +
'{"firstName":"Anna","lastName":"Smith" },' +
'{"firstName":"Peter","lastName":"Jones" }]}';

employee_array = JSON.parse(text);
//console.log(employee_array.employees[1].firstName);

document.getElementById("demo").innerHTML = "Hello World!";
//document.getElementById("demo").innerHTML = employee_array.employees[1].firstName + " " + employee_array.employees[1].lastName;