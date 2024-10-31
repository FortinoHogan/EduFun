<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;

    protected $table = 'post';
    protected $guarded = ['id'];
    public function writer()
    {
        return $this->belongsTo(Writer::class);
    }
    public function category()
    {
        return $this->belongsTo(Category::class);
    }
}
