<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AboutUsController extends Controller
{
    public function index()
    {
        $page = \App\PageContent::where('slug', '=', 'about-us')->firstOrFail();
        return view('pages.about-us', compact('page'));
    }
}
