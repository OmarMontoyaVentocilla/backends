<?php

namespace App\Http\Controllers;

use App\Models\UnitOfMeasure;

use Illuminate\Http\Request;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;
use Illuminate\Validation\ValidationException;

class UnitOfMeasureController extends Controller
{
    use ApiResponse;

    public function index(Request $request)
    {
        $unitOfMeasure = UnitOfMeasure::get();

        return $this->successResponse($unitOfMeasure);
    }

    public function store(Request $request)
    {   
        $rules = [
            'abreviatura' => 'required|unique:unit_of_measures',
            'equivalencia' => 'required',
            'estado' => 'required'
        ];

        $this->validate($request, $rules);

        $unitOfMeasure = UnitOfMeasure::create($request->all());

        return $this->successResponse($unitOfMeasure, Response::HTTP_CREATED);
    }

    public function show($unitOfMeasure)
    {
        $unitOfMeasure = UnitOfMeasure::findOrFail($unitOfMeasure);

        return $this->successResponse($unitOfMeasure, Response::HTTP_OK);
    }
    
    public function update(Request $request, $unitOfMeasure)
    {
        $rules = [
            'abreviatura' => 'required|unique:unit_of_measures,abreviatura,'.$unitOfMeasure,
            'equivalencia' => 'required',
            'estado' => 'required'
        ];
        $this->validate($request, $rules);

        $unitOfMeasure = UnitOfMeasure::findOrFail($unitOfMeasure);
        $unitOfMeasure->fill($request->all());
        $unitOfMeasure->save();

        return $this->successResponse($unitOfMeasure);
    }

    public function destroy($unitOfMeasure)
    {
        $unitOfMeasure = UnitOfMeasure::findOrFail($unitOfMeasure);
        $unitOfMeasure->delete();

        return $this->successResponse($unitOfMeasure);
    }

}
