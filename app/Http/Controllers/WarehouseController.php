<?php

namespace App\Http\Controllers;

use App\Models\Warehouse;

use Illuminate\Http\Request;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;

class OutWarehouseController extends Controller
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
        $warehouses = Warehouse::scopePurchaseOrderJoin()
                    ->scopeProductJoin()
                    ->select('warehouses.*','purchase_orders.*','products.*')
                    ->get();
        
        return $this->successResponse($warehouses);
    }

    public function store(Request $request)
    {  
        $rules = [
            'orden_compra_pedido_id' => 'required|exists:purchase_orders,id',
            'producto_id' => 'required|exists:products,id',
            'stock' => 'required'
        ];

        $this->validate($request, $rules);

        $warehouses = Warehouse::create($request->all());

        return $this->successResponse($warehouses, Response::HTTP_CREATED);
    }

    public function show($warehouse)
    {
        $warehouse = Warehouse::findOrFail($warehouse);

        return $this->successResponse(warehouse);
    }

    public function update(Request $request, $warehouse)
    {
        $rules = [
            'orden_compra_pedido_id' => 'required|exists:purchase_orders,id',
            'producto_id' => 'required|exists:products,id',
            'stock' => 'required'
        ];
        $this->validate($request, $rules);

        $warehouse = Warehouse::findOrFail($warehouse);
        $warehouse->fill($request->all());
        $warehouse->save();

        return $this->successResponse($warehouse);
    }

    public function destroy($warehouse)
    {
        $warehouse = Warehouse::findOrFail($warehouse);
        $warehouse->delete();

        return $this->successResponse($warehouse);
    }
}