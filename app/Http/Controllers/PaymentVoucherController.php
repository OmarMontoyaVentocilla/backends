<?php

namespace App\Http\Controllers;

use App\Models\PaymentVoucher;

use Illuminate\Http\Request;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;
use Illuminate\Validation\ValidationException;

class PaymentVoucherController extends Controller
{
    use ApiResponse;

    public function index(Request $request)
    {
        $paymentvoucher = PaymentVoucher::where('estado',1)->get();
        return $this->successResponse($paymentvoucher);
    }

    public function store(Request $request)
    { 
        $rules = [
            'name' => 'required',
            'code' => 'required',
            'estado' => 'required'
        ];

        $this->validate($request, $rules);

        $paymentvoucher = PaymentVoucher::create($request->all());

        return $this->successResponse($paymentvoucher, Response::HTTP_CREATED);
    }

    public function show($paymentvoucher)
    {
        $paymentvoucher = PaymentVoucher::findOrFail($paymentvoucher);

        return $this->successResponse($paymentvoucher, Response::HTTP_OK);
    }
    
    public function update(Request $request, $paymentvoucher)
    {
        $rules = [
            'name' => 'required',
            'code' => 'required',
            'estado' => 'required'
        ];
        $this->validate($request, $rules);

        $paymentvoucher = PaymentVoucher::findOrFail($paymentvoucher);
        $paymentvoucher->fill($request->all());
        $paymentvoucher->save();

        return $this->successResponse($paymentvoucher);
    }

    public function destroy($paymentvoucher)
    {
        $paymentvoucher = PaymentVoucher::findOrFail($paymentvoucher);
        $paymentvoucher->delete();

        return $this->successResponse($paymentvoucher);
    }

}
