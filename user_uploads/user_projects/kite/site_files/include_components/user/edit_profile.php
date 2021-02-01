<?php if ($currently_on_friend_page==0){ ?>
		
	<!-- This is an anchor toggling the modal -->
	<a href="#edit-profile-modal" data-uk-modal>
		<img src="<?php echo ICON; ?>edit\edit_two.png" alt="" class = "user-profile-edit-icon">
	</a>

	<?php
	//Edit User Profile 
	$Edit_User_Profile = new User($logged_in_user);			
	$Edit_User_Profile->getUserInfo($logged_in_user);
	?>

	
<!-- This is the modal -->
<div id="edit-profile-modal" class="uk-modal">
    <div id = "edit-profile" class="uk-modal-dialog">
        
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
			

			<!-- User Info -->
			<div class="">

				<form id="edit-user-profile" class = "" method="post" action="">				
					
					<!-- User Info (User Profile Table )--> 
					<div class = " edit-profile-user-holder">
					
						<!-- First Name -->
						<div class="uk-grid edit-profile-row ">
							<div class="uk-width-medium-3-10 uk-width-small-1-1">
								<p class = "edit-profile-input-label"> First Name: </p>				
							</div>
							<div class="uk-width-medium-7-10 uk-width-small-1-1">
								<input name="first_name" type="text" id="js-update-first-name" placeholder="first name" class="edit-profile-input-box" value="<?php echo htmlentities($Edit_User_Profile->firstName, ENT_COMPAT, 'utf-8'); ?>">	
							</div>
						</div>

						<!-- Last Name -->		
						<div class="uk-grid edit-profile-row">
							<div class="uk-width-medium-3-10 uk-width-small-1-1">
								<p class = "edit-profile-input-label"> Last Name: </p>			
							</div>
							<div class="uk-width-medium-7-10 uk-width-small-1-1">
					
								<input name="last_name" type="text" id="js-update-last-name" placeholder="last name" class="edit-profile-input-box" value="<?php echo htmlentities($Edit_User_Profile->lastName, ENT_COMPAT, 'utf-8'); ?>">
					
							</div>
						</div>
						
						<!-- Email -->		
						<div class="uk-grid edit-profile-row">
							<div class="uk-width-medium-3-10 uk-width-small-1-1">
								<p class = "edit-profile-input-label"> Email: </p>				
							</div>
							<div class="uk-width-medium-7-10 uk-width-small-1-1">
								<input name="email" type="text" id="js-update-email" placeholder="Email" class="edit-profile-input-box" value="<?php echo htmlentities($Edit_User_Profile->email, ENT_COMPAT, 'utf-8'); ?>">		
							</div>
						</div>
						
						<!-- Biography -->	
						<div class="uk-grid edit-profile-row">
							<div class="uk-width-medium-3-10 uk-width-small-1-1">
								<p class = " edit-profile-input-label"> Biography: </p>				
							</div>
							<div class="uk-width-medium-7-10 uk-width-small-1-1">
								<textarea name="biography" id="js-update-user-biography" class="edit-profile-input-text-box " placeholder="Enter something about yourself"><?php echo htmlentities($Edit_User_Profile->biography, ENT_COMPAT, 'utf-8'); ?></textarea>	
							</div>
						</div>		
						
						<!-- Gender -->	
						<div class="uk-grid">
							<div class="uk-width-medium-3-10 uk-width-small-1-1">
								<p class = "edit-profile-input-label"> Gender: </p>						
							</div>
							<div class="uk-width-medium-7-10 uk-width-small-1-1">
								<input name="gender" type="text" id="js-update-user-gender" placeholder="Gender" class="edit-profile-input-box" value="<?php echo htmlentities($Edit_User_Profile->gender, ENT_COMPAT, 'utf-8'); ?>">	
							</div>
						</div>		
								
						
						<!-- Birthday -->	
						<div class="uk-grid">
							<div class="uk-width-medium-3-10 uk-width-small-1-1">
								<p class = "edit-profile-input-label"> Your Birthday: </p>					
							</div>
							<div class="uk-width-medium-7-10 uk-width-small-1-1">
								<input name="birthday" type="text" id="js-update-user-birthday" placeholder="Birthday" class="edit-profile-input-box" value="<?php echo htmlentities($birthday, ENT_COMPAT, 'utf-8'); ?>">
							</div>
						</div>			

					</div><hr />	

					<!-- User Address -->
					<div class = "hide">
						<p class = "edit-profile-input-label"> Address Line 1: </p>	
						<input name="address-one" type="text" id="update-address-line-one" class = "wishlist-input-style-small" placeholder="Street address, P.O. box" class="edit-form-style-input" value="<?php echo htmlentities($Edit_User_Profile->streetAddressLineOne, ENT_COMPAT, 'utf-8'); ?>">

						<p class = "edit-profile-input-label"> Address Line 2: </p>	
						<input name="address-two" type="text" id="update-address-line-two" class = "wishlist-input-style-small" placeholder="Apartment, Suite, Unit, Building, floor, etc" class="edit-form-style-input" value="<?php echo htmlentities($Edit_User_Profile->streetAddressLineTwo, ENT_COMPAT, 'utf-8'); ?>">

						<p class = "edit-profile-input-label"> City: </p>	
						<input name="update-city" type="text" id="update-address-city" class = "wishlist-input-style-small" placeholder="Enter City" class="edit-form-style-input" value="<?php echo htmlentities($Edit_User_Profile->addressCity, ENT_COMPAT, 'utf-8'); ?>">

						<p class = " edit-profile-input-label"> State: </p>	
						<input name="update-state" type="text" id="update-address-state" class = "wishlist-input-style-small" placeholder="Enter State" class="edit-form-style-input" value="<?php echo htmlentities($Edit_User_Profile->addressState, ENT_COMPAT, 'utf-8'); ?>">

						<p class = "edit-profile-input-label"> Zip Code: </p>	
						<input name="update-zip" type="text" id="update-address-zip-code" class = "wishlist-input-style-small" placeholder="Enter Zip Code" class="edit-form-style-input" value="<?php echo htmlentities($Edit_User_Profile->addressZipCode, ENT_COMPAT, 'utf-8'); ?>">

						<p class = "edit-profile-input-label"> Country: </p>	
						<input name="update-country" type="text" id="update-address-country" class = "wishlist-input-style-small" placeholder="Enter Country" class="edit-form-style-input" value="<?php echo htmlentities($Edit_User_Profile->addressCountry, ENT_COMPAT, 'utf-8'); ?>">
					</div>			

					<!-- User Clothing Size -->
					<div class = "hide">
						<p class = "edit-profile-input-label"> Shirt Size: </p>	
						<input name="user-shirt" type="text" id="update-user-shirt" placeholder="" class="wishlist-input-style-small" value="<?php echo htmlentities($Edit_User_Profile->userShirt, ENT_COMPAT, 'utf-8'); ?>">

						<p class = "edit-profile-input-label"> Sweater or Sweatshirt Size: </p>	
						<input name="user-sweater" type="text" id="update-user-sweater" placeholder="" class="wishlist-input-style-small" value="<?php echo htmlentities($Edit_User_Profile->userSweater, ENT_COMPAT, 'utf-8'); ?>">

						<p class = "edit-profile-input-label"> Coat Size: </p>	
						<input name="user-coat" type="text" id="update-user-coat" placeholder="" class="wishlist-input-style-small" value="<?php echo htmlentities($Edit_User_Profile->userCoat, ENT_COMPAT, 'utf-8'); ?>">

						<p class = " edit-profile-input-label"> Jeans Size </p>	
						<input name="user-jeans" type="text" id="update-user-jeans" placeholder="" class="wishlist-input-style-small" value="<?php echo htmlentities($Edit_User_Profile->userJeans, ENT_COMPAT, 'utf-8'); ?>">

						<p class = " edit-profile-input-label"> Pant Size </p>	
						<input name="user-pants" type="text" id="update-user-pants" placeholder="" class="wishlist-input-style-small" value="<?php echo htmlentities($Edit_User_Profile->userPants); ?>">

						<p class = "edit-profile-input-label"> Dress Size: </p>	
						<input name="user-dress-size" type="text" id="update-user-dress-size" placeholder="" class="wishlist-input-style-small" value="<?php echo htmlentities($Edit_User_Profile->userDressSize, ENT_COMPAT, 'utf-8'); ?>">

						<p class = "edit-profile-input-label"> Shoe Size: </p>	
						<input name="user-shoes" type="text" id="update-user-shoes" placeholder="" class="wishlist-input-style-small" value="<?php echo htmlentities($Edit_User_Profile->userShoeSize, ENT_COMPAT, 'utf-8'); ?>">

						<p class = "edit-profile-input-label"> Other Clothing Info: </p>		
						<textarea name="user-info" id = "update-user-info" class = "wishlist-modal-textarea post-caption-holder" placeholder="" value="<?php echo htmlentities($Edit_User_Profile->userInfo, ENT_COMPAT, 'utf-8'); ?>"></textarea>											
					</div>						
				</form>	
				
				<!-- Change user Image -->
				<div class="uk-grid uk-grid-modal-adjust">
					<div class="uk-width-medium-3-10 uk-width-small-1-1">
						<p class = "edit-profile-input-label"> Change Image: </p>					
					</div>
					<div class="uk-width-medium-7-10 uk-width-small-1-1">
						<?php include('include_components/user/change_user_image.php'); ?>						

					</div>						

				</div>		

					
			</div>
	
		
		</div>
		
		<!-- FOOTER -->
		<div class="uk-modal-footer">
			<div class="uk-grid">
				<div class="uk-width-medium-7-10 uk-width-small-6-10">
				</div>
				<div class="uk-width-medium-3-10 uk-width-small-4-10">
				
					<!-- Save Changes -->	
					<input type="submit" name="update" value="Save Changes" id="js-update-user-save" class = "button-blue edit-profile-save-changes-button">
					<input name="user_id" id = "update-user-hidden-id" type="hidden" value="<?php echo $Edit_User_Profile->userID; ?>">
					<input name="logged-in-user" id = "update-logged-in-user" type="hidden" value="<?php echo $logged_in_user; ?>">						
					
					<!-- Logout -->
					<form id="logoutForm" method="post" class = "" action="">
						<input name="logout" type="submit" id="logout" class = "button-white edit-profile-logout-button" value="Log out">
						<input type="hidden" name="logout-user"  id = "" value = "<?php echo $logged_in_user; ?>" value="user"> 
					</form> 
					
					<!-- Changes Saved -->
					<div id = "js-update-profile-status"  class = "hide">
						<p> Changes Saved </p>
					</div>				
						
				</div>
			</div>		
		</div>	

		
	</div>	
</div>

		
		
<?php } ?>		
				







