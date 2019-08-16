<?php

namespace App\Http\Controllers;

use App\Models\HistorialCaja;
use Illuminate\Http\Request;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;

class HistorialCajaController extends Controller
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
    public function querySearchHistorialCaja($valor_caja){
        
        $valor=HistorialCaja::join('boxes', 'boxes.id', '=', 'historial_boxes.boxe_id')
        ->select('historial_boxes.id','user_id','boxes.descripcion','montoInicial','montoFinal','fechaInicio','fechaCierre')
        ->where(function($query) use($valor_caja) {
          $query->where('fechaInicio','like','%'.$valor_caja.'%')
                ->orWhere('fechaCierre', 'like','%'.$valor_caja.'%');
      });
        return $valor;
    }

    public function index(Request $request)
    {
        $paginacion = '';
        $valor_combo = $request->get('valor_combo');
        $valor_caja =  $request->get('valor_caja');
        $paginacion = ($valor_combo == '') ? 0 : $valor_combo;

        $historialCaja=$this->querySearchHistorialCaja($valor_caja)
                            ->paginate($paginacion);
        
        $total_registros=HistorialCaja::count();
        $total_reg_busqueda=$this->querySearchHistorialCaja($valor_caja)
                                  ->count();

        $response = [
            'pagination' => [
                           'total' => $historialCaja->total(),
                           'current_page' => $historialCaja->currentPage(),
                           'per_page' => $historialCaja->perPage(),
                           'last_page' => $historialCaja->lastPage(),
                           'from' => $historialCaja->firstItem(),
                           'to' => $historialCaja->lastItem(),
             ],
                       'historialCaja' => $historialCaja,
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
   

    /**
     * Get one specific breed with the given id
     *
     * @param int $breed
     * @return \Illuminate\Http\Response
     */
  

    /**
     * Update one specific breed by given id
     *
     * @param int $breed
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    

    /**
     * Soft delete one specific breed by given id
     *
     * @param int $breed
     * @return \Illuminate\Http\Response
     */
  
}