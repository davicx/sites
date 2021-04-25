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


			<!-- Change user Image -->
			<div class="uk-grid uk-grid-modal-adjust">
				<div class="uk-width-10-10">
			
					<?php include('include_components/user/change_user_image.php'); ?>
				</div>
			</div>		


		</div>
		
		<!-- FOOTER --> 
		<div class="uk-modal-footer">
			<p> header </p>		
		</div>

    </div>
</div>


		
		
<?php } ?>	

<?php /*
user-profile-edit-icon
	<img title = "Edit Post" src="<?php echo ICON; ?>edit\edit_two.png" class = "edit-post-icon" alt="">
<!-- This is an anchor toggling the modal -->
<a href="#edit-profile-modal" data-uk-modal><img src="../images/icons/edit_profile_5.png" alt="Edit Profile" id = "user-edit-profile-icon"></a>

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
					<h3> Update Your Profile </h3>
				</div>
				
				<!-- Header Close --> 
				<div class="uk-width-1-10">
					<a class="uk-modal-close header-new-list-modal-close">
						<img src="../images/icons/close_modal_4.png" alt="Close Modal" class = "header-new-list-modal-close-image">
					</a>									
				</div>
			</div>		
		</div>

		<!-- BODY -->
		<div id = "edit-profile-modal-body">
			
			<!-- Menu -->
			<div class = "edit-profile-menu">		
				<div class="uk-grid uk-grid-modal-adjust">
					<div id = "js-edit-profile-show-user-info" class="uk-width-3-10 edit-profile-menu-item">
						<p id = "js-edit-profile-user-info-text" class = "edit-profile-header-text edit-profile-selected-menu "> User Info </p>
					</div>
			
					<div id = "js-edit-profile-show-user-address" class="uk-width-4-10 edit-profile-menu-item">
						<p id = "js-edit-profile-user-address-text" class = "edit-profile-header-text">User Address </p>		
					</div>
					<div id = "js-edit-profile-show-clothing-info" class="uk-width-3-10 edit-profile-menu-item">
						<p id = "js-edit-profile-user-size-text" class = "edit-profile-header-text"> Clothing Size </p>
					</div>
				</div>	
			</div>
			
			<!-- Edit User Info -->

			<!-- PART 1: User Info -->
			<div id ="js-edit-profile-user-info" class = "edit-profile-content">
				
				<!-- Change user Image -->
				<div class="uk-grid uk-grid-modal-adjust">
					<div class="uk-width-10-10">
						<div class = "edit-profile-change-user-image">
							<form action="" method="post" enctype="multipart/form-data" id="uploadImage" class = "edit-profile-upload-area" style="">
								<label for="image" ><p class = "">Change profile Picture:</p></label>
								<input type="hidden" name="MAX_FILE_SIZE" value="<?php $max = 10485760; echo $max; ?>">
								<input type="hidden" name="user-name-hidden" id = "user-name-hidden" value="<?php echo $Edit_User_Profile->userName; ?>">
								<input type="file" style="font-size:10pt; color: rgba(0,0,0,.8);" name="image" id="image" ><br />
								<input type="submit" class="new-wishlist-list-button-style  wishlist-button-style" style="float: left; margin-top: 8px;" name="upload-user-image" id="upload-user-image" value="Upload" >
							</form>		
						</div>
					</div>
				</div>		

			<form id="edit-user-profile" class = "" method="post" action="">

				<!-- User Info (User Profile Table )--> 
				<div class = "edit-profile-user-holder">
					<p class = "edit-profile-input-label"> First Name: </p>	
					<input name="first_name" type="text" id="js-update-first-name" placeholder="first name" class="wishlist-input-style-small" value="<?php echo htmlentities($Edit_User_Profile->firstName, ENT_COMPAT, 'utf-8'); ?>">
					
					<p class = "edit-profile-input-label"> Last Name: </p>	
					<input name="last_name" type="text" id="js-update-last-name" placeholder="last name" class="wishlist-input-style-small" value="<?php echo htmlentities($Edit_User_Profile->lastName, ENT_COMPAT, 'utf-8'); ?>">
				
					<p class = "edit-profile-input-label"> Email: </p>	
					<input name="email" type="text" id="js-update-email" placeholder="Email" class="wishlist-input-style-small" value="<?php echo htmlentities($Edit_User_Profile->email, ENT_COMPAT, 'utf-8'); ?>">

					<p class = " edit-profile-input-label"> Biography: </p>	
					<textarea name="biography" id="js-update-user-biography" class="wishlist-modal-textarea" placeholder="Enter something about yourself"><?php echo htmlentities($Edit_User_Profile->biography, ENT_COMPAT, 'utf-8'); ?></textarea>	
					
					<p class = "edit-profile-input-label"> Gender: </p>	
					<input name="gender" type="text" id="js-update-user-gender" placeholder="Gender" class="wishlist-input-style-small" value="<?php echo htmlentities($Edit_User_Profile->gender, ENT_COMPAT, 'utf-8'); ?>">
				
					<p class = "edit-profile-input-label"> Your Birthday: </p>	
					<input name="birthday" type="text" id="js-update-user-birthday" placeholder="Birthday" class="wishlist-input-style-small" value="<?php echo htmlentities($birthday, ENT_COMPAT, 'utf-8'); ?>">
				</div>	
	
						
			</div>

			<!-- PART 2: User Address -->
			<div id ="js-edit-profile-user-address" class = "hide edit-profile-user-holder ">
	
				<!-- User Address -->
				<div class = "">
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
			</div>


			<!-- PART 3: User Clothing Size -->
			<div id ="js-edit-profile-user-clothing" class = "hide edit-profile-user-holder">
			
					<!-- User Clothing Size -->
					<div class = "">
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
			</div>			
		
		</div>
		
		<!-- FOOTER --> 
		<div class="uk-modal-footer">
			<div class = "edit-profile-save-button-holder-right">
				<p id = "update-profile-status" class = "hide error-message-text "> Changes Saved </p>	
			</div>
			<div class = "edit-profile-save-button-holder-left">
				<input type="submit" name="update" value="Save Changes" id="js-update-user-save" class = "edit-profile-save-button button">
				<input name="user_id" id = "update-user-hidden-id" type="hidden" value="<?php echo $Edit_User_Profile->userID; ?>">
				<input name="logged-in-user" id = "update-logged-in-user" type="hidden" value="<?php echo $logged_in_user; ?>">
			</div>		
		</div>

    </div>
</div>
*/ 
?>