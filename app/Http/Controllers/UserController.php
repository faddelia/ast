<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Auth;
use App\User;
use App\UserPhoneNumber;
use App\UserAddress;

class UserController extends Controller
{
    public function getProfile()
    {
        //dd(Auth::user());
        #$orders = Auth::user()->orders;
    	$orders = Auth::user()->orders()->paginate(10);
        //$userPhone = Auth::user()->user_phone_numbers()->withDefault(['phone' => 'not set']);
        $userPhone = UserPhoneNumber::where('user_id', '=', Auth::user()->id)->first(['phone']);
        $userAddress = UserAddress::where('user_id', '=', Auth::user()->id)->get();
        //dd($userAddress);
        //dd($userPhone);

    	if($orders !== null) {
	    	$orders->transform(function($order, $key) {
	    		$order->cart = unserialize($order->cart);
	    		return $order;
	    	});
	    	return view('user.profile', compact('orders', 'userPhone', 'userAddress'));
    	}
    	return view('user.profile');
    }

    public function update(Request $request)
    {

        //dd($request->name);
        // validate request
        /*
        $isValid = $request->validate([
            'name' => 'string',
            'phone' => 'string'
        ]);
        */

        // get current info to compare fields
        $userInfo = User::where('id', '=', Auth::user()->id)->firstOrFail();
        $userPhone = UserPhoneNumber::where('user_id', '=', Auth::user()->id)->first();
        $userShippingAddress = UserAddress::where('user_id', '=', Auth::user()->id)
                                ->where('address_type', '=', 'Shipping')
                                ->get();
        $userBillingAddress = UserAddress::where('user_id', '=', Auth::user()->id)
                                ->where('address_type', '=', 'Billing')
                                ->get();
        $updateUserInfo = false;
        $updateUserPhone = false;
        $updateUserShippingAddress = false;
        $updateUserBillingAddress = false;

        if($request->name !== $userInfo->name) {
            $userInfo->name = $request->name;
            $updateUserInfo = true;
        }

        if($request->phone !== $userPhone->phone) {
            $userPhone->phone = $request->phone;
            $updateUserPhone = true;
        }

        /*

        Finding the shipping/billing address won't actually work like this,
        you have to find the address in the array of addresses they may or may not have,
        compare, and then update!!!

        if($request->shipping_address_default !== $userShippingAddress) {
            $userInfo->shipping_address_default = $request->shipping_address_default;
            $updateUserShippingAddress = true;
        }
        
        if($request->billing_address_default !== $userBillingAddress) {
            $userInfo->billing_address_default = $request->billing_address_default;
            $updateUserBillingAddress = true;
        }

        */

        // if NewPass !== confirmNewPass, fail
        if($request->newPass !== $request->confirmNewPass) {
            //fail
        }

        // if NewPass and/or confirmNewPass === null but NewPass !== confirmNewPass, fail
        if(($request->newPass == null) xor ($request->confirmNewPass == null) ) {
            //fail
        }

        if($updateUserInfo) {
            $userInfo->save();
        }
        
        if($updateUserPhone) {
            $userPhone->save();
        }
        
        /* uncomment when the validation is working
        if($updateUserShippingAddress) {
            $userShippingAddress->save();
        }
        
        if($updateUserBillingAddress) {
            $updateUserBillingAddress->save();
        }
        */

        // if NewPass && confirmNewPass == null, don't update pass
        if(($request->newPass !== null) && ($request->confirmNewPass !== null) ) {
            $request->user()->fill([
                'password' => Hash::make($request->newPassword)
            ])->save();
        }

        return redirect()->back();
    }

    public function manageAddresses()
    {
        return view('user.manage-addresses');
    }
}
