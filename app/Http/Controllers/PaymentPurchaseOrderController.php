<?php

namespace App\Http\Controllers;

use App\Models\PaymentPurchaseOrder;

use Illuminate\Http\Request;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;

class PaymentPurchaseOrderController extends Controller
{
    use ApiResponse;
    
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    public function index(Request $request)
    {
        $paymentPurchaseOrders = PaymentPurchaseOrder::scopePurchaseOrderJoin()
                    ->select('payment_purchase_orders.*','purchase_orders.*')
                    ->get();
        
        return $this->successResponse($paymentPurchaseOrders);
    }

    public function store(Request $request)
    {  
        $rules = [
            'orden_compra_pedido_id' => 'required|exists:purchase_orders,id',
            'monto_pago' => 'required',
            'fecha_pago' => 'required'
        ];

        $this->validate($request, $rules);

        $paymentPurchaseOrders = PaymentPurchaseOrder::create($request->all());

        return $this->successResponse($paymentPurchaseOrders, Response::HTTP_CREATED);
    }

    public function show($paymentPurchaseOrder)
    {
        $paymentPurchaseOrder = PaymentPurchaseOrder::findOrFail($paymentPurchaseOrder);

        return $this->successResponse($paymentPurchaseOrder);
    }

    public function update(Request $request, $paymentPurchaseOrder)
    {
        $rules = [
            'orden_compra_pedido_id' => 'required|exists:purchase_orders,id',
            'monto_pago' => 'required',
            'fecha_pago' => 'required'
        ];
        $this->validate($request, $rules);

        $paymentPurchaseOrder = PaymentPurchaseOrder::findOrFail($paymentPurchaseOrder);
        $paymentPurchaseOrder->fill($request->all());
        $paymentPurchaseOrder->save();

        return $this->successResponse($paymentPurchaseOrder);
    }

    public function destroy($paymentPurchaseOrder)
    {
        $paymentPurchaseOrder = PaymentPurchaseOrder::findOrFail($paymentPurchaseOrder);
        $paymentPurchaseOrder->delete();

        return $this->successResponse($paymentPurchaseOrder);
    }
}