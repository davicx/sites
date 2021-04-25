<?php /*
<div id="temp-header">
	<img src="<?php echo ICON; ?>template\fujitsu.png" alt="" class = "temp-logo">
</div>
<div id="temp-blue">
	<img src="https://staging.ventacity.net/images/icons/home_icon.png" alt="" class = "temp-globe">
</div>
*/ ?>


<?php /*
<nav class="container-fluid main-nav">
    
    <div class="container">
        <ul class="col-xs-12">
            <!-- Breadcrumbs -->
            
            <li><a href="/"><img src="https://staging.ventacity.net/images/icons/home_icon.png"></a></li><!-- TODO find out if home link should link out to SBCS if sbg.is = true -->
            
            

                

                    

                    <li><i class="fa fa-caret-right"></i><a href="/site/57ffbc26-3c72-11e8-8498-b88198600e3c">Site Dashboard</a></li>

                

            
        </ul>
    </div>
    <a href="/"><img src="/images/logos/diamond_venta.png" class="sm-logo"/></a>
    <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-1" aria-expanded="false">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
    </button>
    <div class="navbar-collapse collapse" id="navbar-collapse-1">
        <ul class="nav navbar-nav">
            <li class="active"><a href="/user/profile" class="mobile"><img src="https://staging.ventacity.net/images/new-user-photo.png" alt="User Avatar" style="
    border-radius:  50%;
    max-width: 40px;
    margin-right: 10px;
" />My Account</a></li>
            
                <li class="active"><a href="/user/admin/settings" class="mobile"><i class="fa icon-settings fa-2x"></i>Settings</a></li>
            
            <li class="active"><a href="#" class="mobile"><i class="fa fa-search fa-2x"></i>Search</a></li>
            <li class="active"><a href="/user/logout" class="mobile"><i class="fa icon-logout fa-2x"></i>Logout</a></li>
        </ul>
    </div>
    
</nav>
*/ ?>

<section class="body">
    <section class="container">
        <!-- Facility -->
        <div class="col-xs-12">
            <div class="facility">
                <div class="row">
                    <!-- Site Header -->

                </div>

                    
  
                    <div class="clearfix">
                        <div class="map-activity-height">
         
                            <div class="col-xs-12 col-md-6 activity-container">
                                <div class="correct-height">

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- TODO: Grab zones from backend - set title of zone, current temp, target temp & settings for each zone -->
            <div class="clearfix">
                        <div class="card col-xs-12 pad-left pad-right filter-section">
                            <div class="col-xs-6 zone-header">
                                <h3 class="card-header space-top space-bottom">Devices </h3>
                            </div>
                            <div class="col-xs-6">
                                
                                    <button class="new-button btn btn-primary disabled" type="button" data-toggle="" data-target="#add-device-modal">Add Device</button>
                                
                            </div>
                            <div class="filters">
                                <div class="col-xs-6 col-sm-5">
                                    <p class="col-xs-12">Filter:
                                        <select class="js-filters" data-filter="unit-status">
                                            <option value ="0"> All</option>
                                            <option value="1" class="online">Online</option><span class="fa fa-circle" aria-hidden="true"></span>
                                            <option value="2" class="online" >Warning</option>
                                            <option value="3" class="online">Error</option>
                                        </select>
                                        <span>Unit Type</span>
                                        <select class="js-filters" data-filter="unit-model">
                                            <option value ="0"> All </option>

                                            
                                            
                                            
                                            <option value='1000 CFM HRV' class="online">1000 CFM HRV
                                            </option><span class="fa fa-circle" aria-hidden="true"></span>
                                            
                                            
                                            <option value='J-II' class="online">J-II
                                            </option><span class="fa fa-circle" aria-hidden="true"></span>
                                            
                                            
                                        </select>
                                        <!--<select class="js-sorter" data-sort="unit-model">-->
                                            <!--<option >Default</option>-->
                                            <!--<option value ="0"> A-Z</option>-->
                                            <!--<option value="1" class="online">Z-A </option><span class="fa fa-circle" aria-hidden="true"></span>-->
                                        <!--</select>-->
                                    </p>
                                </div>
                                <div class="col-xs-6 col-sm-5">

                                </div>
                                <div class="hidden-xs col-sm-2">
                                    <p class="pull-right"><a class="js-clear-filters" >Clear X</a></p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12">
                                    <hr class="full">
                                </div>
                            </div>
                            <div class="status-cards filterable ">
                                
                                  
                                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3" data-unit-status="1" data-unit-model="1000 CFM HRV" data-bind-attr=" site_information.devices.0.unit_status:updateMap,0">

  
    
    <a href="/site/57ffbc26-3c72-11e8-8498-b88198600e3c/vs/1/?unit_type=1000 CFM HRV">
      
      <div class="col-xs-12 card unit flex-justify-space">
        <div class="row">
          <div class="col-xs-3">
            <img class=" unit-image" src="../../images/icons/template/image_1.png">
          </div>
          <h5 class="col-xs-7 card-headline">
            Alpha 3 Corv VS1K
          </h5>
          <div class="col-xs-2">
            <img class="status-light pull-right" style="width:15px; height:15px;" src="../../images/icons/template/image_2.png" />
          </div>
          <p class="col-xs-8" >
            1000 CFM HRV-VS1000 RT -S
          </p>
        </div>
        <div class="row status">
          <div class="col-xs-10">
            <p><span class="status-title">Status: </span><span data-bind-html="site_information.devices.0.unit_status_message">Running</span></p>
          </div>
          <div class="col-xs-2">
            <p class=""><i class="fa fa-chevron-right"></i></p>
          </div>
        </div>
      </div>
    </a>

  

