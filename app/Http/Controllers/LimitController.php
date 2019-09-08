<?php

namespace App\Http\Controllers;

use App\Models\Limit;

use Illuminate\Http\Request;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;
use Illuminate\Validation\ValidationException;

class LimitController extends Controller
{
    use ApiResponse;

    public function index(Request $request)
    {
        $limit = Limit::where('estado',1)->get();
        return $this->successResponse($limit);
    }

    public function store(Request $request)
    { 
        $rules = [
            'name' => 'required',
            'value' => 'required',
            'estado' => 'required'
        ];

        $this->validate($request, $rules);

        $limit = Limit::create($request->all());

        return $this->successResponse($limit, Response::HTTP_CREATED);
    }

    public function show($limit)
    {
        $limit = Limit::findOrFail($limit);

        return $this->successResponse($limit, Response::HTTP_OK);
    }
    
    public function update(Request $request, $limit)
    {
        $rules = [
            'name' => 'required',
            'value' => 'required',
            'estado' => 'required'
        ];
        $this->validate($request, $rules);

        $limit = Limit::findOrFail($limit);
        $limit->fill($request->all());
        $limit->save();

        return $this->successResponse($limit);
    }

    public function destroy($limit)
    {
        $limit = Limit::findOrFail($limit);
        $limit->delete();

        return $this->successResponse($limit);
    }

}
