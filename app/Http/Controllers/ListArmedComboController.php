<?php

namespace App\Http\Controllers;

use App\Models\ListArmedCombo;

use Illuminate\Http\Request;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;

class ListArmedComboController extends Controller
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
        $listArmedCombos = ListArmedCombo::scopeWarehouseJoin()
                    ->scopeArmadComboJoin()
                    ->select('list_armed_combos.*','warehouses.*','armad_combos.*')
                    ->get();
        
        return $this->successResponse($listArmedCombos);
    }

    public function store(Request $request)
    {
        $rules = [
            'almacen_id' => 'required|exists:warehouses,id',
            'combo_armado_id' => 'required|exists:armad_combos,id',
            'precio_compra' => 'required',
        ];

        $this->validate($request, $rules);

        $listArmedCombos = ListArmedCombo::create($request->all());

        return $this->successResponse($listArmedCombos, Response::HTTP_CREATED);
    }

    public function show($listArmedCombo)
    {
        $listArmedCombo = ListArmedCombo::findOrFail($listArmedCombo);

        return $this->successResponse($listArmedCombo);
    }

    public function update(Request $request, $listArmedCombo)
    {
        $rules = [
            'almacen_id' => 'required|exists:warehouses,id',
            'combo_armado_id' => 'required|exists:armad_combos,id',
            'precio_compra' => 'required',
        ];
        $this->validate($request, $rules);

        $listArmedCombo = ListArmedCombo::findOrFail($listArmedCombo);
        $listArmedCombo->fill($request->all());
        $listArmedCombo->save();

        return $this->successResponse($listArmedCombo);
    }

    public function destroy($listArmedCombo)
    {
        $listArmedCombo = ListArmedCombo::findOrFail($listArmedCombo);
        $listArmedCombo->delete();

        return $this->successResponse($listArmedCombo);
    }
}