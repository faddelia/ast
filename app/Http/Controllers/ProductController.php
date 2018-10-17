<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Session;
use Auth;
use App\Product;
use App\Cart;
use App\Order;
use App\UserOrderContactInformation;
use Stripe\Stripe;
use Stripe\Charge;
use Carbon\Carbon;

class ProductController extends Controller
{
    public function index()
    {
        $products = \App\Product::where('status', '=', 'Published')->orderBy('sort_order')->get();
        return view('pages.products', compact('products'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        $product = \App\Product::where('slug', '=', $slug)->firstOrFail();
        //substr(string, start)
        $price = (strrpos($product->price, '.')) ? strrev(substr($product->price, 0, strrpos($product->price, '.'))) : strrev($product->price);
        $decimal = (strrpos($product->price, '.')) ? substr($product->price, strrpos($product->price, '.')) : '';
        $stringPrice = '';

        //dd($price);        

        // add commas into string version of price
        for($i = 0; $i < strlen($price); $i++) {
        	if($i % 3 == 0 && $i != 0) {
        		$stringPrice .= ',';
        	}

        	$stringPrice .= $price[$i];
        }

        //add decimal point to end of the string
        $stringPrice = strrev($stringPrice) . $decimal;

        //add the price as a string to object
        $product->stringPrice = $stringPrice;

        $data_sheet = $product->data_sheet;
        $original_name = explode('/', $data_sheet);
        $original_name = $original_name[count($original_name) - 1];
        return view('pages.product', compact('product', 'data_sheet', 'original_name'));
    }

    public function getAddToCart(Request $request, $id)
    {
        $product = Product::find($id);
        $currentCart = Session::has('cart') ? Session::get('cart') : null;
        $cart = new Cart($currentCart);
        $cart->add($product, $product->id);

        $request->session()->put('cart', $cart);
        return redirect()->route('product.slug', $product->slug);
    }

    public function getAddOneToCart($id)
    {
        $currentCart = Session::has('cart') ? Session::get('cart') : null;
        $cart = new Cart($currentCart);
        $cart->addOne($id);

        //test and make sure all this works!!

        Session::put('cart', $cart);
        return redirect()->route('shop.shoppingCart');
    }

    public function getCart()
    {
        if(!Session::has('cart')) {
            return view('shop.shopping-cart');
        }

        $currentCart = Session::get('cart');
        $cart = new Cart($currentCart);
        return view('shop.shopping-cart', ['products' => $cart->items, 'qty' => $cart->totalQty, 'totalPrice' => $cart->totalPrice]);
    }

    public function getOrder()
    {
        if(!Session::has('cart')) {
            return view('shop.your-order');
        }

        $currentCart = Session::get('cart');
        $cart = new Cart($currentCart);
        $products = $cart->items;
        $totalPrice = $cart->totalPrice;
        return view('shop.your-order', compact('products', 'totalPrice'));
    }

    public function postOrder(Request $request)
    {
        if(!Session::has('cart')) {
            return redirect()->route('shop.shoppingCart');
        }

        $currentCart = Session::get('cart');
        $cart        = new Cart($currentCart);
        $orderId     = $this->getOrderId();

        Stripe::setApiKey('sk_test_OytvWAwwh0TnwBNIh8MKGPHZ');

        try {
            $charge = Charge::create(array(
                'amount'      => $cart->totalPrice * 100, //uses cents by default
                'currency'    => 'USD',
                'source'      => $request['stripeToken'],
                'description' => 'test charge'
            ));

            $order                = new Order();
            $order->order_id      = $orderId;
            $order->cart          = serialize($cart);
            $order->shipping_name = $request->input('shipping_firstname') . "||" . $request->input('shipping_lastname');
            $order->billing_name  = $request->input('billing_firstname') . "||" . $request->input('billing_lastname');

            $shipping_address = array(
                                        'name'      => $request->input('shipping_firstname') . " " . $request->input('shipping_lastname'),
                                        'address_1' => $request->input('shipping_address_1'),
                                        'address_2' => $request->input('shipping_address_2'),
                                        'city'      => $request->input('shipping_city'),
                                        'state'     => $request->input('shipping_state'),
                                        'zip'       => $request->input('shipping_zip')
                                    );

            $order->shipping_address = serialize($shipping_address);

            if($request->input('shippingBillingSame') == 'checked') {
                $order->billing_address = $order->shipping_address;
            } else {
                $billing_address = array(
                                        'name'      => $request->input('billing_firstname') . " " . $request->input('billing_lastname'),
                                        'address_1' => $request->input('billing_address_1'),
                                        'address_2' => $request->input('billing_address_2'),
                                        'city'      => $request->input('billing_city'),
                                        'state'     => $request->input('billing_state'),
                                        'zip'       => $request->input('billing_zip')
                                    );
                $order->billing_address = serialize($billing_address);
            }

            $order->payment_id = $charge->id;

            //this is how you save "related" data!! User -> Orders is a 1->many relationship
            Auth::user()->orders()->save($order);

            //get nice version of the order date so you can display it to the user on the receipt
            $orderDate  = Order::where('order_id', '=', $order->order_id)->first(['created_at']);
            $orderDate  = $orderDate['created_at'];
            $month      = ($orderDate->month < 10) ? '0' . $orderDate->month : $orderDate->month;
            $day        = ($orderDate->day < 10) ? '0' . $orderDate->day : $orderDate->day;
            $year       = $orderDate->year;
            $prettyDate = "$month/$day/$year";

            $order->pretty_date = $prettyDate;

            //store user's email and phone

            //see if we already have user's info in the database
            $userInfo = UserOrderContactInformation::find(Auth::id());

            if($userInfo === null) {
                //create new record
                $contactInfo = new UserOrderContactInformation();
                $contactInfo->user_id = Auth::id();
                $contactInfo->phone = $request->input('phone_number');
                $contactInfo->email = $request->input('email');
                $contactInfo->save();
            } else {
                //update their info to the info added, assume that the latest info is their current info for now
                //this is probably a bad idea.
                $userInfo->email = $request->input('email');
                $userInfo->phone = $request->input('phone_number');
                $userInfo->save();
            }

            //get last 4 digits of card used
            $charge = Charge::retrieve($order->payment_id);

            $order->last4 = $charge->source->last4;

            //get items from cart and include as a new property for easy access!
            $items = array();

            foreach($cart->items as $item) {
                $items[] = $item;
            }

            $order->items = $items;

            //calculate order total
            $orderSubTotal = 0;
            foreach($items as $item) {
                $orderSubTotal += $item['price'];
            }

            $order->orderSubTotal = $orderSubTotal;

            //sales tax???
            
            //shipping???

            //$order->orderTotal = $orderSubTotal + $salesTax + $shipping;

            //store the order in the session so it can be displayed to the user
            Session::put('order', $order);
        }
        catch (\Exception $e) {
            //return redirect()->route('shop.yourOrder')->with('errors', $e->getMessage());
            dd($e->getMessage());
            return redirect()->route('orders.errors')->with('error', $e->getMessage());
        }

        //forget the cart since the cart is in the order object
        Session::forget('cart');

        //redirect user to the success page
        return redirect()->route('orders.success')->with('success', 'Your purchase was successful!');
    }

    public function getReduceByOne($id)
    {
        $currentCart = Session::has('cart') ? Session::get('cart') : null;
        $cart = new Cart($currentCart);
        $cart->reduceByOne($id);

        if(count($cart->items) > 0) {
            Session::put('cart', $cart);
        } else {
            Session::forget('cart');
        }

        return redirect()->route('shop.shoppingCart');
    }

    public function getRemoveItem($id)
    {
        $currentCart = Session::has('cart') ? Session::get('cart') : null;
        $cart = new Cart($currentCart);
        $cart->removeItem($id);

        if(count($cart->items) > 0) {
            Session::put('cart', $cart);
        } else {
            Session::forget('cart');
        }

        return redirect()->route('shop.shoppingCart');    
    }

    public function getReceipt($id)
    {
        $order = Order::where('user_id', '=', Auth::user()->id)
                        ->where('id', '=', $id)
                        ->firstOrFail();
        dd($order);
        dd(unserialize($order[0]['cart']));
    }

    public function getSuccess()
    {
        return view('orders.success');
    }

    public function getErrors()
    {
        return view('orders.errors');
    }

    private function getOrderId()
    {
        //arbitrarily offsetting the count of orders by 100
        $totalOrdersInSystem = 100 + count(Order::all());

        //get the total number of orders the user has made on the site, 0 is acceptable
        $userOrderCount = count(Order::where('user_id', '=', Auth::user()->id)->get());

        //hash the user's email to generate a number
        $userEmail = Auth::user()->email;
        $hashedEmail = 0;
        $i = 0;
        for($i; $i < strlen($userEmail); $i++) {
            if($userEmail[$i] == '.') {
                // '.' gives a number that would go negative when subtracting 65, so just subtract the ascii number directly
                $hashedEmail -= ord($userEmail[$i]);
            }
            else {
                $hashedEmail += ord($userEmail[$i]) - 65;
            }
        }

        //put all of the pieces together to create the order id
        $orderId = "AST-$totalOrdersInSystem$userOrderCount$hashedEmail";
        return $orderId;
    }
}
