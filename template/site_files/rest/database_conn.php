<?php 

global $conn; 
$host		= "oniddb.cws.oregonstate.edu";
$user_name	= "vasquezd-db";
$password 	= "gCtLRbXMWWS2SwNg";
$dbname 	= "vasquezd-db";

$time_zone = "America/Los_Angeles";
$master_site = "shareshare";
$site_link_register = "http://people.oregonstate.edu/~vasquezd/sites/template/site_files/register.php";
$site_link = "http://people.oregonstate.edu/~vasquezd/sites/template/";

define("MASTER_SITE", "shareshare");
define("SITE_LINK", "http://people.oregonstate.edu/~vasquezd/sites/");
define("UPLOAD_PATH", "http://people.oregonstate.edu/~vasquezd/sites/template");
define("SITE_ROOT", "http://people.oregonstate.edu/~vasquezd/sites/template/");
define("LOGIN_REDIRECT", "http://people.oregonstate.edu/~vasquezd/sites/template/");
define("CODE_ROOT", "../");
define("FUNCTIONS_FOLDER", "../../functions/");
define("FILE_UPLOAD", "http://people.oregonstate.edu/~vasquezd/sites/user_uploads/user_file_uploads/");
define("POST_UPLOAD", "http://people.oregonstate.edu/~vasquezd/sites/user_uploads/post_images/");
define("POST_PHOTO_UPLOAD", "../../user_uploads/post_images/");
define("FILE_UPLOAD_DISPLAY", "../../user_uploads/user_file_uploads/");
define("TEMP_ARTICLE_UPLOAD", "http://people.oregonstate.edu/~vasquezd/sites/user_uploads/temp_article_image/");
define("USER_IMAGE", "../../user_uploads/user_image/");
define("USER_UPLOADS", "../user_uploads/");
define("SITE_IMAGES", "../../images/");
define("FAVICONS", "../../user_uploads/favicons/");
define("USER_FILE_UPLOADS", "../../user_uploads/user_file_uploads/");
define("RELATIVE_FILE_PATH", "../../user_uploads\user_file_uploads\/");
define("FAVICON", "http://people.oregonstate.edu/~vasquezd/sites/user_uploads/favicons/");
define("E_KEY", "242BC3A24F0F0CC29DC2B1C39A2BC2B62D4F6631307EC290C393C3A90E1DC3B41DC2BBC38FC3B85D31E282AC2BE280A151");
define("IV", "C39DC3A6C3A7C5BD57C3A4C3A816C3A5264DC5B82144C2AF");
define("IMAGE", "../../images/");
define("BACKGROUND_IMAGE", "../../images/background/");
define("ICON", "../../images/icons/");
define("SITE_IMAGE", "../../images/site_images/");

//CONNECTION
//Database Connection 
$conn = mysqli_connect($host, $user_name, $password , $dbname);

//Check connection
if (mysqli_connect_errno()) {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
}



?>