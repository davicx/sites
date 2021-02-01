<!-- GROUP  -->
<div id = "group">

	<!-- GROUP: Image -->
	<div class = "group-image group-profile-background ">
		<div class = "group-profile-image-holder">
			<img src="<?php echo SITE_IMAGE; ?>osu_logo.jpg" class = "group-profile-image" alt="">		
		</div>		
	</div>

	<!-- GROUP: Info -->
	<div class = "group-info">
		
		<div class = "group-information">
			
			<!-- Group Events -->
			<div class = "group-information-events ">
				<a href="#">	
					<div class = "group-information-header">
						<h4 class = "user-profile-information-total-text" > 7 </h4>
					</div>
					<div class = "group-information-body ">
						<p class = "user-profile-information-header-text" > Events </p>
					</div>
				</a>					
			</div>			
			
			<!-- Group Followers -->
			<div class = "group-information-followers">
				<a href="#">	
					<div class = "group-information-header">
						<h4 class = "user-profile-information-total-text" > 25 </h4>
					</div>
					<div class = "group-information-body ">
						<p class = "user-profile-information-header-text" > Followers </p>
					</div>
				</a>						
			</div>		
			
			<!-- Group Follow -->
			<div class = "group-information-follow">
				<a href="#">	
					<div class = "group-information-header">
						<input type="checkbox" name="event" class = "follow-group-checkbox" value="">
					</div>
					<div class = "group-information-body ">
						<p class = "user-profile-information-header-text" > Follow </p>
					</div>
				</a>				
			</div>			
			
		</div>
		
		<!-- Group- Select View Type -->
		<div class = "group-event-view-select"> 
			
			<div class = "group-event-view-select-left"> 
				<i class="fa fa-calendar group-event-view-select-icon" aria-hidden="true"></i>	
			</div>			
			<div class = "group-event-view-select-middle"> 
				<i class="fa fa-th-large group-event-view-select-icon" aria-hidden="true"></i>
			</div>			
			<div class = "group-event-view-select-right"> 
				<i class="fa fa-list-ul group-event-view-select-icon" aria-hidden="true"></i>
			</div>
							
		</div>
		
		
	</div>

	<!-- GROUP: Their upcoming events -->
	<div class = "group-events">
	
		<!-- EVENT: Soccer -->			
		<div class = "event">

			<!-- EVENT: Image -->
			<div class = "event-image-holder">
				<img src="<?php echo SITE_IMAGE; ?>soccer.png" class = "event-image " alt="">						
			</div>		
			
			<!-- EVENT: About -->
			<div class = "event-about-holder">

				<!-- Event Info -->
				<div class = "event-info-holder">
					<h4 class = "events-about-header-text"> Career Fair </h4>		
					<p class = "events-about-body-text"> Come network with over 100 employers from across the US this <span class = "events-about-link-text">Thursday</span></p>		
							
				</div>	
				
				<!-- Attending -->
				<div class = "event-attend-holder">
					<input type="checkbox" name="event" class = "event-action-checkbox" value="" checked>
					<p class = "event-attend-text"> Attending </p> 	
				</div>

			</div>

		</div>	

		<!-- EVENT: DamChic -->			
		<div class = "event">

			<!-- EVENT: Image -->
			<div class = "event-image-holder">
				<img src="<?php echo SITE_IMAGE; ?>dam_chic.png" class = "event-image " alt="">						
			</div>		
			
			<!-- EVENT: About -->
			<div class = "event-about-holder">
				
				<!-- Event Info -->
				<div class = "event-info-holder">
					<h4 class = "events-about-header-text"> Speed Mock Interviews </h4>		
					<p class = "events-about-body-text"> Think speed-dating, but with a professional twist. At Speed Mock Interviews, employers ask students several standard interview questions, then give feedback on the students’ performances in a low-pressure situation. <span class = "events-about-link-text">Thursday</span></p>						
				</div>	
				
				<!-- Attending -->
				<div class = "event-attend-holder">
					<input type="checkbox" name="event" class = "event-action-checkbox" value="">
					<p class = "event-attend-text"> Attend </p> 	
				</div>			
			
			</div>

		</div>	
	</div>
	
</div>