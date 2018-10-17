<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TradeshowHighlightsController extends Controller
{
    public function index()
    {
        $highlights = \App\TradeshowHighlight::where('status', '=', 'Published')->orderBy('sort_order', 'desc')->get();
        return view('pages.tradeshows', compact('highlights'));
    }
}
