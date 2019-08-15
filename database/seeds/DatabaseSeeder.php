<?php

use App\Models\Species;
use App\Models\Breed;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Species::class,50)->create();
        factory(Breed::class,50)->create();
    }
}
