<?php

namespace App\Http\Controllers;

use App\Models\ModoPago;
use Illuminate\Http\Request;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;
use Illuminate\Validation\ValidationException;

class ModoPagoController extends Controller
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
    
    public function querySearchModoPago($valor_caja){
        
        $valor=ModoPago::select('descripcion')
        ->where(function($query) use($valor_caja) {
          $query->where('descripcion','like','%'.$valor_caja.'%');
      });
        return $valor;
    }

    public function index(Request $request)
    {  
        $paginacion = '';
        $valor_combo = $request->get('valor_combo');
        $valor_caja =  $request->get('valor_caja');
        $paginacion = ($valor_combo == '') ? 0 : $valor_combo;

        $modoPago=$this->querySearchModoPago($valor_caja)
                            ->paginate($paginacion);
        
        $total_registros=ModoPago::count();
        $total_reg_busqueda=$this->querySearchModoPago($valor_caja)
                                  ->count();

        $response = [
            'pagination' => [
                           'total' => $modoPago->total(),
                           'current_page' => $modoPago->currentPage(),
                           'per_page' => $modoPago->perPage(),
                           'last_page' => $modoPago->lastPage(),
                           'from' => $modoPago->firstItem(),
                           'to' => $modoPago->lastItem(),
             ],
                       'modoPago' => $modoPago,
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
