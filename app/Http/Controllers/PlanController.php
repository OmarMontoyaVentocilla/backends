<?php

namespace App\Http\Controllers;

use App\Models\Plan;

use Illuminate\Http\Request;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;
use Illuminate\Validation\ValidationException;

class PlanController extends Controller
{
    use ApiResponse;

    public function index(Request $request)
    {
        $plan = Plan::where('estado',1)->get();
        return $this->successResponse($plan);
    }

    public function store(Request $request)
    { 
        $rules = [
            'name' => 'required',
            'priceplan' => 'required',
            'estado' => 'required'
        ];

        $this->validate($request, $rules);

        $plan = Plan::create($request->all());

        return $this->successResponse($plan, Response::HTTP_CREATED);
    }

    public function show($plan)
    {
        $plan = Plan::findOrFail($plan);

        return $this->successResponse($plan, Response::HTTP_OK);
    }
    
    public function update(Request $request, $plan)
    {
        $rules = [
            'name' => 'required',
            'priceplan' => 'required',
            'estado' => 'required'
        ];
        $this->validate($request, $rules);

        $plan = Plan::findOrFail($plan);
        $plan->fill($request->all());
        $plan->save();

        return $this->successResponse($plan);
    }

    public function destroy($plan)
    {
        $plan = Plan::findOrFail($plan);
        $plan->delete();

        return $this->successResponse($plan);
    }

}
