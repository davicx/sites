<!-- MOBILE HEADER: -->	
<div id = "js-mobile" class = "hide">

	<!-- Mobile Logo -->
	<div id = "mobile-logo">
		<a href="groups.php">
			<div id = "desktop-cloud-logo-holder" class = "">
				<img title = "Home Page" src="<?php echo ICON; ?>logo/cloud.png" id = "desktop-cloud-logo-image-site" class = "" alt="">
			</div>
		</a>		
	</div>

	<!-- Mobile Menu -->
	<div id = "mobile-menu" class = "">
		
		<!-- Mobile Icon to Open Menu -->
		<div class = "relative">
			<div data-uk-dropdown="{mode:'click'}">
				
				<!-- This is the element toggling the dropdown -->			
				<div id = "" class = "">
					<img title = "Home Page" src="<?php echo ICON; ?>menu_icon/menu_8.png" id = "mobile-menu-icon-image" class = "hide" alt="">	
					<i class="fa fa-bars fa-2x mobile-menu-icon-fa" aria-hidden="true"></i>
				</div>
				
				<?php 
				if(strcmp($page_url, "groups.php") == 0) { ?>
					
					<!-- Groups Page Menu -->
					<div id = "mobile-menu-dropdown" class="uk-dropdown groups-mobile-menu-dropdown">
						<p>	View All Groups <p><hr />
						<p>	Profile <p>
						<p>	Requests <p>
						<p>	Notifications <p>
						<?php //include('include_components/menu/menu.php') ?>
					</div>
				<?php } else {?>
				
					<!-- Internal Group Menu -->
					<div id = "mobile-menu-dropdown" class="uk-dropdown groups-internal-mobile-menu-dropdown">
						<p>	View All Groups <p><hr />
						<p>	Current Group Name <p>
						<p>	Group Members <p>
						<p>	Group Notificaitons <p><hr />
						<p>	Profile <p>
						<p>	Notifications <p>
						<?php //include('include_components/menu/menu.php') ?>
					</div>
				<?php } ?>
				
				
				
				
			</div>
		</div>
	</div>	
	
</div>
