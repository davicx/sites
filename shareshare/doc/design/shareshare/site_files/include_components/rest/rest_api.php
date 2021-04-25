<?php
header("Content-Type: application/json; charset=UTF-8");

//JSON 1: Example Posts
$post_one = array("id"=>"1", "title"=>"David", "content"=>"First Post", "userImage"=>"david.jpg");
$post_two = array("id"=>"2", "title"=>"Hello", "content"=>"Hi there!", "userImage"=>"matt.jpg");
$post_three = array("id"=>"3", "title"=>"Kite", "content"=>"We should fly a Kite", "userImage"=>"james.jpg");
$posts = array($post_one, $post_two, $post_three);

$posts_json = json_encode($posts);

//echo $posts_json;

//JSON 2: Simple JSON 
$post_one = array("id"=>"1", "title"=>"David", "content"=>"First Post", "userImage"=>"david.jpg");
$posts_json = json_encode($post_one);

//echo $posts_json;
$item_one = array("id"=>"1", "name"=>"Apples", "price"=>"$2");
$item_two = array("id"=>"2", "name"=>"Peaches", "price"=>"$5");

$items = array($item_one, $item_two);

$items_json = json_encode($items);

echo $items_json;
 
?>