<?php

namespace App\Http\Controllers;

use App\Models\Product;

use Illuminate\Http\Request;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;

class ProductController extends Controller
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
        $products = Product::scopePresentationJoin()
                    ->scopeUnitOfMeasuresJoin()
                    ->scopeUnitOfWeightJoin()
                    ->scopeBrandJoin()
                    ->scopeSubfamilyJoin()
                    ->select('products.*','presentations.*','unit_of_measures.*',
                    'unit_of_weights.*', 'brands.*', 'subfamilies.*')
                    ->get();
        
        return $this->successResponse($products);
    }
    public function store(Request $request)
    {   
        $rules = [
            'descripcion' => 'required|unique:products',
            'presentacion_id' => 'required|exists:presentations,id',
            'unidad_grupo_id' => 'required|exists:unit_of_measures,id',
            'unidad_individual_id' => 'required|exists:unit_of_measures,id',
            'unidad_peso_id' =>  'required|exists:unit_of_weights,id',
            'marca_id' =>  'required|exists:brands,id',
            'subfamilia_id' =>  'required|exists:subfamilies,id',
            'codigo' => 'required|unique:products',
            'detalle' => 'required|unique:products',
            'peso_neto' => 'required',
            'peso_bruto' => 'required',
            'estado' => 'required'
        ];

        $this->validate($request, $rules);

        $products = Product::create($request->all());

        return $this->successResponse($products, Response::HTTP_CREATED);
    }

    public function show($product)
    {
        $product = Product::findOrFail($product);

        return $this->successResponse($product);
    }

    public function update(Request $request, $product)
    {
        $rules = [
            'descripcion' => 'required|unique:products',
            'presentacion_id' => 'required|exists:presentations,id',
            'unidad_grupo_id' => 'required|exists:unit_of_measures,id',
            'unidad_individual_id' => 'required|exists:unit_of_measures,id',
            'unidad_peso_id' =>  'required|exists:unit_of_weights,id',
            'marca_id' =>  'required|exists:brands,id',
            'subfamilia_id' =>  'required|exists:subfamilies,id',
            'codigo' => 'required|unique:products',
            'detalle' => 'required|unique:products',
            'peso_neto' => 'required',
            'peso_bruto' => 'required',
            'estado' => 'required'
        ];
        $this->validate($request, $rules);

        $product = Product::findOrFail($product);
        $product->fill($request->all());
        $product->save();

        return $this->successResponse($product);
    }

    public function destroy($product)
    {
        $product = Product::findOrFail($product);
        $product->delete();

        return $this->successResponse($product);
    }
}