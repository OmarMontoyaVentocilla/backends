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
    use ApiResponse; 
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
            'username'    => 'required',
            'password'    => 'required',
        ]);

        try {


            if (! $token = $this->jwt->attempt($request->only('username', 'password'))) {
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

        $this->jwt->invalidate($this->jwt->getToken());
        return response()->json([
            'msg' => 'Deslogueado'
        ], 200);
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
            'username'=> 'required',
            'password'=> 'required'
        ];

        $this->validate($request, $rules);

        $user = User::create(
            [
                'username'=> $request->input('username'),
                'password'=> Hash::make($request->input('password'))
            ]
        );

        return $this->successResponse($user, Response::HTTP_CREATED);
    
    }


    public function test()
    {
        //$data= "hey"; 
         $token = $this->jwt->getToken();
         $this->jwt->user();
         $data = $this->jwt->setToken($token)->toUser();
        //print_r($data);
        return response()->json($data);
    }
}