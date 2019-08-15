<?php

namespace App\Http\Controllers;

use App\Models\Proveedor;

use Illuminate\Http\Request;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;

class ProveedorController extends Controller
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
    public function index(Request $request)
    {
        //$proveedor=Proveedor::join('ubigeos', 'ubigeos.ubigeo_id', '=', 'ubigeos.id');
       // ->select('providers.*','ubigeos.ubDescripcion as descripcion_ubig')
        //->scopesubigeosInnerjoin()
       // ->where('providers.estado',1);    
       $proveedor=Proveedor::all();
        return $this->successResponse($proveedor);
    }

    /**
     * Create a new breed
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $rules = [
            'name' => 'required|max:255|unique:breeds,name,NULL,NULL,deleted_at,NULL',
            'species_id' => 'required|exists:species,id',
        ];

        $this->validate($request, $rules);

        $breed = Breed::create($request->all());

        return $this->successResponse($breed, Response::HTTP_CREATED);
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