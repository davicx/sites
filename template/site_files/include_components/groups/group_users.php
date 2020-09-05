
<div class = "">

	<p class = "text-zero"> Active Members (<?php echo $active_group_users_count; ?>) </p>				
	<p class = "text-zero"> Active Members <?php print_r($active_group_users_array); ?> </p>
	<hr />				
	<p class = "text-zero"> Pending Member (<?php echo $pending_group_users_count; ?>) </p>				
	<p class = "text-zero"> Pending Members <?php print_r($pending_group_users_array); ?> </p>
	<hr />		
	<p class = "text-zero"> Total Members <?php echo $total_group_users_count; ?> </p>				
	<p class = "text-zero"> Total Members <?php print_r($total_group_users_array); ?> </p>
	<hr />
	<p class = "text-zero"> User Friends <?php  echo $logged_in_users_friends_count; ?> </p>				
	<p class = "text-zero"> User Friends <?php print_r($logged_in_users_friends_array); ?> </p>				
	<hr />
	<p class = "text-zero"> Invitable Users <?php echo $group_invitable_friends_count; ?> </p>				
	<p class = "text-zero"> Invitable Users <?php print_r($group_invitable_friends_array); ?> </p>		

</div>














<?php 
/*
Rebecca.Schaffeld@oregonstate.edu
for($x = 0; $x < $active_group_users_count; $x++) {
    echo "<p>";
	echo getUserImage($active_group_users_array[$x]);
    echo "</p>";
}
*/
?>
<?php 
/*
//Friends of Group (move to a main Group Entry Page)
$Current_Group = new Group($group_id);
$Current_Group->getGroupUsers($logged_in_user, $group_id);
$Current_Group->groupCreated($logged_in_user, $group_id);
$group_name = $Current_Group->groupName;		
$active_group_users_array       = $Current_Group->activeGroupUsers;
$active_group_users_count 		= count($active_group_users_array);
$pending_group_users_array	 	= $Current_Group->pendingGroupUsers;
$pending_group_users_count 		= count($pending_group_users_array);			

$group_invitable_friends_array  = $Current_Group->friendsNotInGroup;
$group_invitable_friends_count  = count($group_invitable_friends_array);	
$total_group_users_array   		= $Current_Group->totalGroupUsers;	
$total_group_users_count   		= $Current_Group->totalUsersCount;	
$total_user_friends_array		= $Current_Group->userTotalFriends;	


<!-- Active Members -->
<p><b>Active Members </b></p>	
<div class = "hide">
	<p class = "menu-body-group-page-text"> Active Members (<?php echo $active_group_users_count; ?>) </p>				
	<p class = "menu-body-group-page-text"> Active Members <?php print_r($active_group_users_array); ?> </p>	
</div>
<?php 
for($x = 0; $x < $active_group_users_count; $x++) {
    echo "<p>";
	echo $active_group_users_array[$x];
    echo "</p>";
}
?>


<!-- Pending Members -->
<p><b> Pending Members</b></p>	
<div class = "hide">
	<p class = "menu-body-group-page-text"> Pending Members (<?php echo $pending_group_users_count; ?>) </p>				
	<p class = "menu-body-group-page-text"> Pending Members <?php print_r($pending_group_users_array); ?> </p>		
</div>
<?php 
for($x = 0; $x < $pending_group_users_count; $x++) {
    echo "<p>";
	echo $pending_group_users_array[$x];
    echo "</p>";
}
?>
*/ ?>

			

										
