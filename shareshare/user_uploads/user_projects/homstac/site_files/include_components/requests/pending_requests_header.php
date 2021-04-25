<!-- REQUESTS -->
<div id = "js-header-pending-requests" class="hide">

<?php 

//STEP 1: Get all Pending Requests
$result_requests = mysqli_query($conn,"SELECT * FROM pending_requests WHERE sent_to = '$logged_in_user' and request_is_pending = '1'");
$total_pending_requests = $result_requests->num_rows;

//STEP 2: No New Requests Found 
if($total_pending_requests == 0) { ?>
<div class="request-header-empty">
	<p class = "no-requests-header-text"> No pending requests </p>
</div>	
<?php } else {

	//STEP 3: Requests found so Display
	while($row_requests = $result_requests->fetch_assoc()) {
		$request_id = $row_requests["primary_id"];;
		$sent_by = $row_requests["sent_by"];
		$sent_by_id = getUserID($sent_by);
		$request_group_id = $row_requests["group_id"];
		$request_message = $row_requests["request_type_text"];
		$request_type = $row_requests["request_type"];
		$Pending_Request_User = new User($sent_by);
		$Pending_Request_User->getUserInfo($sent_by);	
		$request_user_image = $Pending_Request_User->userImage;
?>

	<!-- Individual Request -->	
	<div id = "js-request_<?php echo $request_id; ?>" class="request-header">

		<!-- Request: From Image -->
		<div id = "" class="request-header-image-area">
			<img src="<?php echo USER_IMAGE . "11.jpg"; ?>" alt="Request From" class = "request-header-from-image ">
		</div>	
		
		<!-- Request: Body -->
		<div id = "" class="request-header-body">
			
			<!-- Requst From -->
			<div id = "" class="request-from-area">			
				<div id = "" class="request-from-top-area">	
					<a href="url" class = "request-header-user-name-text "><?php echo $sent_by; ?> </a>
				</div>
				<div id = "" class="request-from-bottom-area">			
					<p class = "request-header-body-text "> <?php echo $request_message; ?> </p>
				</div>
			</div>			

			<!-- ACCEPT OR DECLINE -->
			<?php 
			
			
			//Request Type 1: Group Request 
			if(strcasecmp($request_type,"new_group") == 0) { ?>
				
				<!-- Request Accept -->
				<div id = "" class="request-accept-area">			
					<div class = "button-request button-request-accept">  
						<p id = "js-accept-group-request_<?php echo $request_id; ?>" class = "js-accept-group-request button-request-text">Accept</p>
					</div>
				</div>			
				
				<!-- Requst Decline -->
				<div id = "" class="request-decline-area">			
					<div id = "" class="button-request button-request-decline">	
						<p id = "js-decline-group-request_<?php echo $request_id; ?>" class = "js-decline-group-request button-request-text">Decline</p>		
					</div>		
				</div>		
			
			<?php
			//Request Type 2: Join Existing Group 
			} else if (strcasecmp($request_type,"group_invite") == 0) { ?>
				<!-- Request Accept -->
				<div id = "" class="request-accept-area">			
					<div class = "button-request button-request-accept">  
						<p id = "js-accept-group-request_<?php echo $request_id; ?>" class = "js-accept-group-request button-request-text">Accept</p>
					</div>
				</div>			
				
				<!-- Requst Decline -->
				<div id = "" class="request-decline-area">			
					<div id = "" class="button-request button-request-decline">	
						<p id = "js-decline-group-request_<?php echo $request_id; ?>" class = "js-decline-group-request button-request-text">Decline </p>		
					</div>		
				</div>		
				
			<?php 
			//Request Type 3: New Friend Request
			} else if (strcasecmp($request_type,"friend") == 0){ ?>

				<!-- Request Accept -->
				<div id = "" class="request-accept-area">			
					<div class = "button-request button-request-accept">  
						<p  id = "js-accept-friend-request_<?php echo $sent_by_id; ?>" class = "js-accept-friend-request button-request-text">Accept</p>
					</div>
				</div>			
				
				<!-- Requst Decline -->
				<div id = "" class="request-decline-area">			
					<div id = "" class="button-request button-request-decline">	
						<p id = "js-decline-friend-request_<?php echo $sent_by_id; ?>" class = "js-decline-friend-request button-request-text">Decline</p>		
					</div>		
				</div>		
				
			<?php } else { /* Add Future Requests here */ } ?>

			<!-- Hidden Variables -->
			<input type="hidden" name="" id = "js-pending-request-group-id_<?php echo $request_id; ?>" value = "<?php echo $request_group_id; ?>"> 	
			<input type="hidden" name="" id = "js-pending-group-request-sent-by_<?php echo $request_id; ?>" value = "<?php echo $sent_by; ?>"> 	
			<input type="hidden" name="" id = "js-pending-request-sent-by_<?php echo $sent_by_id; ?>" value = "<?php echo $sent_by; ?>"> 	
			<input type="hidden" name="logged-in-user" id = "" value = "<?php echo $logged_in_user; ?>"> 	
			<input type="hidden" name="master-site" id = "" value = "<?php echo $master_site; ?>"> 	
		
		</div>		
	</div>
	
<?php } }?>
	
</div>



		
