<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Input;
use App\User;

class AuthController extends Controller
{

    /**
     * Create user
     *
     * @param  [string] name
     * @param  [string] email
     * @param  [string] encrypted_password
     * @param  [string] encrypted_password_confirmation
     * @param  [string] type
     * @return [string] message
     */

     public function signup(Request $request) {
        $request->validate([
            'email' => 'required|string|unique:user|max:255',
            'type' => 'required|string|max:1'
        ]);

        $user = new User([
            'email' => $request->email,
            'encrypted_password' => bcrypt($request->encrypted_password),
            'type' => $request->type
        ]);

        $user->save();

        return response()->json([
            'message' => 'Successfully created user'
        ], 201);
     }

    /**
     * Login user and create token
     *
     * @param  [string] email
     * @param  [string] encrypted_password
     * @param  [boolean] remember_me
     * @param  [string] type
     * @return [string] access_token
     * @return [string] token_type
     * @return [string] expires_at
     */

     public function login(Request $request) {
        
        $request->validate([
            'email' => 'required|string|email'
        ]);

        // $credentials = request(['email', 'password']);
        $credentials = Input::only('email');
        $credentials['password'] = Input::get($request['encrypted_password']);
        
        if(!Auth::attempt($credentials)) {
            return response()->json(['message' => "Unauthorize, please check email & password"], 401);
        }


        $user = $request->user();

        $tokenResult = $user->createToken('Personal Access Token');
        $token = $tokenResult->token;
        //$token->save();

        $user->token = $token;
        $user->save();

        return response()->json([
            'access_token' => $tokenResult->accessToken,
            'token_type' => 'Bearer'
        ]);
     }

     /**
     * Logout user (Revoke the token)
     *
     * @return [string] message
     */

     public function logout (Request $request){

       // $user = $request->user();
        $request->user()->token()->revoke();
     

        return response()->json([
            'message' => 'Successfuly logged out'
        ]);
     }

     /**
     * Get the authenticated User
     *
     * @return [json] user object
     */
    public function user(Request $request)
    {
        return response()->json($request->user());
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
