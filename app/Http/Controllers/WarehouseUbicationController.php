<?php

namespace App\Http\Controllers;

use App\Models\WarehouseUbication;

use Illuminate\Http\Request;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;
use Illuminate\Validation\ValidationException;

class WarehouseUbicationController extends Controller
{
    use ApiResponse;

    public function index(Request $request)
    {
        $warehouseUbications = WarehouseUbication::get();

        return $this->successResponse($warehouseUbications);
    }

    public function store(Request $request)
    {  
        $rules = [
            'nombre' => 'required|unique:warehouse_ubications',
            'descripcion' => 'required',
            'estado' => 'required'
        ];

        $this->validate($request, $rules);

        $warehouseUbications = WarehouseUbication::create($request->all());

        return $this->successResponse($warehouseUbications, Response::HTTP_CREATED);
    }

    public function show($warehouseUbications)
    {
        $warehouseUbications = WarehouseUbication::findOrFail($warehouseUbications);

        return $this->successResponse($warehouseUbications, Response::HTTP_OK);
    }
    
    public function update(Request $request, $warehouseUbications)
    {
        $rules = [
            'nombre' => 'required|unique:warehouse_ubications,nombre,'.$warehouseUbications,
            'descripcion' => 'required',
            'estado' => 'required'
        ];
        $this->validate($request, $rules);

        $warehouseUbications = WarehouseUbication::findOrFail($warehouseUbications);
        $warehouseUbications->fill($request->all());
        $warehouseUbications->save();

        return $this->successResponse($warehouseUbications);
    }

    public function destroy($warehouseUbications)
    {
        $warehouseUbications = WarehouseUbication::findOrFail($warehouseUbications);
        $warehouseUbications->delete();

        return $this->successResponse($warehouseUbications);
    }

}
