<?php

namespace App\Http\Controllers;

use App\Models\Cliente;

use Illuminate\Http\Request;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;

class ClienteController extends Controller
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

    /**
     * List all breeds with its species
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function querySearchCliente($valor_caja){
        
        $valor=Cliente::select('nro_documnto','ubigeo_id','nombres','document_types_id')
        ->where(function($query) use($valor_caja) {
          $query->where('nro_documnto','like','%'.$valor_caja.'%')
                ->orWhere('nombres', 'like','%'.$valor_caja.'%');
      });
        return $valor;
    }

    public function index(Request $request)
    {
        $paginacion = '';
        $valor_combo = $request->get('valor_combo');
        $valor_caja =  $request->get('valor_caja');
        $paginacion = ($valor_combo == '') ? 0 : $valor_combo;

        $cliente=$this->querySearchCliente($valor_caja)
                            ->paginate($paginacion);
        
        $total_registros=Cliente::count();
        $total_reg_busqueda=$this->querySearchCliente($valor_caja)
                                  ->count();

        $response = [
            'pagination' => [
                           'total' => $cliente->total(),
                           'current_page' => $cliente->currentPage(),
                           'per_page' => $cliente->perPage(),
                           'last_page' => $cliente->lastPage(),
                           'from' => $cliente->firstItem(),
                           'to' => $cliente->lastItem(),
             ],
                       'cliente' => $cliente,
                       'total_registros'=>$total_registros,
                       'total_reg_busqueda'=>$total_reg_busqueda
        ]; 

        return $this->successResponse($response);
    }

    /**
     * Create a new breed
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
      // dd($request);
        $rules = [
            'document_types_id'=> 'required',
            'ubigeo_id'=> 'required',
            'nro_documnto'=> 'required',
            'nombres'=> 'required'
        ];

        $this->validate($request, $rules);

        $client = Cliente::create(
            [
                'document_types_id'=> $request->input('document_types_id'),
                'ubigeo_id'=> $request->input('ubigeo_id'),
                'nro_documnto'=> $request->input('nro_documnto'),
                'nombres'=> $request->input('nombres')
            ]
        );

        return $this->successResponse($client, Response::HTTP_CREATED);
    }

    /**
     * Get one specific breed with the given id
     *
     * @param int $breed
     * @return \Illuminate\Http\Response
     */
    public function show($breed)
    {
        $breed = Breed::findOrFail($breed);

        return $this->successResponse($breed);
    }

    /**
     * Update one specific breed by given id
     *
     * @param int $breed
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $breed)
    {
        $rules = [
            'name' => 'max:255|unique:breeds,name,'.$breed,
            'species_id' => 'exists:species,id',
        ];
        $this->validate($request, $rules);

        $breed = Breed::findOrFail($breed);
        $breed->fill($request->all());
        $breed->save();

        return $this->successResponse($breed);
    }

    /**
     * Soft delete one specific breed by given id
     *
     * @param int $breed
     * @return \Illuminate\Http\Response
     */
    public function destroy($breed)
    {
        $breed = Breed::findOrFail($breed);
        $breed->delete();

        return $this->successResponse($breed);
    }
}