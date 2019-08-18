<?php

namespace App\Http\Controllers;

use App\Models\Brand;

use Illuminate\Http\Request;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;
use Illuminate\Validation\ValidationException;

class BrandController extends Controller
{
    use ApiResponse;

    public function index(Request $request)
    {
        $brands = Brand::get();

        return $this->successResponse($brands);
    }

    public function store(Request $request)
    {
        $rules = [
            'nombre' => 'required|unique:brands',
            'subfamilia_id' =>  'required',
            'estado' => 'required'
        ];

        $this->validate($request, $rules);

        $brands = Brand::create($request->all());

        return $this->successResponse($brands, Response::HTTP_CREATED);
    }

    public function show($brand)
    {
        $brand = Brand::findOrFail($brand);

        return $this->successResponse($brand, Response::HTTP_OK);
    }
    
    public function update(Request $request, $brand)
    {
        $rules = [
            'nombre' => 'required|unique:brands,nombre,'.$brand,
            'subfamilia_id' =>  'required',
            'estado' => 'required'
        ];
        $this->validate($request, $rules);

        $brand = Brand::findOrFail($brand);
        $brand->fill($request->all());
        $brand->save();

        return $this->successResponse($brand);
    }

    public function destroy($brand)
    {
        $brand = Brand::findOrFail($brand);
        $brand->delete();

        return $this->successResponse($brand);
    }

}
