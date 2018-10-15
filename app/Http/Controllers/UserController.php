<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\User;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // Get all user note: need to remove this
        return User::all();
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //get & hash the password
        $this->validate($request, [
            'email' => 'required|unique:user|max:255',
            'encrypted_password' => 'required',
            'type' =>'required|'
        ]);

        return [
            'email.required' => 'Yeah, you miss the email',
            'encrypted_password.required' => 'bruh, where password',
            'type.required' => 'you are what? a king or peasant'
        ];

        //hashing with bcrypt
        $request->user()->fill([
            'encrypted_password' => Hash::make($request->newPassword, [
                'round' => 12
            ])
        ])->save();

    }


    // public function store(Request $request)
    // {

    //     //validation HTTP request
    //     $this->validate($request, [
    //         'list_name' => 'required|unique:listing|max:255',
    //         'distance' => 'required',
    //         'user_id' => 'required|integer'
    //     ]);

    //     //create new listing
    //     $listing = Listing::create($request->all());
    //     return response()->json($listing, 201);
    // }


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
