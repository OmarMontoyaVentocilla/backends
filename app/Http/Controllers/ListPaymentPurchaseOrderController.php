<?php

namespace App\Http\Controllers;

use App\Models\ListPaymentPurchaseOrder;

use Illuminate\Http\Request;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;

class ListPaymentPurchaseOrderController extends Controller
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
        $listPaymentPurchaseOrder = ListPaymentPurchaseOrder::scopePurchaseOrderJoin()
                    ->scopeProductJoin()
                    ->select('list_payment_purchase_orders.*','purchase_orders.*','products.*')
                    ->get();
        
        return $this->successResponse($listPaymentPurchaseOrder);
    }
    public function store(Request $request)
    {
        $rules = [
            'orden_compra_pedido_id' => 'required|exists:purchase_orders,id',
            'producto_id' => 'required|exists:products,id',
            'cantidad' => 'required',
            'precio_compra' => 'required',
            'precio_paquete' => 'required',
            'precio_unidad' => 'required',
            'fecha_vencimiento' => 'required'
        ];

        $this->validate($request, $rules);

        $listPaymentPurchaseOrder = ListPaymentPurchaseOrder::create($request->all());

        return $this->successResponse($listPaymentPurchaseOrder, Response::HTTP_CREATED);
    }

    public function show($listPaymentPurchaseOrder)
    {
        $listPaymentPurchaseOrder = ListPaymentPurchaseOrder::findOrFail($listPaymentPurchaseOrder);

        return $this->successResponse($listPaymentPurchaseOrder);
    }

    public function update(Request $request, $listPaymentPurchaseOrder)
    {
        $rules = [
            'orden_compra_pedido_id' => 'required|exists:purchase_orders,id',
            'producto_id' => 'required|exists:products,id',
            'cantidad' => 'required',
            'precio_compra' => 'required',
            'precio_paquete' => 'required',
            'precio_unidad' => 'required',
            'fecha_vencimiento' => 'required'
        ];
        $this->validate($request, $rules);

        $listPaymentPurchaseOrder = ListPaymentPurchaseOrder::findOrFail($listPaymentPurchaseOrder);
        $listPaymentPurchaseOrder->fill($request->all());
        $listPaymentPurchaseOrder->save();

        return $this->successResponse($listPaymentPurchaseOrder);
    }

    public function destroy($listPaymentPurchaseOrder)
    {
        $listPaymentPurchaseOrder = ListPaymentPurchaseOrder::findOrFail($listPaymentPurchaseOrder);
        $listPaymentPurchaseOrder->delete();

        return $this->successResponse($listPaymentPurchaseOrder);
    }
}