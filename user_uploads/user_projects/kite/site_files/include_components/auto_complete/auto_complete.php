 
<!-- AUTO COMPLETE -->
<div id = "auto-complete">

	<!-- Auto Complete: Input -->
	<div id = "auto-complete-input">
		<input type="text" id = "js-auto-complete" class = "auto-complete-input-box" name="auto-complete">
		<input type="hidden" name="logged-in-user" id = "" value = "<?php echo $logged_in_user; ?>"> 
	</div>

	<!-- Auto Complete: Icon -->
	<div id = "auto-complete-input-icon">
		<img title = "Search" src="<?php echo ICON; ?>search/search_2.png" class = "header-search-icon" alt="">
	</div>
		

	<!-- Auto Complete: Output -->
	<div id = "js-auto-complete-output" class = " auto-complete-output">
		<div id = "js-auto-complete-output-data">		
			<!-- This is filled in through the Dynamic Content Being generated -->
		</div>
	</div>

</div>


