<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use App\Order;
use App\UserOrderContactInformation;
use Carbon\Carbon;

class OrdersController extends Controller
{
    public function getOrders()
    {
    	$orders = Order::orderBy('created_at', 'desc')->get();
    	
    	foreach($orders as $order) {
    		//create string for month/day/year from created at
    		$carbon = Carbon::parse($order->created_at);
    		$order->date_string = $carbon->month . "/" . $carbon->day . "/" . $carbon->year;

    		//get user contact info for the orders
    		$userInfo = UserOrderContactInformation::find($order->user_id);

    		$order->user_info = $userInfo;
    	}

    	return view('admin.orders', compact('orders'));
    }
}
