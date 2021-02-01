<?php
//DEFINE CONSTANTS 
define("MYSQL_PASS", "");
define("DEBUG", False);
//define('ROOT', dirname(__FILE__));

/** SHARESHARE **/ 
//WAMP 
$host		= "localhost";
$user_name	= "root";
$password 	= "";
$dbname 	= "shareshare";

$time_zone = "America/Los_Angeles";
$master_site = "shareshare";
$site_link_register = "http://localhost/sites/template/site_files/register.php";
$site_link = "http://localhost/sites/template/";

define("MASTER_SITE", "shareshare");
define("SITE_LINK", "http://localhost/sites/");
define("UPLOAD_PATH", "C:/wamp/www/sites/template");
define("SITE_ROOT", "http://localhost/sites/template/");
define("LOGIN_REDIRECT", "http://localhost/sites/template/");
define("CODE_ROOT", "../");
define("FUNCTIONS_FOLDER", "../../functions/");
define("FILE_UPLOAD", "C:/wamp/www/sites/user_uploads/user_file_uploads/");
define("POST_UPLOAD", "C:/wamp/www/sites/user_uploads/post_images/");
define("POST_PHOTO_DISPLAY", "../../user_uploads/post_images/");
define("FILE_UPLOAD_DISPLAY", "../../user_uploads/user_file_uploads/");
define("TEMP_ARTICLE_UPLOAD", "C:/wamp/www/sites/user_uploads/temp_article_image/");
define("USER_IMAGE", "../../user_uploads/user_image/");
define("USER_UPLOADS", "../user_uploads/");
define("SITE_IMAGES", "../../images/");
define("FAVICONS", "../../user_uploads/favicons/");
define("POST_PHOTO_UPLOAD", "../../user_uploads/post_images/");
define("USER_FILE_UPLOADS", "../../user_uploads/user_file_uploads/");
define("RELATIVE_FILE_PATH", "../../user_uploads\user_file_uploads\/");
define("FAVICON", "C:/wamp/www/sites/user_uploads/favicons/");
define("E_KEY", "242BC3A24F0F0CC29DC2B1C39A2BC2B62D4F6631307EC290C393C3A90E1DC3B41DC2BBC38FC3B85D31E282AC2BE280A151");
define("IV", "C39DC3A6C3A7C5BD57C3A4C3A816C3A5264DC5B82144C2AF");
define("IMAGE", "../../images/");
define("BACKGROUND_IMAGE", "../../images/background/");
define("ICON", "../../images/icons/");
define("SITE_IMAGE", "../../images/site_images/");


//ONID 
/*
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
*/

//cd ~/public_html
//cd sites
//find ./ -type d -exec chmod 755 {} \;
//find ./ -type f -exec chmod 644 {} \;
	
//LIVE SERVER *Godaddy shareshare.co domain
//http://shareshare.co/shareshare/site_files/wall.php
/*
$host		= "localhost";
$user_name	= "charles-db";
$password 	= "gCtLRbXMWWS2SwNg";
$dbname 	= "shareshare";
$time_zone = "America/Los_Angeles";
$master_site = "shareshare";
$site_link_register = "http://shareshare.co/template/site_files/register.php";
$site_link = "http://shareshare.co/template/";

define("MASTER_SITE", "shareshare");
define("SITE_LINK", "http://shareshare.co/template/");
define("UPLOAD_PATH", "/home/californiachris/public_html/shareshare.co/");
define("SITE_ROOT", "http://shareshare.co/shareshare/");
define("LOGIN_REDIRECT", "http://www.shareshare.co/");
define("CODE_ROOT", "../");
define("FUNCTIONS_FOLDER", "../../functions/");
define("FILE_UPLOAD", "/home/californiachris/public_html/shareshare.co/user_uploads/user_file_uploads/");
define("POST_UPLOAD", "/home/californiachris/public_html/shareshare.co/user_uploads/post_images/");
define("POST_PHOTO_DISPLAY", "../../user_uploads/post_images/");
define("FILE_UPLOAD_DISPLAY", "../../user_uploads/user_file_uploads/");
define("TEMP_ARTICLE_UPLOAD", "/home/californiachris/public_html/shareshare.co/user_uploads/temp_article_image/");
define("USER_IMAGE", "../../user_uploads/user_image/");
define("USER_UPLOADS", "../user_uploads/");
define("SITE_IMAGES", "../../images/");
define("FAVICONS", "../../user_uploads/favicons/");
define("USER_FILE_UPLOADS", "../../user_uploads/user_file_uploads/");
define("RELATIVE_FILE_PATH", "../../user_uploads\user_file_uploads\/");
define("FAVICON", "/home/californiachris/public_html/shareshare.co/sites/user_uploads/favicons/");
define("IMAGE", "../../images/");
define("BACKGROUND_IMAGE", "../../images/background/");
define("ICON", "../../images/icons/");
define("E_KEY", "242BC3A24F0F0CC29DC2B1C39A2BC2B62D4F6631307EC290C393C3A90E1DC3B41DC2BBC38FC3B85D31E282AC2BE280A151");
define("IV", "C39DC3A6C3A7C5BD57C3A4C3A816C3A5264DC5B82144C2AF");

*/

//LIVE SERVER *Godaddy mywishlists.co domain
/*
$host		= "localhost";
$user_name	= "charles-db";
$password 	= "gCtLRbXMWWS2SwNg";
$dbname 	= "my_wishlist";
define("UPLOAD_PATH", "/home/californiachris/public_html/mywishlists.co/");
define("SITE_ROOT", "http://mywishlists.co/wishlist/");
define("LOGIN_REDIRECT", "http://mywishlists.co/");
define("CODE_ROOT", "../");
define("FUNCTIONS_FOLDER", "../../functions/");
define("FILE_UPLOAD", "/home/californiachris/public_html/mywishlists.co/user_uploads/user_file_uploads/");
define("POST_UPLOAD", "/home/californiachris/public_html/mywishlists.co/user_uploads/post_images/");
define("POST_PHOTO_DISPLAY", "../../user_uploads/post_images/");
define("FILE_UPLOAD_DISPLAY", "../../user_uploads/user_file_uploads/");
define("TEMP_ARTICLE_UPLOAD", "/home/californiachris/public_html/mywishlists.co/user_uploads/temp_article_image/");
define("USER_IMAGE", "../../user_uploads/user_image/");
define("USER_UPLOADS", "../user_uploads/");
define("SITE_IMAGES", "../../images/");
define("FAVICONS", "../../user_uploads/favicons/");
define("USER_FILE_UPLOADS", "../../user_uploads/user_file_uploads/");
define("RELATIVE_FILE_PATH", "../../user_uploads\user_file_uploads\/");
define("FAVICON", "/home/californiachris/public_html/mywishlists.co/sites/user_uploads/favicons/");
define("E_KEY", "+âO±Ú+¶-Of10~Óéô»Ïø]1€+‡Q");
define("IV", "ÝæçŽWäèå&MŸ!D¯");
*/


//ONID
/*
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
define("POST_PHOTO_DISPLAY", "../../user_uploads/post_images/");
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
*/

//Set Up Encryption Variables 
//$key_size = 32; // 256 bits
//$encryption_key = openssl_random_pseudo_bytes($key_size, $strong);
//$iv_size = 16; // 128 bits
//$iv = openssl_random_pseudo_bytes($iv_size, $strong);
?>
