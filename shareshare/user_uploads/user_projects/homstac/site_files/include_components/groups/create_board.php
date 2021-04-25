<!-- Open Create Group Modal -->
<div id = "create-group">
	<a href="#create-wall-modal" data-uk-modal> (+) </a>
</div>

<!-- Create Group Modal -->
<div id="create-wall-modal" class="uk-modal">
    <div class="uk-modal-dialog">
		
		<!-- HEADER: Modal Header -->
        <div class="uk-modal-header">
			<div class="uk-grid uk-grid-adjust">
				<div class="uk-width-9-10">
					
				</div>
				
				<!-- Close Modal -->
				<div class="uk-width-1-10">
						
					<a class="uk-modal-close uk-close"></a>
				</div>
			</div>
		</div>

		
		<!-- BODY: Modal Header -->
		<div class="uk-grid uk-grid-adjust">
			
			<!-- Group Name -->
			<div class="uk-width-2-10">
				<p class = "new-group-text " > Name: </p>
			</div>
			<div class="uk-width-8-10">
				<input type="text" name="new-group-name" id = "js-create-new-wall-group-input" class = "new-group-input" placeholder=" Enter Group Name">							
				<p id = "js-create-new-board-empty-name-warning" class = "hide error-message-red"> Please enter a group name </p>
			</div>			
			
			<!-- Public or Private -->
			<div class="uk-width-10-10">
				<p class = "new-group-text " > Private:  <input type="checkbox" id = "js-create-board-private" name="vehicle" value=""> </p>
			</div>


			<!-- Hidden Values -->		
			<input type="hidden" name="logged-in-user" id = "" value = "<?php echo $logged_in_user; ?>" > 	
			<input type="hidden" name="master-site" id = "" value = "<?php echo $site_link; ?>" > 		
		</div>
		
		<!-- FOOTER: Modal Header -->
        <div class="uk-modal-footer">
			<p id = "js-create-new-board"> Create </p>
			<p id = "" class = ""> Cancel </p>
		</div>
		
    </div>
</div>		




