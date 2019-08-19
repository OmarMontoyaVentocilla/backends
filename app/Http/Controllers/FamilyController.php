<?php

namespace App\Http\Controllers;

use App\Models\Family;

use Illuminate\Http\Request;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;
use Illuminate\Validation\ValidationException;

class FamilyController extends Controller
{
    use ApiResponse;

    public function index(Request $request)
    {
        $families = Family::where('estado',1)->get();
        return $this->successResponse($families);
    }

    public function store(Request $request)
    { 
        $rules = [
            'descripcion' => 'required|unique:families',
            'estado' => 'required'
        ];

        $this->validate($request, $rules);

        $families = Family::create($request->all());

        return $this->successResponse($families, Response::HTTP_CREATED);
    }

    public function show($family)
    {
        $family = Family::findOrFail($family);

        return $this->successResponse($family, Response::HTTP_OK);
    }
    
    public function update(Request $request, $family)
    {
        $rules = [
            'descripcion' => 'required|unique:families,descripcion,'.$family,
            'estado' => 'required'
        ];
        $this->validate($request, $rules);

        $family = Family::findOrFail($family);
        $family->fill($request->all());
        $family->save();

        return $this->successResponse($family);
    }

    public function destroy($family)
    {
        $family = Family::findOrFail($family);
        $family->delete();

        return $this->successResponse($family);
    }

}
