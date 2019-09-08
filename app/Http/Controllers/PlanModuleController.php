<?php

namespace App\Http\Controllers;

use App\Models\PlanModule;

use Illuminate\Http\Request;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;
use Illuminate\Validation\ValidationException;

class PlanModuleController extends Controller
{
    use ApiResponse;

    public function index(Request $request)
    {
        $plan = PlanModule::where('estado',1)->get();
        return $this->successResponse($plan);
    }

    public function store(Request $request)
    { 
        $rules = [
            'name' => 'required',
            'estado' => 'required'
        ];

        $this->validate($request, $rules);

        $plan = PlanModule::create($request->all());

        return $this->successResponse($plan, Response::HTTP_CREATED);
    }

    public function show($plan)
    {
        $plan = PlanModule::findOrFail($plan);

        return $this->successResponse($plan, Response::HTTP_OK);
    }
    
    public function update(Request $request, $plan)
    {
        $rules = [
            'name' => 'required',
            'estado' => 'required'
        ];
        $this->validate($request, $rules);

        $plan = PlanModule::findOrFail($plan);
        $plan->fill($request->all());
        $plan->save();

        return $this->successResponse($plan);
    }

    public function destroy($plan)
    {
        $plan = PlanModule::findOrFail($plan);
        $plan->delete();

        return $this->successResponse($plan);
    }

}
