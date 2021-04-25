<?php
	//PART 1: Upload Variables 
	
	//Parent: Determine which parent is being viewed 
	if(isset($_GET["parent"])) {
		$parent_folder = $_GET["parent"];
	} else {
		$parent_folder = 0;
	}
	
	//Folder: Determine which folder is being viewed (I think I don't need this, only parent)
	if(isset($_GET["folder"])) {
		$current_folder = $_GET["folder"];
	} else {
		$current_folder = 0;
	}
	
	//PART 2: Variable Keys
	$redirect = "groups_discussion.php?group_id=" . base64_encode($group_id);
	$destination = FILE_UPLOAD;
?>

	
	<!-- SECTION: Trigger Upload with Jquery -->
	<section id = "" class = "">

			<!-- Upload File -->
			<div id = "js-new-discussion-file-type" class = "hide border-blue">
			
				<!-- Message Area -->
				<div class = "new-discussion-message-area">
					<p id = "js-selected-file-name" class = ""></p>
					
					<!-- Discussion: Error Text Area Empty -->
					<div id = "js-discussion-empty-warning" class = "hide">
						<p> Please Enter a Comment </p>
					</div>	
				</div>
		
				<!-- Submit or Cancel Buttons -->
				<div class = "new-discussion-buttons-area">
								
					<!-- Add File -->
					<div class = "new-discussion-add-file-area">
						<p id = "js-trigger-change-file-discussion" class = "button-discussion-file new-discussion-add-file"> Change File </p>
					</div>
					
					<!-- Submit -->
					<div class = "new-discussion-submit-area">
						<p id = "js-trigger-upload-file-discussion" class = "button-discussion"> Submit </p>
					</div>
					
					<!-- Cancel -->						
					<div class = "new-discussion-cancel-area">
						<p id = "" class = "js-cancel-discussion-post button-discussion-cancel"> Cancel </p>
					</div>				
					
				</div>			
			</div>	
 
			<!-- Actual Upload (Hidden) -->
			<div class = "hide">
				<input type="file" name="image" id="js-browse-for-file-discussion" class = "">
				<input type="submit" name="upload-discussion" id="js-file-discussion-upload-submit" class = "" value="Upload">
			</div>	
			
			<!-- Hidden Upload Values Values -->
			<input type="hidden" name="max-file-size" value="<?php echo $max; ?>">
			<input type="hidden" name="redirect" value="<?php echo $redirect; ?>">
			<input type="hidden" name="destination" value="<?php echo $destination; ?>">

	</section>
	
	
	
	
	

					

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
		