</div>

                                  
                                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3" data-unit-status="1" data-unit-model="J-II" data-bind-attr=" site_information.devices.1.unit_status:updateMap,1">

  
    
    <a href="/site/57ffbc26-3c72-11e8-8498-b88198600e3c/fjvrf_outdoor/1/?unit_type=J-II">
      
      <div class="col-xs-12 card unit flex-justify-space">
        <div class="row">
          <div class="col-xs-3">
            <img class=" unit-image" src="../../images/icons/template/image_2.png">
          </div>
          <h5 class="col-xs-7 card-headline">
            VRF Outdoor Master
          </h5>
          <div class="col-xs-2">
            <img class="status-light pull-right" style="width:15px; height:15px;" src="/images/icons/cluster-status/icon-1.png" data-bind-attr="src site_information.devices.1.unit_status:change_image_png,/images/icons/cluster-status/icon-">
          </div>
          <p class="col-xs-8" >
            J-II-AOU48RLAVM
          </p>
        </div>
        <div class="row status">
          <div class="col-xs-10">
            <p><span class="status-title">Status: </span><span data-bind-html="site_information.devices.1.unit_status_message">Running</span></p>
          </div>
          <div class="col-xs-2">
            <p class=""><i class="fa fa-chevron-right"></i></p>
          </div>
        </div>
      </div>
    </a>

  

</div>

                                  
                                
                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 js-fallback">
                                    <p>There are no sites matching this criteria</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
  <br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />

</section>


        
<footer class="container-fluid">
    <div class="container">
        <div class="col-xs-12 logos">
            <div class="col-xs-12 col-sm-4">
                <a href="http://www.ventacity.com" target="_blank"><img id="ventacity-logo" src="https://staging.ventacity.net/images/logos/ventacity-logo.png"/></a>
            </div>
            <div class="col-xs-12 col-sm-4 col-md-3 col-md-offset-1 hvac-div">
                <img id="hvac2" src="https://staging.ventacity.net/images/logos/hvac2.png"/>
            </div>
            <div class="col-xs-12 col-sm-4 col-md-3 col-md-offset-1">
                <a href="/support" class="btn btn-footer">
                    Need Help?
                </a>
            </div>
        </div>
        <div class="col-xs-12">
            <hr class="full">
        </div>
        <div class="row">
            <div class="col-xs-12">
                <ul class="address">
                    <li>
                        Ventacity Systems Inc. |
                        2828 SW Corbett Ave |
                        Portland, OR 97201 |
                        1-(888)-VENTIL8
                    </li>
                </ul>
            </div>
        </div>
        <div class="row legal">
            <div class="col-xs-12 col-sm-4">
                <p>&copy;
                    2018 Ventacity Systems Inc. | All Rights Reserved
                </p>
                <p>Build:
                    0.9.0-A-23
                </p>
            </div>
            <div class="col-xs-12 col-sm-4 col-sm-offset-4 col-md-3 col-md-offset-5">
                <ul class="links">
                    <li>
                        <a href="/terms-of-service">
                            Terms of Use
                        </a>
                    </li>
                    <li class="privacy-policy">
                        <a href="/privacy-policy">
                            Privacy Policy
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    

    

</footer>

		