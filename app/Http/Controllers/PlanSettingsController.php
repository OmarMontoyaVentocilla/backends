<?php

namespace App\Http\Controllers;

use App\Models\PlanSettings;
use Illuminate\Http\Request;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;
use Illuminate\Validation\ValidationException;

class PlanSettingsController extends Controller
{
    use ApiResponse;

    public function index(Request $request)
    {
        $settings = PlanSettings::where('estado',1)->get();
        return $this->successResponse($settings);
    }

    public function store(Request $request)
    { 
        $rules = [
            'description' => 'required',
            'value'       => 'required',
            'estado'      => 'required'
        ];

        $this->validate($request, $rules);

        $settings = PlanSettings::create($request->all());

        return $this->successResponse($settings, Response::HTTP_CREATED);
    }

    public function show($settings)
    {
        $settings = PlanSettings::findOrFail($settings);

        return $this->successResponse($settings, Response::HTTP_OK);
    }
    
    public function update(Request $request, $settings)
    {
        $rules = [
            'description' => 'required',
            'value'       => 'required',
            'estado'      => 'required'
        ];
        $this->validate($request, $rules);

        $settings = PlanSettings::findOrFail($settings);
        $settings->fill($request->all());
        $settings->save();

        return $this->successResponse($settings);
    }

    public function destroy($settings)
    {
        $settings = PlanSettings::findOrFail($settings);
        $settings->delete();
        return $this->successResponse($settings);
    }

}
