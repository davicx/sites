<?php 

//Active Users
$active_group_users_array = $Current_Group->activeGroupUsers;

//Pending Users 
$pending_group_users_array = $Current_Group->pendingGroupUsers;

//STEP 1: Get All Total Active and Pending Group Members 
$total_group_users_array = array_merge($active_group_users_array, $pending_group_users_array);
$total_group_users_array = array_unique($total_group_users_array); 
$total_group_users_array = array_values($total_group_users_array);		

//STEP 2: Find Invitable Friends (My friends that are not in the total group users array) 
$invitable_friends_array = array_diff($logged_in_users_friends_array, $total_group_users_array);			
$invitable_friends_array = array_unique($invitable_friends_array); 
$group_invitable_friends_array = array_values($invitable_friends_array);	
$group_invitable_friends_count = count($group_invitable_friends_array);	
				
?>
<!-- Open Create Group Modal -->
<div id = "">
	<a href="#add-user-group-modal" class = "group-menu-add-user-text" data-uk-modal>+ Add </a>
</div>

<!-- Create Group Modal -->
<div id="add-user-group-modal" class="uk-modal">
    <div class="uk-modal-dialog">
		
		<!-- HEADER -->
		<div class="uk-modal-header">
			<div class="uk-grid uk-grid-modal-adjust">
				
				<!-- Header Text -->
				<div class="uk-width-9-10">
					<h4> Add a New Member </h4>
				</div>
				
				<!-- Header Close --> 
				<div class="uk-width-1-10">
					<a class="uk-modal-close uk-close"></a>								
				</div>
			</div>	
		</div>

		<!-- BODY -->
		<div id = "" class="uk-clearfix">

			<?php 
			//All Invitable Friends 	
			for($x = 0; $x < $group_invitable_friends_count; $x++) {
				$Current_User = new User($group_invitable_friends_array[$x]);
				$Current_User->getUserInfo($group_invitable_friends_array[$x]);
				
			?>	
			
			<!-- Individual User -->	
			<div class = "uk-float-left group-invite-user-holder-container ">
				<div class = "group-invite-user-holder">
					
					<!-- User Image -->	
					<div class="group-invite-user-image-area">
						<img src="<?php echo USER_IMAGE . $Current_User->userImage; ?>" class = "group-invite-user-image-style" alt=""></a>
					</div>
					
					<!-- User Name and Select -->	
					<div class="group-invite-user-name-area">
						
						<!-- Select User Checkbox -->
						<div class = "group-invite-user-checkbox-holder">
							<label class = "group-invite-user-select-box">
								<input type="checkbox" id = "<?php echo $Current_User->userName;?>" class = "js-add-users-to-group-check-box group-invite-user-select-box"> 
							</label>
						</div>
													
						<!-- User Name-->
						<div class = "group-invite-user-name-holder">
							<p class = "group-invite-user-name-text "> <?php echo $Current_User->userName; ?> </p>
						</div>
						
					</div>
					
				</div>
			</div> 
						
			<!-- Hidden Variables -->
			<input type="hidden" name="logged-in-user" id = "" value = "<?php echo $logged_in_user; ?>"> 	
			<input type="hidden" name="master-site" id = "" value = "<?php echo $master_site; ?>"> 	
		
			<?php  }  ?>
			

		</div>
		
		<!-- FOOTER -->
		<div class="uk-modal-footer">
			<div class="uk-grid">
				<div class="uk-width-1-1 ">
					
					<!-- Error Message -->
					<p id = "js-add-users-to-group-error" class = "hide error-message-red group-add-users-error-text"> Please select at least one user </p>
						
					<p id = "js-add-users-to-group_<?php echo $group_id; ?>" class = "js-add-users-to-group button-blue group-add-users-button"> Add Users </p>
				</div>
			</div>		
		</div>	

	</div>
</div>




<?php 
/*
     
		<!-- HEADER -->
		<div class="uk-modal-header">
			<div class="uk-grid uk-grid-modal-adjust">
				
				<!-- Header Text -->
				<div class="uk-width-9-10">
					<h4> Update Your Profile </h4>
				</div>
				
				<!-- Header Close --> 
				<div class="uk-width-1-10">
					<a class="uk-modal-close uk-close"></a>								
				</div>
			</div>	
		</div>

		<!-- BODY -->
		<div id = "">
			


	
		
		</div>
		
		<!-- FOOTER -->
		<div class="uk-modal-footer">
			<div class="uk-grid">
				<div class="uk-width-medium-7-10 uk-width-small-6-10">
				</div>
				<div class="uk-width-medium-3-10 uk-width-small-4-10">
			
						
				</div>
			</div>		
		</div>	

		
*/
?>








