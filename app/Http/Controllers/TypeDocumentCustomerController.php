<?php

namespace App\Http\Controllers;

use App\Models\TypeDocumentCustomer;

use Illuminate\Http\Request;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;
use Illuminate\Validation\ValidationException;

class TypeDocumentCustomerController extends Controller
{
    use ApiResponse;

    public function index(Request $request)
    {
        $typedocumentcustomer = TypeDocumentCustomer::where('estado',1)->get();
        return $this->successResponse($typedocumentcustomer);
    }

    public function store(Request $request)
    { 
        $rules = [
            'code' => 'required',
            'description' => 'required',
            'estado' => 'required'
        ];

        $this->validate($request, $rules);

        $typedocumentcustomer = TypeDocumentCustomer::create($request->all());

        return $this->successResponse($typedocumentcustomer, Response::HTTP_CREATED);
    }

    public function show($typedocumentcustomer)
    {
        $typedocumentcustomer = TypeDocumentCustomer::findOrFail($typedocumentcustomer);

        return $this->successResponse($typedocumentcustomer, Response::HTTP_OK);
    }
    
    public function update(Request $request, $typedocumentcustomer)
    {
        $rules = [
            'code' => 'required',
            'description' => 'required',
            'estado' => 'required'
        ];
        $this->validate($request, $rules);

        $typedocumentcustomer = TypeDocumentCustomer::findOrFail($typedocumentcustomer);
        $typedocumentcustomer->fill($request->all());
        $typedocumentcustomer->save();

        return $this->successResponse($typedocumentcustomer);
    }

    public function destroy($typedocumentcustomer)
    {
        $typedocumentcustomer = TypeDocumentCustomer::findOrFail($typedocumentcustomer);
        $typedocumentcustomer->delete();

        return $this->successResponse($typedocumentcustomer);
    }

}
