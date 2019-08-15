<?php

namespace App\Http\Controllers;

use App\Models\TipoDocumento;

use Illuminate\Http\Request;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;
use Illuminate\Validation\ValidationException;

class TipoDocumentoController extends Controller
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
     * List all species
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    
    public function querySearchDType($valor_caja){
        
        $valor=TipoDocumento::select('descripcion')
        ->where(function($query) use($valor_caja) {
          $query->where('descripcion','like','%'.$valor_caja.'%');
      })->where(function($query){
         $query->where('estado',1);
      });
        return $valor;
    }

    public function index(Request $request)
    {  
        $paginacion = '';
        $valor_combo = $request->get('valor_combo');
        $valor_caja =  $request->get('valor_caja');
        $paginacion = ($valor_combo == '') ? 0 : $valor_combo;

        $tipoDocumento=$this->querySearchDType($valor_caja)
                        ->paginate($paginacion);
        
        $total_registros=TipoDocumento::where('estado',1)->count();
        $total_reg_busqueda=$this->querySearchDType($valor_caja)
                                  ->count();

        $response = [
            'pagination' => [
                           'total' => $tipoDocumento->total(),
                           'current_page' => $tipoDocumento->currentPage(),
                           'per_page' => $tipoDocumento->perPage(),
                           'last_page' => $tipoDocumento->lastPage(),
                           'from' => $tipoDocumento->firstItem(),
                           'to' => $tipoDocumento->lastItem(),
             ],
                       'tipoDocumento' => $tipoDocumento,
                       'total_registros'=>$total_registros,
                       'total_reg_busqueda'=>$total_reg_busqueda
        ]; 

        return $this->successResponse($response);
    }
    
    /**
     * Create a new species
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
   

    /**
     * Get one specific species with the given id
     *
     * @param int $species
     * @return \Illuminate\Http\Response
     */
   
    
    /**
     * Update one specific species by given id
     *
     * @param int $species
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\HttpResponse
     */
   
    /**
     * Soft delete one specific species by given id
     *
     * @param int $species
     * @return \Illuminate\Response
     */
   

}
