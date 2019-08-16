<?php

namespace App\Http\Controllers;

use App\Models\TipoDocumentoComprobante;

use Illuminate\Http\Request;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;
use Illuminate\Validation\ValidationException;

class TipoDocumentoComprobanteController extends Controller
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
    
    public function querySearchDTypeComprobante($valor_caja){
        
        $valor=TipoDocumentoComprobante::select('id','descripcion','codigo')
        ->where(function($query) use($valor_caja) {
          $query->where('descripcion','like','%'.$valor_caja.'%')
                ->orWhere('codigo', 'like','%'.$valor_caja.'%');
      });
        return $valor;
    }

    public function index(Request $request)
    {  
        $paginacion = '';
        $valor_combo = $request->get('valor_combo');
        $valor_caja =  $request->get('valor_caja');
        $paginacion = ($valor_combo == '') ? 0 : $valor_combo;

        $tipoDocumentoComprobante=$this->querySearchDTypeComprobante($valor_caja)
                            ->paginate($paginacion);
        
        $total_registros=TipoDocumentoComprobante::count();
        $total_reg_busqueda=$this->querySearchDTypeComprobante($valor_caja)
                                  ->count();

        $response = [
            'pagination' => [
                           'total' => $tipoDocumentoComprobante->total(),
                           'current_page' => $tipoDocumentoComprobante->currentPage(),
                           'per_page' => $tipoDocumentoComprobante->perPage(),
                           'last_page' => $tipoDocumentoComprobante->lastPage(),
                           'from' => $tipoDocumentoComprobante->firstItem(),
                           'to' => $tipoDocumentoComprobante->lastItem(),
             ],
                       'tipoDocumentoComprobante' => $tipoDocumentoComprobante,
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
