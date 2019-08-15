<?php

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| Here you may define all of your model factories. Model factories give
| you a convenient way to create models for testing and seeding your
| database. Just tell the factory how a default model should look.
|
*/

$factory->define(App\Models\Species::class, function (Faker\Generator $faker) {
    return [
        'name' => $faker->name,
    ];
});

$factory->define(App\Models\Breed::class, function (Faker\Generator $faker) {
    $species_id = App\Models\Species::pluck('id');
    return [
        'name' => $faker->name,
        'species_id' => $species_id->random(),
        'size' => $faker->text(10),
        'hair_size' => $faker->text(10),
    ];
});