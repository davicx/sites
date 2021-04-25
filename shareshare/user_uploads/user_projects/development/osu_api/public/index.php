<?php
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

require '../functions/vendor/autoload.php';

$app = new \Slim\App;
$app->get('/user/{name}', function (Request $request, Response $response, array $args) {
    $name = $args['name'];
    $response->getBody()->write("Hello, $name");

    return $response;
});

//User Routes 
require '../app/api/user/User.php';
require '../app/api/user/UserFriends.php';

$app->run();