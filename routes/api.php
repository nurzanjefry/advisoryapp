<?php

use Illuminate\Http\Request;
//use App\Listing;
//use App\User;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::group([
        'prefix' => 'auth'
    ], function () {
        Route::post('login', 'AuthController@login');
        Route::post('signup', 'AuthController@signup');

        Route::group([
            'middleware' => 'auth:api'
        ], function () {
            Route::get('logout', 'AuthController@logout');
            Route::get('user', 'AuthController@user');
        });
});

//LISTING START HERE--->>##################################################
Route::get('listings', function () {
    return response(Listing::all(), 200);
});

Route::get('listing/{listing}', function ($listingId) {
    return response(Listing::find($listingId), 200);
});

Route::post('listing', function (Request $request) {
    $response = Listing::create($request->all());
    return $response;
});

Route::put('listing', function(Request $request, $listingId) {
    $list = Listing::findOrFail($listingId);
    $list->update($request->all());
    return $list;
});

Route::delete('listing/{listing}', function($listingId) {
    Listing::find($listingId->delete());
    return 204;
});

//List all listing
Route::get('listings','ListingController@index');

//List single listing
Route::get('listing/{listing}','ListingController@show');

//Create new listing
Route::post('listing','ListingController@store');

//Update listing -- check again if can
Route::put('listing','ListingController@store');

//Delete listing -- check again if can
Route::delete('listing/{listing}','ListingController@destroy');
//LISTING STOP HERE--->>##################################################

//USER START HERE--->>##################################################
Route::get('user', function () {
    return response(User::all(), 200);
});

Route::get('user/{user}', function ($userId) {
    return response(User::find($userId), 200);
});

Route::post('user', function (Request $request) {
    $response = User::create($request->all());
    return $response;
});

Route::put('user', function(Request $request, $userId) {
    $userList = User::findOrFail($userId);
    $userList->update($request->all());
    return $userList;
});

Route::delete('user/{user}', function($userId) {
    Listing::find($userId->delete());
    return 204;
});

//List all listing
Route::get('user','UserController@index');

//List single listing
Route::get('user/{user}','UserController@show');

//Create new listing
Route::post('user','UserController@store');

//Update listing -- check again if can
Route::put('user','UserController@store');

//Delete listing -- check again if can
Route::delete('user/{user}','UserController@destroy');
//USER STOP HERE--->>##################################################