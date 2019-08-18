<?php

namespace App\Http\Controllers;

use App\Models\UnitOfWeight;

use Illuminate\Http\Request;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;
use Illuminate\Validation\ValidationException;

class UnitOfWeightController extends Controller
{
    use ApiResponse;

    public function index(Request $request)
    {
        $unitOfWeight = UnitOfWeight::get();

        return $this->successResponse($unitOfWeight);
    }

    public function store(Request $request)
    {   
        $rules = [
            'abreviatura' => 'required|unique:unit_of_weights',
            'equivalencia' => 'required',
            'estado' => 'required'
        ];

        $this->validate($request, $rules);

        $unitOfWeight = UnitOfWeight::create($request->all());

        return $this->successResponse($unitOfWeight, Response::HTTP_CREATED);
    }

    public function show($unitOfWeight)
    {
        $unitOfWeight = UnitOfWeight::findOrFail($unitOfWeight);

        return $this->successResponse($unitOfWeight, Response::HTTP_OK);
    }
    
    public function update(Request $request, $unitOfWeight)
    {
        $rules = [
            'abreviatura' => 'required|unique:unit_of_weights,abreviatura,'.$unitOfWeight,
            'equivalencia' => 'required',
            'estado' => 'required'
        ];
        $this->validate($request, $rules);

        $unitOfWeight = UnitOfWeight::findOrFail($unitOfWeight);
        $unitOfWeight->fill($request->all());
        $unitOfWeight->save();

        return $this->successResponse($unitOfWeight);
    }

    public function destroy($unitOfWeight)
    {
        $unitOfWeight = UnitOfWeight::findOrFail($unitOfWeight);
        $unitOfWeight->delete();

        return $this->successResponse($unitOfWeight);
    }

}
