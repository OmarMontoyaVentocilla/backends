<?php

namespace App\Http\Controllers;

use App\Models\SupplierContact;

use Illuminate\Http\Request;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;
use Illuminate\Validation\ValidationException;

class SupplierContactController extends Controller
{
    use ApiResponse;

    public function index(Request $request)
    {
        $supplierContact = SupplierContact::scopeSupplierJoin()
                    ->select('suppliers_contacts.*','suppliers.*')
                    ->get();

        return $this->successResponse($supplierContact);
    }

    public function store(Request $request)
    {  
        $rules = [
            'nombre' => 'required|unique:suppliers_contacts',
            'proveedor_id' => 'required|exists:suppliers,id',
            'celular' => 'required',
            'email' => 'required',
            'estado' => 'required'
        ];

        $this->validate($request, $rules);

        $supplierContact = SupplierContact::create($request->all());

        return $this->successResponse($supplierContact, Response::HTTP_CREATED);
    }

    public function show($supplierContact)
    {
        $supplierContact = SupplierContact::findOrFail($supplierContact);

        return $this->successResponse($supplierContact, Response::HTTP_OK);
    }
    
    public function update(Request $request, $supplierContact)
    {
        $rules = [
            'nombre' => 'required|unique:suppliers_contacts,nombre,'.$supplierContact,
            'proveedor_id' => 'required|exists:suppliers,id',
            'celular' => 'required',
            'email' => 'required',
            'estado' => 'required'
        ];
        $this->validate($request, $rules);

        $supplierContact = SupplierContact::findOrFail($supplierContact);
        $supplierContact->fill($request->all());
        $supplierContact->save();

        return $this->successResponse($supplierContact);
    }

    public function destroy($supplierContact)
    {
        $supplierContact = SupplierContact::findOrFail($supplierContact);
        $supplierContact->delete();

        return $this->successResponse($subfamsupplierContactily);
    }

}
