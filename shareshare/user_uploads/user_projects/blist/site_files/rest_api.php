<?php
//Include Page Header 
require_once('../../functions/page_header.php');

header('Content-Type: application/json');

//JSON 1
$cars = array("Volvo", "BMW", "Toyota");
$cars = json_encode($cars);

echo $cars;

?>