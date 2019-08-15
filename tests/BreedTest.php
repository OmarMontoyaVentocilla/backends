<?php

use Laravel\Lumen\Testing\DatabaseMigrations;
use Laravel\Lumen\Testing\DatabaseTransactions;

class BreedTest extends TestCase
{
    use DatabaseTransactions;

    /**
     * Test list of all breeds
     *
     * @return void
     */
    public function testListBreeds()
    {
        $this->get("breeds");
        $this->seeStatusCode(200);
        $this->seeJsonStructure([
            'data' => 
            [    
                'current_page',
                'data',
                'first_page_url',
                'from',
                'last_page',
                'last_page_url',
                'next_page_url',
                'path',
                'per_page',
                'prev_page_url',
                'to',
                'total',
                'data' => ['*' =>
                    [
                        'id',
                        'name',
                        'species_id'
                    ]
                ]   
            ]
        ]);
    }

    /**
     * Test create breed
     *
     * @return void
     */
    public function testCreateBreed()
    {
        $species = factory('App\Models\Species')->create();
        
        $params = [
            'name' => substr(md5(mt_rand()), 0, 7),
            'species_id' => $species->id,
            'size' => '75cm',
            'hair_size' => 'Long'
        ];

        $this->post("breeds", $params);
        $this->seeStatusCode(201);
        $this->seeJsonStructure(
            ['data' =>
                [
                    'name',
                    'species_id'
                ]
            ]    
        );
    }

    /**
     * Test to get details about one breed
     *
     * @return void
     */
    public function testGetOneBreed()
    {
        $species = factory('App\Models\Species')->create();
        $breed = factory('App\Models\Breed')->create();
        
        $this->get("breeds/".$breed->id, []);
        $this->seeStatusCode(200);
        $this->seeJsonStructure(
            ['data' =>
                [
                    'id',
                    'name',
                    'species_id'
                ]
            ]    
        );
    }

    /**
     * Test to update a specific breed
     *
     * @return void
     */
    public function testUpdateBreed()
    {
        $params = [
            'name' => 'Roedores',
        ];

        $species = factory('App\Models\Species')->create();
        $breed = factory('App\Models\Breed')->create();
        $this->put("breeds/".$breed->id, $params);
        $this->seeStatusCode(200);
        $this->seeJsonStructure(
            ['data' =>
                [
                    'id',
                    'name',
                    'species_id'
                ]
            ]    
        );
    }

    /**
     * Test to delete a specific breed
     *
     * @return void
     */
    public function testDeleteBreed()
    {
        $species = factory('App\Models\Species')->create();
        $breed = factory('App\Models\Breed')->create();
        $this->delete("breeds/".$breed->id, []);
        $this->seeStatusCode(200);
        $this->seeJsonStructure(
            ['data' =>
                [
                    'id',
                    'name',
                    'species_id'
                ]
            ]    
        );
    }
}
