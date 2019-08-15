<?php

namespace App\Http\Controllers;

use App\Models\Species;

use Illuminate\Http\Request;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;
use Illuminate\Validation\ValidationException;

class SpeciesController extends Controller
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
    public function index(Request $request)
    {
        $species = Species::search($request->term)
                    ->sort($request)
                    ->paginate(20);

        return $this->successResponse($species);
    }
    
    /**
     * Create a new species
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $rules = [
            'name' => 'required|max:255|unique:species,name,NULL,NULL,deleted_at,NULL',
        ];

        $this->validate($request, $rules);

        $species = Species::create($request->all());

        return $this->successResponse($species, Response::HTTP_CREATED);
    }

    /**
     * Get one specific species with the given id
     *
     * @param int $species
     * @return \Illuminate\Http\Response
     */
    public function show($species)
    {
        $species = Species::findOrFail($species);

        return $this->successResponse($species, Response::HTTP_OK);
    }
    
    /**
     * Update one specific species by given id
     *
     * @param int $species
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\HttpResponse
     */
    public function update(Request $request, $species)
    {
        $rules = [
            'name' => 'max:255|unique:species,name,'.$species,
        ];
        $this->validate($request, $rules);

        $species = Species::findOrFail($species);
        $species->fill($request->all());
        $species->save();

        return $this->successResponse($species);
    }

    /**
     * Soft delete one specific species by given id
     *
     * @param int $species
     * @return \Illuminate\Response
     */
    public function destroy($species)
    {
        $species = Species::withCount('breeds')->findOrFail($species);
        if($species->breeds_count > 0) {
            $error = ValidationException::withMessages([
                'related_model' => ['It is not possible delete this item, because has a related value'],
            ]);
            throw $error;
        }
        $species->delete();
        
        return $this->successResponse($species);
    }

}
