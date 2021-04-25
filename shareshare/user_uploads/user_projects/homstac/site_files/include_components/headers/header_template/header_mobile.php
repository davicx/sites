<!-- MOBILE HEADER: -->	
<div id = "js-mobile" class = "hide">

	<!-- Mobile Logo -->
	<div id = "mobile-logo">
		<p> Logo </p>	
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
			
				<!-- This is the dropdown -->
				<div id = "mobile-menu-dropdown" class="uk-dropdown">
					<?php //include('include_components/menu/menu.php') ?>
				</div>

			</div>
		</div>
	</div>	
	
	<?php /*

	<!-- Mobile Logo -->
	<div id = "mobile-logo">
		<p> Logo </p>	
	</div>

	<!-- Mobile Menu -->
	<div id = "mobile-menu" class = "">
		
		<!-- Mobile Icon to Open Menu -->
		<div class = "relative">
			<div data-uk-dropdown="{mode:'click'}">
				
				<!-- This is the element toggling the dropdown -->			
				<div id = "" class = "">
					<img title = "Home Page" src="../images/icons/menu_icon/menu_8.png" id = "mobile-menu-icon-image" alt="">			
				</div>
			
				<!-- This is the dropdown -->
				<div id = "mobile-menu-dropdown" class="uk-dropdown">
					<?php include('include_components/menu/menu.php') ?>
				</div>

			</div>
		</div>
	</div>	
		*/ ?>
</div>
