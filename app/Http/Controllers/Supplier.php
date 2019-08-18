<?php

namespace App\Http\Controllers;

use App\Models\Supplier;

use Illuminate\Http\Request;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;
use Illuminate\Validation\ValidationException;

class SupplierController extends Controller
{
    use ApiResponse;

    public function index(Request $request)
    {
        $suppliers = Supplier::get();

        return $this->successResponse($suppliers);
    }

    public function store(Request $request)
    { 
        $rules = [
            'ruc' => 'required|unique:suppliers',
            'razon_social' => 'required',
            'ubigeo_id' => 'required|exists:address,id',
            'telefono' => 'required',
            'email' => 'required',
            'estado' => 'required'
        ];

        $this->validate($request, $rules);

        $suppliers = Supplier::create($request->all());

        return $this->successResponse($suppliers, Response::HTTP_CREATED);
    }

    public function show($supplier)
    {
        $supplier = Supplier::findOrFail($supplier);

        return $this->successResponse($supplier, Response::HTTP_OK);
    }
    
    public function update(Request $request, $supplier)
    {
        $rules = [
            'ruc' => 'required|unique:suppliers,ruc,'.$supplier,
            'razon_social' => 'required',
            'ubigeo_id' => 'required|exists:address,id',
            'telefono' => 'required',
            'email' => 'required',
            'estado' => 'required'
        ];
        $this->validate($request, $rules);

        $supplier = Supplier::findOrFail($supplier);
        $supplier->fill($request->all());
        $supplier->save();

        return $this->successResponse($supplier);
    }

    public function destroy($supplier)
    {
        $supplier = Supplier::findOrFail($supplier);
        $supplier->delete();

        return $this->successResponse($supplier);
    }

}