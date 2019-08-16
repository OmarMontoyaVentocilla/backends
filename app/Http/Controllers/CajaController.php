<?php

namespace App\Http\Controllers;

use App\Models\Caja;
use Illuminate\Http\Request;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;

class CajaController  extends Controller
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
    public function querySearchCaja($valor_caja){
        
        $valor=Caja::select('id','descripcion','ip')
        ->where(function($query) use($valor_caja) {
          $query->where('descripcion','like','%'.$valor_caja.'%')
                ->orWhere('ip', 'like','%'.$valor_caja.'%');
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

        $caja=$this->querySearchCaja($valor_caja)
                            ->paginate($paginacion);
        
        $total_registros=Caja::count();
        $total_reg_busqueda=$this->querySearchCaja($valor_caja)
                                  ->count();

        $response = [
            'pagination' => [
                           'total' => $caja->total(),
                           'current_page' => $caja->currentPage(),
                           'per_page' => $caja->perPage(),
                           'last_page' => $caja->lastPage(),
                           'from' => $caja->firstItem(),
                           'to' => $caja->lastItem(),
             ],
                       'caja' => $caja,
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
            'descripcion'=> 'required',
            'ip'=> 'required'
        ];

        $this->validate($request, $rules);

        $caja = Caja::create(
            [
                'descripcion'=> $request->input('descripcion'),
                'ip'=> $request->input('ip'),
                'estado'=> 1
            ]
        );

        return $this->successResponse($caja, Response::HTTP_CREATED);
    }

    /**
     * Get one specific breed with the given id
     *
     * @param int $breed
     * @return \Illuminate\Http\Response
     */
    public function show($caja)
    {
        $caja = Caja::findOrFail($caja);

        return $this->successResponse($caja);
    }

    /**
     * Update one specific breed by given id
     *
     * @param int $breed
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $caja)
    {
    
        $rules = [
            'descripcion'=> 'required',
            'ip'=> 'required'
        ];

        $this->validate($request, $rules);
        $caja = Caja::findOrFail($caja);
        $caja->descripcion = $request->input('descripcion');
        $caja->ip= $request->input('ip');
        $caja->estado= '1';
        if ($caja->save()) {
            return $this->successResponse($caja, Response::HTTP_CREATED);
		}
    }

    /**
     * Soft delete one specific breed by given id
     *
     * @param int $breed
     * @return \Illuminate\Http\Response
     */
    public function destroy($caja)
    {
        $caja = Caja::findOrFail($caja);
        $caja->estado = 0;
        if ($caja->save()) {
            return $this->successResponse($caja);
       }
        //$client->delete();
       
    }
}