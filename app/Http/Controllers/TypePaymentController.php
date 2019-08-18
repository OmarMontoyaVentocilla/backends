<?php

namespace App\Http\Controllers;

use App\Models\TypePayment;

use Illuminate\Http\Request;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;
use Illuminate\Validation\ValidationException;

class TypePaymentController extends Controller
{
    use ApiResponse;

    public function index(Request $request)
    {
        $typePayment = TypePayment::get();

        return $this->successResponse($typePayment);
    }

    public function store(Request $request)
    {  
        $rules = [
            'forma_pago' => 'required|unique:type_payments',
            'estado' => 'required'
        ];

        $this->validate($request, $rules);

        $typePayment = TypePayment::create($request->all());

        return $this->successResponse($typePayment, Response::HTTP_CREATED);
    }

    public function show($typePayment)
    {
        $typePayment = TypePayment::findOrFail($typePayment);

        return $this->successResponse($typePayment, Response::HTTP_OK);
    }
    
    public function update(Request $request, $typePayment)
    {
        $rules = [
            'forma_pago' => 'required|unique:type_payments,forma_pago,'.$typePayment,
            'estado' => 'required'
        ];
        $this->validate($request, $rules);

        $typePayment = TypePayment::findOrFail($typePayment);
        $typePayment->fill($request->all());
        $typePayment->save();

        return $this->successResponse($typePayment);
    }

    public function destroy($typePayment)
    {
        $typePayment = TypePayment::findOrFail($typePayment);
        $typePayment->delete();

        return $this->successResponse($typePayment);
    }

}
