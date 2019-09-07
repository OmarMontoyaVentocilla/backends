<?php

namespace App\Http\Controllers;

use App\Models\Permission;

use Illuminate\Http\Request;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;
use Illuminate\Validation\ValidationException;

class PermissionController extends Controller
{
    use ApiResponse;

    public function index(Request $request)
    {
        $permisos = Permission::where('estado',1)->get();
        return $this->successResponse($permisos);
    }

    public function store(Request $request)
    { 
        $rules = [
            'nombre' => 'required',
            'estado' => 'required'
        ];

        $this->validate($request, $rules);

        $permission = Permission::create($request->all());

        return $this->successResponse($permission, Response::HTTP_CREATED);
    }

    public function show($permission)
    {
        $bank = Permission::findOrFail($permission);

        return $this->successResponse($permission, Response::HTTP_OK);
    }
    
    public function update(Request $request, $bank)
    {
        $rules = [
            'nombre' => 'required',
            'estado' => 'required'
        ];
        $this->validate($request, $rules);

        $permission = Permission::findOrFail($permission);
        $permission->fill($request->all());
        $bank->save();

        return $this->successResponse($bank);
    }

    public function destroy($bank)
    {
        $bank = Bank::findOrFail($bank);
        $bank->delete();

        return $this->successResponse($bank);
    }

}
