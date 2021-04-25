<?php
	//Include Page Header 
	
	require_once('../../functions/page_header_external.php');
 
	if(isset($_GET["user_name"])) {
		$user_name = $_GET['user_name'];
	} else {
		//Redirect 
		$user_name = "none";
	}
	
	$visiting_your_page = 0; 
	
	//See if you are visiting your page
	if(isset($logged_in_user)) {
		
		if(strcasecmp($logged_in_user,$user_name)==0) {
			$visiting_your_page = 1; 
			header("Location: homstac_my_profile.php");
		} else {
			$visiting_your_page = 0; 
	
		}
	}
	
	
	
	
	
	

	
	
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
?>
<!DOCTYPE html>
<html>
    <head>
		
		<!-- Meta Tags -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">		
	    <meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="" />
		<title> Template </title>
		
		<!-- Include all JS and CSS Files -->
		<?php include_once('include_components/links_head.php') ?>

    </head>
	
	<body> 
	
		<!-- SECTION: Header -->
		<header>
			<?php //include_once('include_components/headers/header_shareshare/header.php') ?>
		</header>
			
		<div id = "site-wrapper-response">
			
			<div id = "site-wrapper-spacer-groups"> 
				<p> &nbsp </p>
			</div>

			
			<!-- SECTION: Wall --> 
			<div id = "wall" class = "">
			
			
			
			
			
			<?php 
				$siteUrl = "https://www.youtube.com/";
				$siteUrl = "https://www.google.com/";
			
				$urlA = 'http://www.google.com/s2/favicons?domain=';	
				$urlB = $siteUrl;		

				//Step 1: Call function to get the domain name and set this as the image name 
				$site_domain = getDomain($urlB);
	
				//Step 2: Create the full url that will have the image
				$full_url = $urlA . $urlB;
			
				//Step 3: Create File Name 
				$image_name_array = explode(".", $site_domain);
				$image_name = $image_name_array[0] . '.png';			
				
				//Step 4: Save To Folder 
				file_put_contents(FAVICON . "/" . $image_name, file_get_contents($full_url));
				
				//Output
				echo "<p>";
				echo  $image_name;
				echo "</p>";
				
				/* OR
				$url = 'http://example.com/';
				$doc = new DOMDocument();
				$doc->strictErrorChecking = FALSE;
				$doc->loadHTML(file_get_contents($url));
				$xml = simplexml_import_dom($doc);
				$arr = $xml->xpath('//link[@rel="shortcut icon"]');
				echo $arr[0]['href'];
				*/
				////
	/*
	
function getFavicon($siteUrl) {
	$testImage = USER_UPLOADS . "favicons/temp/test.png";
	$urlA = 'http://www.google.com/s2/favicons?domain=';	
	$urlB = $siteUrl;
	
	//Step 1: Call function to get the domain name and set this as the image name 
	$imageNameFull = getDomain($urlB);
	
	$imageNameArray = explode(".", $imageNameFull);
	$imageName = $imageNameArray[0] . '.png';
		
	//Create the full url that will have the image
	$url = $urlA . $urlB;
	
	//Create image name 
	$img = $imageName;
	
	//Step 2: Store image in temp folder to check
	//Execute get image function 
	file_put_contents(FAVICON . "temp/" . $img, file_get_contents($url));
	
	//Check the two images inside the temp folder 
	$image1 = FAVICON . "temp/" . $imageName;
	$image2 = FAVICON . "temp/test.png";
	
	$imageUniqueCheck = checkTwoImages($image1, $image2);

	
	//Step 3: Process file and save
	//If unique save file and exit. If not unique try next method to get favicon
	if($imageUniqueCheck==1) {
		file_put_contents(FAVICON . $img, file_get_contents($url));
		
		return $imageName;
	} else {
		//Get domain name
		$domainName = getDomain($siteUrl);
		
		//Use domain name to create a url where the favicon can be downloaded from 
		$url2_A = "https://www." . $domainName;
		$url2_B = "/favicon.ico";
		$url2_Full   = $url2_A . $url2_B;

		//Get the file
		$content = @file_get_contents($url2_Full);
		if($content === FALSE) {
			
		} else {
			//Store in the filesystem.
			$fp = fopen(FAVICON . "favicons/" . $img, "w");
			fwrite($fp, $content);
			fclose($fp);

			return $imageName;	
		}
	}
}


	*/
	
	///
	
	
			?>
			
			<hr />
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
				<p> <?php echo $user_name; ?> </p>
				<p> All Users </p>

				<?php	
				$result_users = mysqli_query($conn,"SELECT * FROM user_login");

				while($row_users = mysqli_fetch_array($result_users)) {		
					$current_user_name	    = $row_users['user_name'];	
					$current_user_id      = getUserID($current_user_name);				

				?>
				<a href="homstac_user.php?user_name=<?php echo $current_user_name; ?>" class = ""> <?php echo $current_user_name; ?> </a><br/>
				<?php  } ?>	
				
				<p> Logged in: <?php echo $logged_in; ?></p>
				<p> Visiting Your Page: <?php echo $visiting_your_page; ?></p>

				<p> <?php echo $logged_in_user; ?></p>
				
				
				
 			</div>			

		</div>		
		
		<!-- Include all JS Files -->
		<?php include_once('include_components/links_footer.php'); ?>			
	
	</body>
</html>







