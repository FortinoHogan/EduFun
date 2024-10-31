<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Faker\Factory as Faker;
use Illuminate\Database\Seeder;
use App\Models\Writer;
use App\Models\Category;

class WriterSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create('id_ID');

        $category = Category::all();

        for ($i = 1; $i <= 2; $i++) {
            Writer::create([
                'category_id' => 1,
                'name' => $faker->name(),
                'img-path' => 'storage/img/writer-' . $i . '.png',
            ]);
        }
        
        Writer::create([
            'category_id' => 2,
            'name' => $faker->name(),
            'img-path' => 'storage/img/writer-3.png',
        ]);
    }
}
