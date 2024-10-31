<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Post;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function index($categoryId)
    {
        $category = Category::where('id', $categoryId)->first();
        if (!$category) {
            abort(404);
        }
        $posts = Post::where('category_id', $categoryId)->get();
        return view('pages.category-page.category')->with(['posts' => $posts, 'category' => $category]);

    }
}
