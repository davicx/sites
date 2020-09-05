

<!-- MODAL: NEW LIST -->
<div id="new-list" class="uk-modal">
	<div class="uk-modal-dialog">
		
		<!-- Header: -->
		<div class="uk-modal-header wishlist-modal-header">
			<div class="uk-grid uk-grid-modal-adjust">
				
				<!-- Header Text -->
				<div class="uk-width-8-10">
					<p class = "">Create a New List</p>
				</div>
				
				<!-- Header Close --> 
				<div class="uk-width-2-10">
					<a class="uk-modal-close ">
						<img src="../images/icons/close_modal_4.png" alt="X" class = "">
					</a>									
				</div>
			</div>			
		</div>
		
		<!-- Body: -->
		<div class = "uk-modal-body">
			<div class="uk-grid uk-grid-modal-adjust">
				
				<!-- List Name --> 
				<div class="uk-width-2-10">
					<p class = ""> List Name: </p>
				</div>
				
				<!-- List Form -->
				<div class="uk-width-8-10">
					<form action="" id="">
						
						<input type="text" name="list-name" id = "" class = "" placeholder="Enter the List Name">				
						<p id = "new-list-error-message" class = "hide" > Please Enter a name for your new list. </p>
						
						<!-- Hidden Inputs: -->
						<input type="hidden" name="list-type"  id = "" value = "<?php echo $list_type; ?>" > 	
						<input type="hidden" name="logged-in-user"  id = "" value = "<?php echo $logged_in_user; ?>" > 		

					</form> 						
				</div>
			</div>
		</div>

		<!-- Footer: --> 
		<div class="uk-modal-footer wishlist-modal-footer">
			
			<button type="button" id="js-new-list_<?php echo $group_id; ?>"  class = "js-new-list new-wishlist-list-button-style  "> Create List </button>
			<button type="button" id = "js-close-new-list-modal " class="uk-modal-close">Cancel</button>
			
		</div>
	</div>	
</div>

