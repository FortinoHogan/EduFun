<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index($postId)
    {
        $post = Post::where('id', $postId)->with('writer', 'category')->first();

        if (!$post) {
            abort(404);
        }

        return view('pages.detail-page.detail-page')->with(['post' => $post, 'writer' => $post->writer, 'category' => $post->category]);
    }

    public function viewAll()
    {
        $posts = Post::with('writer', 'category')->paginate(3);
        return view('pages.popular-page.popular')->with(['posts' => $posts]);
    }
}
