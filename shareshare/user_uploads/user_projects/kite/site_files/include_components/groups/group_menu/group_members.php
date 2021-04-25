<!-- Members: Footer -->
<div class = "group-menu-members-header">

	<!-- Switch View -->
	<p class = "group-menu-members-select-text">
	<span id = "js-group-show-active-members_<?php echo $group_id; ?>" class = "js-group-show-active-members group-menu-text bold">Active Members </span> | 
	<span id = "js-group-show-pending-members_<?php echo $group_id; ?>" class = "js-group-show-pending-members group-menu-text">Pending Members </span>
	</p>
</div>

<!-- Members: Body -->
<div class = "group-menu-members-body">
		
	<!-- Add Member -->
	<div class = "group-menu-members-add">
		<?php include('include_components/groups/add_user.php') ?>
	</div>
		
	<!-- Active Members -->
	<div id = "js-group-menu-active-members_<?php echo $group_id; ?>" class = "">
		<?php 
		for($a = 0; $a < $active_group_users_count; $a++) {
			$current_active_member =  $active_group_users_array[$a];	
			$current_member_image = getUserImage($current_active_member);
		?> 
			
			<!-- List of Each Active Members -->
			<div class = "group-menu-member-holder">
				<div class = "group-menu-member-holder-image">
					<div class = "group-menu-member-image-holder">
						<img src="<?php echo USER_IMAGE . $current_member_image; ?>" alt="" class = "group-menu-member-image">	
					</div>
				</div>
				<div class = "group-menu-member-holder-name ">
					<p class = "group-menu-member-name-text"><?php echo $current_active_member; ?></p> 
				</div>	
			</div>			
			
		<?php } ?> 
	</div>
			
	<!-- Pending Members -->
	<div id = "js-group-menu-pending-members_<?php echo $group_id; ?>" class = "hide">
		<?php 
		for($p = 0; $p < $pending_group_users_count; $p++) {
			$current_pending_member =  $pending_group_users_array[$p];	
			$current_member_image = getUserImage($current_pending_member);			
		?> 
			<!-- List of Each Pending Members -->
			<div class = "group-menu-member-holder">
				<div class = "group-menu-member-holder-image">
					<div class = "group-menu-member-image-holder">
						<img src="<?php echo USER_IMAGE . $current_member_image; ?>" alt="" class = "group-menu-member-image">	
					</div>
				</div>
				<div class = "group-menu-member-holder-name ">
					<p class = "group-menu-member-name-text"><?php echo $current_pending_member; ?></p> 
				</div>	
			</div>			
			
		<?php } ?>
	</div>
</div>

