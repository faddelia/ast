<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TermsOfUseController extends Controller
{
    public function index()
    {
        $page = \App\PageContent::where('slug', '=', 'terms-of-use')->firstOrFail();
        return view('pages.terms-of-use', compact('page'));
    }
}
