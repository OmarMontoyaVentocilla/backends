<?php

namespace App\Http\Controllers;

use App\Models\Presentation;

use Illuminate\Http\Request;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;
use Illuminate\Validation\ValidationException;

class PresentationController extends Controller
{
    use ApiResponse;

    public function index(Request $request)
    {
        $presentations = Presentation::get();

        return $this->successResponse($presentations);
    }

    public function store(Request $request)
    {
        $rules = [
            'nombre' => 'required|unique:presentations',
            'estado' => 'required'
        ];

        $this->validate($request, $rules);

        $presentations = Presentation::create($request->all());

        return $this->successResponse($presentations, Response::HTTP_CREATED);
    }

    public function show($presentations)
    {
        $presentations = Presentation::findOrFail($presentations);

        return $this->successResponse($presentations, Response::HTTP_OK);
    }
    
    public function update(Request $request, $presentation)
    {
        $rules = [
            'nombre' => 'required|unique:presentations,nombre,'.$presentation,
            'estado' => 'required'
        ];
        $this->validate($request, $rules);

        $presentation = Presentation::findOrFail($presentation);
        $presentation->fill($request->all());
        $presentation->save();

        return $this->successResponse($presentation);
    }

    public function destroy($presentation)
    {
        $presentation = Presentation::findOrFail($presentation);
        $presentation->delete();

        return $this->successResponse($presentation);
    }

}
