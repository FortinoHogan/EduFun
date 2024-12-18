<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Post;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(){
        $posts = Post::all();
        return view('pages.home-page.home')->with(['posts' => $posts, 'active' => 'home']);
    }
}
