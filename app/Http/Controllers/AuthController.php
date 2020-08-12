<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use Tymon\JWTAuth\Exceptions\JWTException;
use Tymon\JWTAuth\Exceptions\TokenExpiredException;
use Tymon\JWTAuth\Exceptions\TokenInvalidException;
use Tymon\JWTAuth\JWTAuth;
use App\User;
use App\Traits\ApiResponse;
use Illuminate\Http\Response;

class AuthController extends Controller
{
    /**
     * @var \Tymon\JWTAuth\JWTAuth
     */
    protected $jwt;

    public function __construct(JWTAuth $jwt)
    {
        $this->jwt = $jwt;
    }

    public function login(Request $request)
    {
        $this->validate($request, [
            'email'    => 'required',
            'password' => 'required',
        ]);

        try {


            if (! $token = $this->jwt->attempt($request->only('email', 'password'))) {
                return response()->json(['user_not_found'], 404);
            }

        } catch (TokenExpiredException $e) {

            return response()->json(['token_expired'], 500);

        } catch (TokenInvalidException $e) {

            return response()->json(['token_invalid'], 500);

        } catch (JWTException $e) {

            return response()->json(['token_absent' => $e->getMessage()], 500);
        }

        $this->jwt->setToken($token);
        return $this->respondWithToken($token);
    }

    public function logout(Request $request) {

        $this->validate($request, ['token' => 'required']);

        try {
            $this->jwt->parseToken()->invalidate($request->input('token'));
            return response()->json(['success' => true, 'message'=> "Te deslogueaste"]);
        } catch (JWTException $e) {
            return response()->json(['success' => false, 'error' => 'Fallo al desloguearse'], 500);
        }
    }

    public function refresh()
    {
        return $this->respondWithToken($this->jwt->refresh());
    }

    protected function respondWithToken($token)
    {
        return response()->json([
            'access_token' => $token,
            'token_type' => 'bearer',
            'expires_in' =>  $this->jwt->factory()->getTTL() * 60
        ]);
    }

    public function store(Request $request)
    {  
        $rules = [
            'email'=> 'required',
            'password'=> 'required'
        ];

        $this->validate($request, $rules);

        $user = User::create(
            [
                'email'=> $request->input('email'),
                'password'=> Hash::make($request->input('password'))
            ]
        );

        $data=[
            "success"=>"Se registro",
            "type"=>true
         ];
        return response()->json($data);
    }

    public function test()
    {
         $token = $this->jwt->getToken();
         $this->jwt->user();
         $data = $this->jwt->setToken($token)->toUser(); 
         return response()->json($data);
    }
}