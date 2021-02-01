<?php 
	//Access-Control-Allow-Origin: https://maps.googleapis.com/

?>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script>

/*
$(document).ready(function(){
    $("button").click(function(){
        $.getJSON("https://maps.googleapis.com/maps/api/distancematrix/json?units=imperial&origins=Corvallis,OR&destinations=Allann+Brothers+Cafe+5th,West+5th+Avenue,Eugene,OR,United+States&key=AIzaSyAabchXVp_e81NIvOxfmWgZFrs2P7QDGNo", function(result){
            
			$.each(result, function(i, field){
                $("div").append(field + " ");
            });
			
        });
    });
});
*/
//https://maps.googleapis.com/maps/api/distancematrix/json?units=imperial&origins=Corvallis,OR&destinations=Allann+Brothers+Cafe+5th,West+5th+Avenue,Eugene,OR,United+States&key=AIzaSyAabchXVp_e81NIvOxfmWgZFrs2P7QDGNo
fetch('https://maps.googleapis.com/maps/api/distancematrix/json?units=imperial&origins=Corvallis,OR&destinations=Allann+Brothers+Cafe+5th,West+5th+Avenue,Eugene,OR,United+States&key=AIzaSyAabchXVp_e81NIvOxfmWgZFrs2P7QDGNo', {
    method  : 'post',
    headers : new Headers({
        'Content-Type': 'application/x-www-form-urlencoded'
    }),
    body    : new FormData(document.getElementById('myform'))
}).then( response => {
    return response.json(); // server returned valid JSON
}).then( parsed_result => {
    console.log(parsed_result);
});


fetch('https://maps.googleapis.com/maps/api/distancematrix/json?units=imperial&origins=Corvallis,OR&destinations=Allann+Brothers+Cafe+5th,West+5th+Avenue,Eugene,OR,United+States&key=AIzaSyAabchXVp_e81NIvOxfmWgZFrs2P7QDGNo')  
  .then(  
    function(response) {  
      if (response.status !== 200) {  
        console.log('Looks like there was a problem. Status Code: ' +  
          response.status);  
        return;  
      }

      // Examine the text in the response  
      response.json().then(function(data) {  
        console.log(data);  
      });  
    }  
  )  
  .catch(function(err) {  
    console.log('Fetch Error :-S', err);  
  });

</script>
</head>
<body>

<button>Get JSON data</button>

<div></div>

</body>
</html>
