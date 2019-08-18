<?php

namespace App\Http\Controllers;

use App\Models\ArmedCombo;

use Illuminate\Http\Request;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;
use Illuminate\Validation\ValidationException;

class ArmedComboController extends Controller
{
    use ApiResponse;

    public function index(Request $request)
    {
        $armedCombos = ArmedCombo::get();

        return $this->successResponse($armedCombos);
    }

    public function store(Request $request)
    {
        $rules = [
            'nuevo_codigo' => 'required|unique:armed_combos',
            'nuevo_nombre' =>  'required',
            'precio_compra_total' => 'required',
            'precio_venta_final' => 'required',
            'precio_diferencia' => 'required'
        ];

        $this->validate($request, $rules);

        $armedCombos = ArmedCombo::create($request->all());

        return $this->successResponse($armedCombos, Response::HTTP_CREATED);
    }

    public function show($armedCombo)
    {
        $armedCombo = ArmedCombo::findOrFail($armedCombo);

        return $this->successResponse($armedCombo, Response::HTTP_OK);
    }
    
    public function update(Request $request, $armedCombo)
    {
        $rules = [
            'nuevo_codigo' => 'required|unique:armed_combos,nuevo_codigo,'.$armedCombo,
            'nuevo_nombre' =>  'required',
            'precio_compra_total' => 'required',
            'precio_venta_final' => 'required',
            'precio_diferencia' => 'required'
        ];
        $this->validate($request, $rules);

        $armedCombo = ArmedCombo::findOrFail($armedCombo);
        $armedCombo->fill($request->all());
        $armedCombo->save();

        return $this->successResponse($armedCombo);
    }

    public function destroy($armedCombo)
    {
        $armedCombo = ArmedCombo::findOrFail($armedCombo);
        $armedCombo->delete();

        return $this->successResponse($armedCombo);
    }

}
