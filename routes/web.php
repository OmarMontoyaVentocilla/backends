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

$router->group(['prefix' => 'settings-plan'], function () use ($router) {

    $router->get('/', 'PlanSettingsController@index');
    $router->post('/', 'PlanSettingsController@store');
    $router->get('{limits}', 'PlanSettingsController@show');
    $router->put('{limits}', 'PlanSettingsController@update');
    $router->delete('{limits}', 'PlanSettingsController@destroy');

});

$router->group(['prefix' => 'plan-limit'], function () use ($router) {

    $router->get('/', 'PlanesLimitController@index');
    $router->post('/', 'PlanesLimitController@store');
    $router->get('{plan-limit}', 'PlanesLimitController@show');
    $router->put('{plan-limit}', 'PlanesLimitController@update');
    $router->delete('{plan-limit}', 'PlanesLimitController@destroy');

});





