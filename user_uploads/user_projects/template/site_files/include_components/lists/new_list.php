

<!-- MODAL: NEW LIST -->
<div id="new-list" class="uk-modal">
	<div class="uk-modal-dialog">
		
		<!-- HEADER -->
		<div class="uk-modal-header">
		
			<a class="uk-modal-close uk-close float-right"></a>	
			<?php /*
			<div class="uk-grid">
				
				<!-- Header Text -->
				<div class="uk-width-9-10">
					<h4> New List </h4>
				</div>
				
				<!-- Header Close --> 
				<div class="uk-width-1-10">
					<a class="uk-modal-close uk-close"></a>								
				</div>
			</div>	
			*/ ?>
		</div>
		
		
		
		<!-- BODY -->
		<div class = "uk-modal-body">
			<div class="uk-grid ">
				
				<!-- List Name --> 
				<div class="uk-width-2-10 ">
					<p class = "edit-profile-input-label"> List Name: </p>
				</div>
				
				<!-- List Form -->
				<div class="uk-width-8-10">
					<form action="" id="">
						
						<input type="text" name="list-name" id = "" class = "edit-profile-input-box" placeholder="Enter the List Name">				
						<p id = "new-list-error-message" class = "hide" > Please Enter a name for your new list. </p>
						
						<!-- Hidden Inputs: -->
						<input type="hidden" name="list-type"  id = "" value = "<?php echo $list_type; ?>" > 	
						<input type="hidden" name="logged-in-user"  id = "" value = "<?php echo $logged_in_user; ?>" > 		

					</form> 						
				</div>
			</div>
		</div>
		
		
		
		<!-- FOOTER --> 
		<div class="uk-modal-footer">
			
			<button type="button" id="js-new-list_<?php echo $group_id; ?>"  class = "js-new-list button-blue new-list-button"> Create List </button>
			<button type="button" id = "js-close-new-list-modal " class="uk-modal-close button-white new-list-button">Cancel</button>
			
		</div>		
		
	</div>	
</div>		


		<?php /*
		<!-- HEADER -->
		<div class="uk-modal-header">
			<div class="uk-grid uk-grid-modal-adjust">
				
				<!-- Header Text -->
				<div class="uk-width-9-10">
					
				</div>
				
				<!-- Header Close --> 
				<div class="uk-width-1-10">
												
				</div>
			</div>	
		</div>

		<!-- BODY -->

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
		<div class="uk-modal-footer">
			
			<button type="button" id="js-new-list_<?php echo $group_id; ?>"  class = "js-new-list new-wishlist-list-button-style  "> Create List </button>
			<button type="button" id = "js-close-new-list-modal " class="uk-modal-close">Cancel</button>
			
		</div>
		
		*/ ?>


