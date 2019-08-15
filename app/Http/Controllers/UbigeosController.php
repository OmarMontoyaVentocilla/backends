<?php

namespace App\Http\Controllers;

use App\Models\Ubigeo;

use Illuminate\Http\Request;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;
use Illuminate\Validation\ValidationException;

class UbigeosController extends Controller
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
     * List all ubigeos
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $ubigeos = Ubigeo::sort($request)
                    ->paginate(20);

        return $this->successResponse($ubigeos);
    }
    
    
   

}
