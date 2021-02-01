<!DOCTYPE html>
<html>
    <head>
		<script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
		<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
		<style>
		body {
			background-color: blue;
		}
			.clicked {
				border: 1px solid blue;
			}
		</style>
    </head>
<body>



<p id = "js-item-1" class = "js-item">Item 1</p>
<p id = "js-item-2" class = "js-item">Item 2</p>
<p id = "js-item-3" class = "js-item">Item 3</p>
<p id = "js-item-4" class = "js-item">Item 4</p>

<script>
$(document).ready(function(){
	$('.js-item').on('click',function(e){	
		console.log("click");

	});
});
</script>

</body>
</html>
