<?php 


//STEP 1: Get all Pending Requests
$result_requests = mysqli_query($conn,"SELECT * FROM pending_requests WHERE sent_to = '$logged_in_user' and request_is_pending = '1'");
$total_pending_requests = $result_requests->num_rows;

//STEP 2: No New Requests Found 
if($total_pending_requests == 0) { ?>
	<p> none found </p>
	
<?php } else {

	//STEP 3: Requests found so Display
	while($row_requests = $result_requests->fetch_assoc()) {
		$request_id = $row_requests["primary_id"];;
		$sent_by = $row_requests["sent_by"];
		$sent_by_id = getUserID($sent_by);
		$group_id = $row_requests["group_id"];
		$request_message = $row_requests["request_type_text"];
		$request_type = $row_requests["request_type"];
		$Pending_Request_User = new User($sent_by);
		$Pending_Request_User->getUserInfo($sent_by);	
		$request_user_image = $Pending_Request_User->userImage;
		
	?>

		<!-- Individual Request -->
		<div id = "js-request_<?php echo $request_id; ?>" class = "temp-request-holder">
			
			<!-- Request Information -->
			<p><?php echo $sent_by; ?></p>
			<p>Group ID: <?php echo $group_id; ?></p>
			<p><?php echo $request_message; ?></p>
			
			<?php 
			if(strcasecmp($request_type,"new_group") == 0) { ?>
				
				<!-- Request Type 1: Group Request -->
				<p id = "js-accept-group-request_<?php echo $request_id; ?>" class = "js-accept-group-request" >  accept </p>
				<p id = "js-decline-group-request_<?php echo $request_id; ?>" class = "js-decline-group-request" > decline </p>
			
			<?php
			} else if (strcasecmp($request_type,"friend") == 0){ ?>
			
				<!-- Request Type 2: Friend Request -->
				<p id = "js-accept-friend-request_<?php echo $sent_by_id; ?>" class = "js-accept-friend-request" > accept </p>
				<p id = "js-decline-friend-request_<?php echo $sent_by_id; ?>" class = "js-decline-friend-request" > decline </p>	
				
			<?php } else { /* Add Future Requests here */ } ?>

			<!-- Hidden Variables -->
			<input type="hidden" name="" id = "js-pending-request-group-id_<?php echo $request_id; ?>" value = "<?php echo $group_id; ?>"> 	
			<input type="hidden" name="" id = "js-pending-request-sent-by_<?php echo $request_id; ?>" value = "<?php echo $sent_by; ?>"> 		
			
		</div>	

		<!-- Hidden Variables -->
		<input type="hidden" name="logged-in-user" id = "" value = "<?php echo $logged_in_user; ?>"> 	
		<input type="hidden" name="master-site" id = "" value = "<?php echo $master_site; ?>"> 	
		
	<?php } }?>




























		
<div class = "hide relative-position ">

	<!-- This is the container enabling the JavaScript in click mode -->
	<div data-uk-dropdown="{mode:'click'}">

		<!-- This is the element toggling the dropdown -->
		<div> 
			<p><b>Open</p></b> 
		</div>

		<!-- This is the dropdown -->
		<div class="uk-dropdown">
			<p> Requests </p>
		</div>

	</div>
</div>

<?php /*
<!-- This is included from the header file and is the modal of all notifications -->
<div class="uk-dropdown uk-dropdown-notifications">

	<?php
	
		

		if ($result_requests->num_rows > 0) {
			
			//Output each request and format HTML 
			while($row_requests = $result_requests->fetch_assoc()) {
				$request_id = $row_requests["primary_id"];;
				$sent_by = $row_requests["sent_by"];
				//$userImage = getUserImage($sent_by);
				$Pending_Request_User = new User($sent_by);
				$Pending_Request_User->getUserInfo($sent_by);	
				$request_user_image = $Pending_Request_User->userImage;
			
				
	?>
		<div id = "request_container_<?php echo $request_id; ?>" class = "request-container">		
			<div class = "request-from-image">
				<img src="<?php echo USER_IMAGE .  $request_user_image; ?>" alt="profile" class = "friend-request-image" width="50" height="50">	
			</div>
			
			<div class = "request-info">
				<p class = "notification-text"> <a href="#"> <?php echo $sent_by ?></a></p>
				<p class = "notification-text"><?php echo $row_requests["request_type_name"]; ?></p>
			</div>
			
			<div class = "request-response-buttons">
				<button type="button" id = "accept_<?php echo $request_id; ?>" class = "accept-request button-notification notification-button">Accept</button>
				<button type="button" id = "decline_<?php echo $request_id; ?>" class = "decline-request button-notification notification-button">Decline</button>
				<p id = "request_text_<?php echo $request_id; ?>" class = "notification-text notification-text-accept hide">Request Accepted</p>
				<input type="hidden" name="logged-in-user" id = "" value = "<?php echo $logged_in_user; ?>" > 	
				<input type="hidden" name="master-site" id = "" value = "wishlist" > 	
				
			</div>		
		</div>		
	
	<?php } } else { echo "0 results"; } ?>
</div>
*/ ?>