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




//UBIGEOS ROUTES
$router->group(['prefix' => 'ubigeos'], function () use ($router) {

    $router->get('/', 'AddressController@index');
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

$router->group(['middleware'=>'auth'], function () use  ($router){
   
    $router->get('/test', 'AuthController@test');    
});


$router->post('/login', 'AuthController@login');
$router->post('/register', 'AuthController@store');
$router->post('/logout', 'AuthController@logout');
$router->post('/refresh', 'AuthController@refresh');


$router->group(['prefix' => 'tiposdocumento'], function () use ($router) {

    $router->get('/', 'TipoDocumentoController@index');
});

$router->group(['prefix' => 'tdocomprobante'], function () use ($router) {

    $router->get('/', 'TipoDocumentoComprobanteController@index');
});

$router->group(['prefix' => 'families'], function () use ($router) {

    $router->get('/', 'FamilyController@index');
    $router->post('/', 'FamilyController@store');
    $router->get('{families}', 'FamilyController@show');
    $router->put('{families}', 'FamilyController@update');
    $router->delete('{families}', 'FamilyController@destroy');

});

$router->group(['prefix' => 'subfamilies'], function () use ($router) {

    $router->get('/', 'SubFamilyController@index');
    $router->post('/', 'SubFamilyController@store');
    $router->get('{subfamilies}', 'SubFamilyController@show');
    $router->put('{subfamilies}', 'SubFamilyController@update');
    $router->delete('{subfamilies}', 'SubFamilyController@destroy');

});

$router->group(['prefix' => 'unitmesure'], function () use ($router) {

    $router->get('/', 'UnitOfMeasureController@index');
    $router->post('/', 'UnitOfMeasureController@store');
    $router->get('{unitmesure}', 'UnitOfMeasureController@show');
    $router->put('{unitmesure}', 'UnitOfMeasureController@update');
    $router->delete('{unitmesure}', 'UnitOfMeasureController@destroy');
});

$router->group(['prefix' => 'bank'], function () use ($router) {

    $router->get('/', 'BankController@index');
    $router->post('/', 'BankController@store');
    $router->get('{bank}', 'BankController@show');
    $router->put('{bank}', 'BankController@update');
    $router->delete('{bank}', 'BankController@destroy');
});

$router->group(['prefix' => 'permission'], function () use ($router) {

    $router->get('/', 'PermissionController@index');
    $router->post('/', 'PermissionController@store');
    $router->get('{permission}', 'PermissionController@show');
    $router->put('{permission}', 'PermissionController@update');
    $router->delete('{permission}', 'PermissionController@destroy');
});


$router->group(['prefix' => 'payment-vocuher'], function () use ($router) {

    $router->get('/', 'PaymentVoucherController@index');
    $router->post('/', 'PaymentVoucherController@store');
    $router->get('{payment-vocuher}', 'PaymentVoucherController@show');
    $router->put('{payment-vocuher}', 'PaymentVoucherController@update');
    $router->delete('{payment-vocuher}', 'PaymentVoucherController@destroy');
});


$router->group(['prefix' => 'payment-method'], function () use ($router) {

    $router->get('/', 'PaymentMethodController@index');
    $router->post('/', 'PaymentMethodController@store');
    $router->get('{payment-method}', 'PaymentMethodController@show');
    $router->put('{payment-method}', 'PaymentMethodController@update');
    $router->delete('{payment-method}', 'PaymentMethodController@destroy');
});


$router->group(['prefix' => 'payment-status'], function () use ($router) {

    $router->get('/', 'PaymentStatusController@index');
    $router->post('/', 'PaymentStatusController@store');
    $router->get('{payment-status}', 'PaymentStatusController@show');
    $router->put('{payment-status}', 'PaymentStatusController@update');
    $router->delete('{payment-status}', 'PaymentStatusController@destroy');
});

$router->group(['prefix' => 'type-docustomer'], function () use ($router) {

    $router->get('/', 'TypeDocumentCustomerController@index');
    $router->post('/', 'TypeDocumentCustomerController@store');
    $router->get('{type-docustomer}', 'TypeDocumentCustomerController@show');
    $router->put('{type-docustomer}', 'TypeDocumentCustomerController@update');
    $router->delete('{type-docustomer}', 'TypeDocumentCustomerController@destroy');
});


$router->group(['prefix' => 'unitpeso'], function () use ($router) {

    $router->get('/', 'UnitOfWeightController@index');
    $router->post('/', 'UnitOfWeightController@store');
    $router->get('{unitpeso}', 'UnitOfWeightController@show');
    $router->put('{unitpeso}', 'UnitOfWeightController@update');
    $router->delete('{unitpeso}', 'UnitOfWeightController@destroy');

});

$router->group(['prefix' => 'presentacion'], function () use ($router) {

    $router->get('/', 'PresentationController@index');
    $router->post('/', 'PresentationController@store');
    $router->get('{presentacion}', 'PresentationController@show');
    $router->put('{presentacion}', 'PresentationController@update');
    $router->delete('{presentacion}', 'PresentationController@destroy');

});

$router->group(['prefix' => 'plans'], function () use ($router) {

    $router->get('/', 'PlanController@index');
    $router->post('/', 'PlanController@store');
    $router->get('{plans}', 'PlanController@show');
    $router->put('{plans}', 'PlanController@update');
    $router->delete('{plans}', 'PlanController@destroy');

});


$router->group(['prefix' => 'plan-modules'], function () use ($router) {

    $router->get('/', 'PlanModuleController@index');
    $router->post('/', 'PlanModuleController@store');
    $router->get('{plans}', 'PlanModuleController@show');
    $router->put('{plans}', 'PlanModuleController@update');
    $router->delete('{plans}', 'PlanModuleController@destroy');

});


$router->group(['prefix' => 'limits'], function () use ($router) {

    $router->get('/', 'LimitController@index');
    $router->post('/', 'LimitController@store');
    $router->get('{limits}', 'LimitController@show');
    $router->put('{limits}', 'LimitController@update');
    $router->delete('{limits}', 'LimitController@destroy');

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