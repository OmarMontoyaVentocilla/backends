<?php

namespace App\Http\Controllers;

use App\Models\PlanesLimit;
use Illuminate\Http\Request;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;
use Illuminate\Validation\ValidationException;

class PlanesLimitController extends Controller
{
    use ApiResponse;

    public function index(Request $request)
    {
      
        $planlimit=PlanesLimit::join('limits','planes_limit.idLimit','=','limits.id')
                    ->join('plans','planes_limit.idPlan','=','plans.id')    
                    ->select('planes_limit.id','limits.id','plans.id','limits.name as nombreLimite',
                    'limits.value as valorLimite',
                    'plans.name as nombrePlan', 'plans.priceplan as precioPlan',
                    )
                    ->where('planes_limit.estado','1')->get();
        return $this->successResponse($planlimit);
    }

    public function store(Request $request)
    {   
        $rules = [
            'idLimit' => 'required',
            'idPlan' => 'required',
            'estado' => 'required'
        ];

        $this->validate($request, $rules);

        $planLimit = PlanesLimit::create($request->all());

        return $this->successResponse($planLimit, Response::HTTP_CREATED);
    }

    public function show($planLimit)
    {
        $planLimit = PlanesLimit::findOrFail($planLimit);

        return $this->successResponse($planLimit, Response::HTTP_OK);
    }
    
    public function update(Request $request, $planLimit)
    { 
        $rules = [
        'idLimit' => 'required',
        'idPlan' => 'required',
        'estado' => 'required'
        ];
        $this->validate($request, $rules);

        $planLimit = PlanesLimit::findOrFail($planLimit);
        $planLimit->fill($request->all());
        $planLimit->save();

        return $this->successResponse($planLimit);
    }

    public function destroy($planLimit)
    {
        $planLimit = PlanesLimit::findOrFail($planLimit);
        $planLimit->delete();

        return $this->successResponse($planLimit);
    }

}
