<?php

namespace App\Http\Controllers;

use App\Models\OutWarehouse;

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
        $outwarehouses = OutWarehouse::scopeProductJoin()
                    ->scopeWarehouseJoin()
                    ->scopeWarehouseUbicationJoin()
                    ->select('out_warehouses.*','products.*','warehouses.*','warehouse_ubications.*')
                    ->get();
        
        return $this->successResponse($outwarehouses);
    }

    public function store(Request $request)
    {   
        $rules = [
            'producto_id' => 'required|exists:products,id',
            'almacen_id' => 'required|exists:warehouses,id',
            'almacen_ubicacion_id' => 'required|exists:warehouse_ubications,id',
            'usuario_id' => 'required',
            'tipo_movimiento' => 'required',
            'cantidad' => 'required'
        ];

        $this->validate($request, $rules);

        $outwarehouses = OutWarehouse::create($request->all());

        return $this->successResponse($outwarehouses, Response::HTTP_CREATED);
    }

    public function show($outwarehouse)
    {
        $outwarehouse = OutWarehouse::findOrFail($outwarehouse);

        return $this->successResponse($outwarehouse);
    }

    public function update(Request $request, $outwarehouse)
    {
        $rules = [
            'producto_id' => 'required|exists:products,id',
            'almacen_id' => 'required|exists:warehouses,id',
            'almacen_ubicacion_id' => 'required|exists:warehouse_ubications,id',
            'usuario_id' => 'required',
            'tipo_movimiento' => 'required',
            'cantidad' => 'required'
        ];
        $this->validate($request, $rules);

        $outwarehouse = OutWarehouse::findOrFail($outwarehouse);
        $outwarehouse->fill($request->all());
        $outwarehouse->save();

        return $this->successResponse($outwarehouse);
    }

    public function destroy($outwarehouse)
    {
        $outwarehouse = OutWarehouse::findOrFail($outwarehouse);
        $outwarehouse->delete();

        return $this->successResponse($outwarehouse);
    }
}