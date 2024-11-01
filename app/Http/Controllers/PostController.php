<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Post;
use App\Models\Writer;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index($postId)
    {
        $post = Post::where('id', $postId)->with('writer')->first();

        if (!$post) {
            abort(404);
        }

        return view('pages.detail-page.detail-page')->with(['post' => $post, 'active' => 'category']);
    }

    public function viewAll()
    {
        $posts = Post::with('writer')->paginate(3);
        return view('pages.popular-page.popular')->with(['posts' => $posts, 'active' => 'popular']);
    }
}
