<?php

namespace Database\Seeders;

use App\Models\Category;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Post;
use App\Models\Writer;
use Faker\Factory as Faker;

class PostSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create('id_ID');

        $writers = Writer::all();

        $titles = [
            'Machine Learning',
            'Deep Learning',
            'Natural Language Processing',
            'Software Security',
            'Server and Network Administration',
            'Mobile Penetration Testing',
        ];

        for ($i = 0; $i < 3; $i++) {
            $writer = $writers->where('category_id', 1)->random();

            Post::create([
                'writer_id' => $writer->id,
                'title' => $titles[$i],
                'img-path' => 'storage/img/post-' . ($i + 1) . '.jpg',
                'content' => $faker->paragraph(30),
            ]);
        }

        for ($i = 3; $i < count($titles); $i++) {
            $writer = $writers->where('category_id', 2)->random();

            Post::create([
                'writer_id' => $writer->id,
                'title' => $titles[$i],
                'img-path' => 'storage/img/post-' . ($i + 1) . '.jpg',
                'content' => $faker->paragraph(30),
            ]);
        }
    }
}
