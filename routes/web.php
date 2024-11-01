<?php

use App\Http\Controllers\AboutController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\WriterController;
use Illuminate\Support\Facades\Route;

Route::get('/', [HomeController::class, 'index'])->name('home');

Route::get('/about-us', [AboutController::class, 'index'])->name('about');

Route::get('/category/{categoryId}', [CategoryController::class, 'index'])->name('category');

Route::get('/writers', [WriterController::class, 'index'])->name('writers');
Route::get('/writer/{writerId}', [WriterController::class, 'viewWriter'])->name('writer');

Route::get('/detail/{postId}', [PostController::class, 'index'])->name('detail');

Route::get('/popular', [PostController::class, 'viewAll'])->name('popular');