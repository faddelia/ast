<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PrivacyPolicyController extends Controller
{
    public function index()
    {
        $page = \App\PageContent::where('slug', '=', 'privacy-policy')->firstOrFail();
        return view('pages.privacy-policy', compact('page'));
    }
}
