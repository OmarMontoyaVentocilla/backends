<?php

namespace App\Http\Controllers;

use App\Models\SubFamily;

use Illuminate\Http\Request;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;
use Illuminate\Validation\ValidationException;

class SubFamilyController extends Controller
{
    use ApiResponse;

    public function index(Request $request)
    {
      
        $subFamilies=SubFamily::join('families','subfamilies.familia_id','=','families.id')
                    ->select('subfamilies.id','subfamilies.descripcion as descripcion_sub','families.id as id_fam' ,'families.descripcion as descripcion_fam')
                    ->where('subfamilies.estado','1')->get();
        return $this->successResponse($subFamilies);
    }

    public function store(Request $request)
    {   
        $rules = [
            'descripcion' => 'required|unique:subfamilies',
            'familia_id' => 'required|exists:families,id',
            'estado' => 'required'
        ];

        $this->validate($request, $rules);

        $subFamilies = SubFamily::create($request->all());

        return $this->successResponse($subFamilies, Response::HTTP_CREATED);
    }

    public function show($subFamilies)
    {
        $subFamilies = SubFamily::findOrFail($subFamilies);

        return $this->successResponse($subFamilies, Response::HTTP_OK);
    }
    
    public function update(Request $request, $subfamily)
    {
        $rules = [
            'descripcion' => 'required|unique:subfamilies,nombre,'.$subfamily,
            'familia_id' => 'required|exists:families,id',
            'estado' => 'required'
        ];
        $this->validate($request, $rules);

        $subfamily = SubFamily::findOrFail($subfamily);
        $subfamily->fill($request->all());
        $subfamily->save();

        return $this->successResponse($subfamily);
    }

    public function destroy($subfamily)
    {
        $subfamily = SubFamily::findOrFail($subfamily);
        $subfamily->delete();

        return $this->successResponse($subfamily);
    }

}
