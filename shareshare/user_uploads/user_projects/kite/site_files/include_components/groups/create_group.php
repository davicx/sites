<?php 
	$new_group_type = "group"; 
?>

<!-- Open Create Group Modal -->
<div id = "create-group">
	<a href="#create-group-modal" data-uk-modal >
		<i class="fa fa-plus-circle fa-2x create-group-icon " aria-hidden="true"></i>
		<p class = "create-group-text"> Group </p>
	</a>
</div>


<!-- Create Group Modal -->
<div id="create-group-modal" class="uk-modal">
    <div class="uk-modal-dialog">
				
		<!-- HEADER -->
		<div class="uk-modal-header">
			<div class="uk-grid uk-grid-modal-adjust">
				
				<!-- Header Text -->
				<div class="uk-width-9-10">
					<h4> Create a Group </h4>
				</div>
				
				<!-- Header Close --> 
				<div class="uk-width-1-10">
					<a class="uk-modal-close uk-close"></a>								
				</div>
			</div>	
		</div>

		<!-- BODY -->
		<div id = "">

			<!-- BODY: Group Information Area -->
			<div class = "uk-grid">	
			   
				<!-- Select Existing User or Email -->
				<p id = "js-group-create-current-friend" class = "hide group-create-toggle-text"> Current Friend </p>						
				<p id = "js-group-create-email" class = "hide group-create-toggle-text"> Use Email </p>
					
				<!-- Create Group: Group Name -->
		
				<div class="uk-width-medium-3-10 uk-width-small-1-1">
					<p class = "edit-profile-input-label"> Group Name: </p>				
				</div>
				<div class="uk-width-medium-7-10 uk-width-small-1-1">
					<input type="text" name="new-group-name" id = "" class = "edit-profile-input-box" placeholder="Enter Group Name">
				</div>
		
			</div>
			
			<!-- BODY: Select New Members -->	
			<div id = "js-create-group-current-user">		
				<div class="uk-clearfix">
				
					<?php 

					//All Invitable Friends 
					$total_friend_count = count($logged_in_users_friends_array);
					
					//HANDLE NO FRIENDS 
					for($x = 0; $x < $total_friend_count; $x++) {
						$Current_Friend = new User($logged_in_users_friends_array[$x]);
						$Current_Friend->getUserInfo($logged_in_users_friends_array[$x]);
					?>	
					
					<!-- Individual User -->	
					<div class = "uk-float-left group-invite-user-holder-container ">
						<div class = "group-invite-user-holder">
							
							<!-- User Image -->	
							<div class="group-invite-user-image-area">
								<img src="<?php echo USER_IMAGE . $Current_Friend->userImage; ?>" class = "group-invite-user-image-style" alt=""></a>
							</div>
							
							<!-- User Name and Select -->	
							<div class="group-invite-user-name-area">
								
								<!-- Select User Checkbox -->
								<div class = "group-invite-user-checkbox-holder">
									<label class = "group-invite-user-select-box">
										<input type="checkbox" id = "<?php echo $Current_Friend->userName;?>" class = "js-new-group-user-check-box group-invite-user-select-box"> 
									</label>
								</div>
															
								<!-- User Name-->
								<div class = "group-invite-user-name-holder">
									<p class = "group-invite-user-name-text "> <?php echo $Current_Friend->userName; ?> </p>
								</div>
								
							</div>
							
						</div>
					</div>
					
					<?php }  ?>
				</div>	
			</div>	
					
			<!-- Hidden Variables -->
			<input type="hidden" name="logged-in-user" id = "" value = "<?php echo $logged_in_user; ?>"> 	
			<input type="hidden" name="new-group-type" id = "" value = "<?php echo $new_group_type; ?>"> 	
			<input type="hidden" name="master-site" id = "" value = "<?php echo $master_site; ?>"> 	

		</div>

		<!-- FOOTER -->
		<div class="uk-modal-footer">
			
			<!-- TYPE 1: Create Normal Group -->		
			<p id = "js-create-new-group" class = "button-blue create-group-button"> Create Group </p>
	
			<!-- TYPE 2: Create Group from Email-->
			<div id = "js-create-group-email" class = "hide">	
				<p> email </p>
			</div>
		</div>
		

	</div>
</div>





