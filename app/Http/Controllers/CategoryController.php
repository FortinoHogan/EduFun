<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Post;
use App\Models\Writer;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function index($categoryId)
    {
        $category = Category::where('id', $categoryId)->first();
        if (!$category) {
            abort(404);
        }
        $writers = Writer::where('category_id', $categoryId)->get();

        $writerIds = [];
        foreach ($writers as $writer) {
            $writerIds[] = $writer->id;
        }
        $posts = [];
        foreach (Post::all() as $post) {
            if (in_array($post->writer_id, $writerIds)) {
                $posts[] = $post;
            }
        }
        return view('pages.category-page.category')->with(['posts' => $posts, 'category' => $category, 'active' => 'category']);
    }
}
