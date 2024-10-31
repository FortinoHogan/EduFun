<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Post;
use App\Models\Writer;
use Illuminate\Http\Request;

class WriterController extends Controller
{
    public function index() {
        $writers = Writer::with('category')->get();
        return view('pages.writers-page.writers')->with(['writers' => $writers, 'active' => 'writer']);
    }

    public function viewWriter($writerId) {
        $writer = Writer::where('id', $writerId)->with('category')->first();

        if (!$writer) {
            abort(404);
        }

        $posts = Post::where('writer_id', $writerId)->get();
        return view('pages.writers-page.writer')->with(['writer' => $writer, 'posts' => $posts, 'active' => 'writer']);
    }
}
