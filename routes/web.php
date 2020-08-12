<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/


$router->group(['middleware'=>'auth'], function () use  ($router){

    $router->get('/test', 'AuthController@test');    
});


$router->post('/login', 'AuthController@login');
$router->post('/register', 'AuthController@store');
$router->post('/logout', 'AuthController@logout');
$router->post('/refresh', 'AuthController@refresh');
