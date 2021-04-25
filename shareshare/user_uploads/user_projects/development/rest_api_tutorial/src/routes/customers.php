<?php
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

//http://localhost/sites/rest_api_tutorial/public/index.php/api/customers
$app = new \Slim\App;


$app->get('/api/customers', function (Request $request, Response $response) {
  echo "custe";
	//$name = $args['name'];
    //$response->getBody()->write("Hello, $name");

    //return $response;
});

/*

//Get all customers 
$app->get('/hello/{name}', function (Request $request, Response $response, array $args) {
    $name = $args['name'];
    $response->getBody()->write("Hello, $name");

    return $response;
});

*/