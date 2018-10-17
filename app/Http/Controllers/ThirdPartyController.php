<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ThirdPartyController extends Controller
{
    public function index()
    {
        return view('pages.third-party-products', ['categories' => \App\ThirdPartyCategory::all()]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($categories)
    {
        $category = '';

        if($categories == 'cameras') {
            $category = 'CAMERAS';
        } else if($categories == 'adapters') {
            $category = 'ADAPTERS';
        } else if($categories == 'boomstands') {
            $category = 'BOOMSTANDS';
        } else {
            //do nothing, category does not exist
        }

        $products = \App\ThirdPartyProduct::where('categories', '=', $categories)->get();
        $categories = $category;
        return view('pages.third-party-product', compact('products', 'categories'));
    }
}
