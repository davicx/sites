<?php
require_once('constants.inc.php');
require_once(CODE_ROOT . '../functions/functions.php');


// run this script only if the logout button has been clicked
if (isset($_POST['logout'])) {
	session_start();

	$logged_in_user = $_POST['logout-user'];
	
	//updateLogoutStatus($logged_in_user); 

  // empty the $_SESSION array
  $_SESSION = array();
  // invalidate the session cookie
  if (isset($_COOKIE[session_name()])) {
	setcookie(session_name(), '', time()-86400, '/');
  }
  // end session and redirect
  session_destroy();


//$site_link = "http://people.oregonstate.edu/~vasquezd/sites/template/site_files/groups_posts.php?group_id=MzIx";
header('Location:'  . $site_link);
exit;
//header('Location:'  . SITE_ROOT);
//header('Location: http://localhost/shareshare/index.php');
//header('Location: http://dev.mysharesquare.com/index.php');



}
?>