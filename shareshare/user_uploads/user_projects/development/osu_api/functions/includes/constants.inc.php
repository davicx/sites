<?php
//DEFINE CONSTANTS 
define("MYSQL_PASS", "");
define("DEBUG", False);
//define('ROOT', dirname(__FILE__));

/** MAIN **/ 
//WAMP 
$host		= "REMOVED";
$user_name	= "REMOVED";
$password 	= "";
$dbname 	= "REMOVED";

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
define("USER_FILE_UPLOADS", "../../user_uploads/user_file_uploads/");
define("RELATIVE_FILE_PATH", "../../user_uploads\user_file_uploads\/");
define("FAVICON", "C:/wamp/www/sites/user_uploads/favicons/");
define("E_KEY", "REMOVED");
define("IV", "REMOVED");
define("IMAGE", "../../images/");
define("BACKGROUND_IMAGE", "../../images/background/");
define("ICON", "../../images/icons/");
define("SITE_IMAGE", "../../images/site_images/");



//LIVE SERVER *Godaddy shareshare.co domain
//http://shareshare.co/shareshare/site_files/wall.php
/*
$host		= "REMOVED";
$user_name	= "REMOVED";
$password 	= "REMOVED";
$dbname 	= "REMOVED";
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
define("E_KEY", "REMOVED");
define("IV", "REMOVED");

*/

//LIVE SERVER *Godaddy mywishlists.co domain
/*
$host		= "REMOVED";
$user_name	= "REMOVED";
$password 	= "REMOVED";
$dbname 	= "REMOVED";
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
define("E_KEY", "REMOVED);
define("IV", "REMOVED");
*/


//ONID
/*
$host		= "REMOVED";
$user_name	= "REMOVED";
$password 	= "REMOVED";
$dbname 	= "REMOVED";
define("UPLOAD_PATH", "http://people.oregonstate.edu/~vasquezd/");
define("SITE_ROOT", "http://people.oregonstate.edu/~vasquezd/");
define("LOGIN_REDIRECT", "http://people.oregonstate.edu/~vasquezd/sites/shareshare/");
define("CODE_ROOT", "../");
define("UPLOAD_PATH", "C:/wamp/www/sites/shareshare");
//define("SITE_ROOT", "http://localhost/ShareShare/");
define("CODE_ROOT", "../");
define("FUNCTIONS_FOLDER", "../../functions/");
define("FILE_UPLOAD", "C:/wamp/www/sites/user_uploads/user_file_uploads/");
define("POST_UPLOAD", "C:/wamp/www/sites/user_uploads/post_images/");
define("POST_PHOTO_DISPLAY", "../../user_uploads/post_images/");
define("FILE_UPLOAD_DISPLAY", "../../user_uploads/user_file_uploads/");
define("TEMP_ARTICLE_UPLOAD", "C:/wamp/www/sites/user_uploads/temp_article_image/");
define("USER_IMAGE", "../../user_uploads/user_image/");
define("USER_UPLOADS", "../user_uploads/");
*/

//Set Up Encryption Variables 
//$key_size = 32; // 256 bits
//$encryption_key = openssl_random_pseudo_bytes($key_size, $strong);
//$iv_size = 16; // 128 bits
//$iv = openssl_random_pseudo_bytes($iv_size, $strong);
?>
