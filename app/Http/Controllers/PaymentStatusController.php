<?php

namespace App\Http\Controllers;

use App\Models\PaymentStatus;

use Illuminate\Http\Request;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;
use Illuminate\Validation\ValidationException;

class PaymentStatusController extends Controller
{
    use ApiResponse;

    public function index(Request $request)
    {
        $paymentstatus = PaymentStatus::where('estado',1)->get();
        return $this->successResponse($paymentstatus);
    }

    public function store(Request $request)
    { 
        $rules = [
            'description' => 'required',
            'estado' => 'required'
        ];

        $this->validate($request, $rules);

        $paymentstatus = PaymentStatus::create($request->all());

        return $this->successResponse($paymentstatus, Response::HTTP_CREATED);
    }

    public function show($paymentstatus)
    {
        $paymentstatus = PaymentStatus::findOrFail($paymentstatus);

        return $this->successResponse($paymentstatus, Response::HTTP_OK);
    }
    
    public function update(Request $request, $paymentstatus)
    {
        $rules = [
            'description' => 'required',
            'estado' => 'required'
        ];
        $this->validate($request, $rules);

        $paymentstatus = PaymentStatus::findOrFail($paymentstatus);
        $paymentstatus->fill($request->all());
        $paymentstatus->save();

        return $this->successResponse($paymentstatus);
    }

    public function destroy($paymentstatus)
    {
        $paymentstatus = PaymentStatus::findOrFail($paymentstatus);
        $paymentstatus->delete();

        return $this->successResponse($paymentstatus);
    }

}
