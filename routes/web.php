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

use Illuminate\Http\Request;


//Species Routes
$router->group(['prefix' => 'species'], function () use ($router) {

    $router->get('/', 'SpeciesController@index');
    $router->post('/', 'SpeciesController@store');
    $router->get('{species}', 'SpeciesController@show');
    $router->put('{species}', 'SpeciesController@update');
    $router->delete('{species}', 'SpeciesController@destroy');

});

//Breeds Routes
$router->group(['prefix' => 'breeds'], function () use ($router) {

    $router->get('/', 'BreedsController@index');
    $router->post('/', 'BreedsController@store');
    $router->get('{breed}', 'BreedsController@show');
    $router->put('{breed}', 'BreedsController@update');
    $router->delete('{breed}', 'BreedsController@destroy');
});

//UBIGEOS ROUTES
$router->group(['prefix' => 'ubigeos'], function () use ($router) {

    $router->get('/', 'UbigeosController@index');
});

//PROOVEDOR ROUTES
$router->group(['prefix' => 'proovedor'], function () use ($router) {

    $router->get('/', 'ProveedorController@index');
    $router->post('/', 'ProveedorController@store');
    $router->get('{proovedor}', 'ProveedorController@show');
    $router->put('{proovedor}', 'ProveedorController@update');
    $router->delete('{proovedor}', 'ProveedorController@destroy');
});

/*ESTO ES LO QUE IMPORTA*/
$router->group(['prefix' => 'tiposdocumento'], function () use ($router) {

    $router->get('/', 'TipoDocumentoController@index');
});

$router->group(['prefix' => 'tdocomprobante'], function () use ($router) {

    $router->get('/', 'TipoDocumentoComprobanteController@index');
});

$router->group(['prefix' => 'modopago'], function () use ($router) {

    $router->get('/', 'ModoPagoController@index');
});

$router->group(['prefix' => 'cliente'], function () use ($router) {

    $router->get('/', 'ClienteController@index');
    $router->post('/', 'ClienteController@store');
    $router->get('{cliente}', 'ClienteController@show');
    $router->put('{cliente}', 'ClienteController@update');
    $router->delete('{cliente}', 'ClienteController@destroy');
});

$router->group(['prefix' => 'caja'], function () use ($router) {

    $router->get('/', 'CajaController@index');
    $router->post('/', 'CajaController@store');
    $router->get('{caja}', 'CajaController@show');
    $router->put('{caja}', 'CajaController@update');
    $router->delete('{caja}', 'CajaController@destroy');
});

$router->group(['prefix' => 'docorrelativo'], function () use ($router) {

    $router->get('/', 'DocumentoCorrelativoController@index');
    $router->post('/', 'DocumentoCorrelativoController@store');
    $router->get('{docorrelativo}', 'DocumentoCorrelativoController@show');
    $router->put('{docorrelativo}', 'DocumentoCorrelativoController@update');
    $router->delete('{docorrelativo}', 'DocumentoCorrelativoController@destroy');
});

$router->group(['prefix' => 'historialcaja'], function () use ($router) {

    $router->get('/', 'HistorialCajaController@index');
}); 