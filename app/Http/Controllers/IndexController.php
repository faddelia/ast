<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class IndexController extends Controller
{
	public function index()
    {
        //
        $is_iPad = (strstr($_SERVER['HTTP_USER_AGENT'],'iPad')) ? true : false;
        $announcements = \App\Announcement::where('active', '=', 1)->get();
        $page = \App\PageContent::where('slug', '=', 'home-page-content')->first();
        $carousels = \App\Carousel::where('active', '=', 1)
            ->orderBy('sort_order', 'asc')
            ->get();

        if($is_iPad) {
            return view('pages.ipadindex', compact('announcements', 'page'));
        }
        return view('pages.index', compact('announcements', 'page', 'carousels'));
    }
}
