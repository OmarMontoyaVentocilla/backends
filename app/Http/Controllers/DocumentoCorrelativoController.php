<?php

namespace App\Http\Controllers;

use App\Models\DocumentoCorrelativo;
use Illuminate\Http\Request;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;

class DocumentoCorrelativoController extends Controller
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
    public function querySearchDocCorrelativo($valor_caja){
        
        $valor=DocumentoCorrelativo::select('id','document_types_comprobant_id','serie','correlativo')
        ->where(function($query) use($valor_caja) {
          $query->where('serie','like','%'.$valor_caja.'%')
                ->orWhere('correlativo', 'like','%'.$valor_caja.'%');
      });
        return $valor;
    }

    public function index(Request $request)
    {
        $paginacion = '';
        $valor_combo = $request->get('valor_combo');
        $valor_caja =  $request->get('valor_caja');
        $paginacion = ($valor_combo == '') ? 0 : $valor_combo;

        $doccorr=$this->querySearchDocCorrelativo($valor_caja)
                            ->paginate($paginacion);
        
        $total_registros=DocumentoCorrelativo::count();
        $total_reg_busqueda=$this->querySearchDocCorrelativo($valor_caja)
                                  ->count();

        $response = [
            'pagination' => [
                           'total' => $doccorr->total(),
                           'current_page' => $doccorr->currentPage(),
                           'per_page' => $doccorr->perPage(),
                           'last_page' => $doccorr->lastPage(),
                           'from' => $doccorr->firstItem(),
                           'to' => $doccorr->lastItem(),
             ],
                       'doccorr' => $doccorr,
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
            'document_types_comprobant_id'=> 'required',
            'serie'=> 'required',
            'correlativo'=> 'required'
        ];
        $this->validate($request, $rules);

        $doccorr = DocumentoCorrelativo::create(
            [
                'document_types_comprobant_id'=> $request->input('document_types_comprobant_id'),
                'serie'=> $request->input('serie'),
                'correlativo'=> $request->input('correlativo')
            ]
        );

        return $this->successResponse($doccorr, Response::HTTP_CREATED);
    }

    /**
     * Get one specific breed with the given id
     *
     * @param int $breed
     * @return \Illuminate\Http\Response
     */
    public function show($docorrelativo)
    {
        $docorrelativo = DocumentoCorrelativo::findOrFail($docorrelativo);

        return $this->successResponse($docorrelativo);
    }

    /**
     * Update one specific breed by given id
     *
     * @param int $breed
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $docorrelativo)
    {
    
        $rules = [
            'document_types_comprobant_id'=> 'required',
            'serie'=> 'required',
            'correlativo'=> 'required'
        ];
        $this->validate($request, $rules);
        $docorrelativo = DocumentoCorrelativo::findOrFail($docorrelativo);
        $docorrelativo->document_types_comprobant_id = $request->input('document_types_comprobant_id');
        $docorrelativo->serie= $request->input('serie');
        $docorrelativo->correlativo= $request->input('correlativo');
        if ($docorrelativo->save()) {
            return $this->successResponse($docorrelativo, Response::HTTP_CREATED);
		}
    }

    /**
     * Soft delete one specific breed by given id
     *
     * @param int $breed
     * @return \Illuminate\Http\Response
     */
    public function destroy($docorrelativo)
    {
        $docorrelativo = DocumentoCorrelativo::findOrFail($docorrelativo);
        $docorrelativo->estado = 0;
        if ($docorrelativo->save()) {
            return $this->successResponse($docorrelativo);
       }
        //$client->delete();
       
    }
}