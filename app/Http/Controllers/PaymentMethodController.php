<?php

namespace App\Http\Controllers;

use App\Models\PaymentMethod;

use Illuminate\Http\Request;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;
use Illuminate\Validation\ValidationException;

class PaymentMethodController extends Controller
{
    use ApiResponse;

    public function index(Request $request)
    {
        $paymentmethod = PaymentMethod::where('estado',1)->get();
        return $this->successResponse($paymentmethod);
    }

    public function store(Request $request)
    { 
        $rules = [
            'description' => 'required',
            'estado' => 'required'
        ];

        $this->validate($request, $rules);

        $paymentmethod = PaymentMethod::create($request->all());

        return $this->successResponse($paymentmethod, Response::HTTP_CREATED);
    }

    public function show($paymentmethod)
    {
        $paymentmethod = PaymentMethod::findOrFail($paymentmethod);

        return $this->successResponse($paymentmethod, Response::HTTP_OK);
    }
    
    public function update(Request $request, $paymentmethod)
    {
        $rules = [
            'description' => 'required',
            'estado' => 'required'
        ];
        $this->validate($request, $rules);

        $paymentmethod = PaymentMethod::findOrFail($paymentmethod);
        $paymentmethod->fill($request->all());
        $paymentmethod->save();

        return $this->successResponse($paymentmethod);
    }

    public function destroy($paymentmethod)
    {
        $paymentmethod = PaymentMethod::findOrFail($paymentmethod);
        $paymentmethod->delete();

        return $this->successResponse($paymentmethod);
    }

}
