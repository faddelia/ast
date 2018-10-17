<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\UserAddress;
use Auth;

class UserAddressController extends Controller
{
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
        return view('user.add-address');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $address = new UserAddress();
        $address->address_nickname = $request->addressNickname;
        $address->user_id = Auth::user()->id;
        $address->address_type = $request->addressType;
        $address->address = $request->address;
        $address->is_default = ($request->isDefault === 'default') ? 1 : 0;

        $address->save();

        return redirect()->back()->with('success', 'Added succcessfully!');
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

    public function manageAddresses()
    {
        // get all addresses for user
        $addresses = UserAddress::where('user_id', '=', Auth::user()->id)->get();

        // return the view with all addresses

        return view('user.manage-addresses', compact('addresses'));
    }
}
