<?php 
	$new_group_type = "group"; 
?>

<!-- Open Create Group Modal -->
<div id = "create-group">
	<a href="#create-group-modal" data-uk-modal >
		<div class = "">
			<p class = "create-group-text">+ Group</p>
		</div>
	</a>
</div>

<!-- Create Group Modal -->
<div id="create-group-modal" class="uk-modal">
    <div class="uk-modal-dialog">
		
		<!-- Close Modal -->
		<a class="uk-modal-close uk-close"></a>

		<!-- Group Information Area -->
		<div class = "">	
		   
			<!-- Select Existing User or Email -->
			<p id = "js-group-create-current-friend" class = "hide group-create-toggle-text"> Current Friend </p>						
			<p id = "js-group-create-email" class = "hide group-create-toggle-text"> Use Email </p>
				
			<!-- Create Group: Group Name -->				
			<input type="text" name="new-group-name" id = "" class = "" placeholder="Enter Group Name">
		</div>
		
		<!-- TYPE 1: Create Group from Existing Users -->			
		<div id = "js-create-group-current-user">		
			<div class="uk-clearfix">
			
				<?php 

				//All Invitable Friends 
				$total_friend_count = count($logged_in_users_friends_array);

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
		
		<p id = "js-create-new-group"> Create </p>
		
		<!-- TYPE 2: Create Group from Email-->
		<div id = "js-create-group-email" class = "hide">	
			<p> email </p>
		</div>
		
		<!-- Hidden Variables -->
		<input type="hidden" name="logged-in-user" id = "" value = "<?php echo $logged_in_user; ?>"> 	
		<input type="hidden" name="new-group-type" id = "" value = "<?php echo $new_group_type; ?>"> 	
		<input type="hidden" name="master-site" id = "" value = "<?php echo $master_site; ?>"> 	
		
	</div>
</div>













