<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use Spatie\QueryBuilder\QueryBuilder;
use App\Listing;

class ListingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // Get all listings
        return Listing::all();
    }



    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        //validation HTTP request
        $this->validate($request, [
            'list_name' => 'required|unique:listing|max:255',
            'distance' => 'required',
            'user_id' => 'required|integer'
        ]);

        //create new listing
        $listing = Listing::create($request->all());
        return response()->json($listing, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Listing $listing)
    {
        //
        //$list = QueryBuilder::for(Listing::class)->allowedFields('user_id')->get($listing);
        //return $listing + $list;
        return $listing;
    }



    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Listing $listing)
    {
        //update listing
        $listing->update($request->all());
        return response()->json($listing, 200);

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Listing $listing)
    {
        //delete listing
        $listing->delete();
        return response()->json(null, 204);
    }
}
