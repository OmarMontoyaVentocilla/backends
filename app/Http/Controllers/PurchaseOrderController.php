<?php

namespace App\Http\Controllers;

use App\Models\PurchaseOrder;

use Illuminate\Http\Request;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;

class PurchaseOrderController extends Controller
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
        $purchaseOrder = PurchaseOrder::scopeSupplierJoin()
                    ->scopeSupplierContactJoin()
                    ->scopeTypePaymentJoin()
                    ->select('purchase_orders.*','suppliers.*','suppliers_contacts.*',
                    'type_payments.*')
                    ->get();
        
        return $this->successResponse($purchaseOrder);
    }
    public function store(Request $request)
    {   
        $rules = [
            'correlativo' => 'required|unique:purchase_orders',
            'proveedor_id' => 'required|exists:suppliers,id',
            'proveedor_contacto_id' => 'required|exists:suppliers_contacts,id',
            'usuario_id' => 'required',
            'forma_pago_id' =>  'required|exists:type_payments,id',
            'total_monto' =>  'required',
            'total_pago' =>  'required',
            'fecha_sistema' => 'required',
            'fecha_pedido' => 'required',
            'estado_pedido' => 'required',
            'estado_pedido_pago' => 'required'
        ];

        $this->validate($request, $rules);

        $purchaseOrder = PurchaseOrder::create($request->all());

        return $this->successResponse($purchaseOrder, Response::HTTP_CREATED);
    }

    public function show($purchaseOrder)
    {
        $purchaseOrder = PurchaseOrder::findOrFail($purchaseOrder);

        return $this->successResponse($purchaseOrder);
    }

    public function update(Request $request, $purchaseOrder)
    {
        $rules = [
            'correlativo' => 'required|unique:purchase_orders',
            'proveedor_id' => 'required|exists:suppliers,id',
            'proveedor_contacto_id' => 'required|exists:suppliers_contacts,id',
            'usuario_id' => 'required',
            'forma_pago_id' =>  'required|exists:type_payments,id',
            'total_monto' =>  'required',
            'total_pago' =>  'required',
            'fecha_sistema' => 'required',
            'fecha_pedido' => 'required',
            'estado_pedido' => 'required',
            'estado_pedido_pago' => 'required'
        ];
        $this->validate($request, $rules);

        $purchaseOrder = PurchaseOrder::findOrFail($purchaseOrder);
        $purchaseOrder->fill($request->all());
        $purchaseOrder->save();

        return $this->successResponse($purchaseOrder);
    }

    public function destroy($purchaseOrder)
    {
        $purchaseOrder = PurchaseOrder::findOrFail($purchaseOrder);
        $purchaseOrder->delete();

        return $this->successResponse($purchaseOrder);
    }
}