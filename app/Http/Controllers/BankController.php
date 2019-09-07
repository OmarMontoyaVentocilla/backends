<?php

namespace App\Http\Controllers;

use App\Models\Bank;

use Illuminate\Http\Request;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;
use Illuminate\Validation\ValidationException;

class BankController extends Controller
{
    use ApiResponse;

    public function index(Request $request)
    {
        $banks = Bank::where('estado',1)->get();
        return $this->successResponse($banks);
    }

    public function store(Request $request)
    { 
        $rules = [
            'nombre_banco' => 'required',
            'estado' => 'required'
        ];

        $this->validate($request, $rules);

        $banks = Bank::create($request->all());

        return $this->successResponse($banks, Response::HTTP_CREATED);
    }

    public function show($bank)
    {
        $bank = Bank::findOrFail($bank);

        return $this->successResponse($bank, Response::HTTP_OK);
    }
    
    public function update(Request $request, $bank)
    {
        $rules = [
            'nombre_banco' => 'required',
            'estado' => 'required'
        ];
        $this->validate($request, $rules);

        $bank = Bank::findOrFail($bank);
        $bank->fill($request->all());
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
