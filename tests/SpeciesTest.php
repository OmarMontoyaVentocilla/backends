<?php

use Laravel\Lumen\Testing\DatabaseMigrations;
use Laravel\Lumen\Testing\DatabaseTransactions;

class SpeciesTest extends TestCase
{
    use DatabaseTransactions;

    /**
     * Test list of all species
     *
     * @return void
     */
    public function testListSpecies()
    {
        $this->get("species");
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
                        'name'
                    ]
                ]
            ]
            
        ]);
    }

    /**
     * Test create species
     *
     * @return void
     */
    public function testCreateSpecies()
    {

        $params = [
            'name' => 'Cabras',
        ];

        $this->post("species", $params, []);
        $this->seeStatusCode(201);
        $this->seeJsonStructure(
            ['data' =>
                [
                    'name'
                ]
            ]    
        );
    }

    /**
     * Test to get details about one species
     *
     * @return void
     */
    public function testGetOneSpecies()
    {
        $species = factory('App\Models\Species')->create();
        
        $this->get("species/".$species->id, []);
        $this->seeStatusCode(200);
        $this->seeJsonStructure(
            ['data' =>
                [
                    'id',
                    'name'
                ]
            ]    
        );
    }

    /**
     * Test to update a specific species
     *
     * @return void
     */
    public function testUpdateSpecies()
    {
        $params = [
            'name' => 'Roedores',
        ];

        $species = factory('App\Models\Species')->create();
        $this->put("species/".$species->id, $params);
        $this->seeStatusCode(200);
        $this->seeJsonStructure(
            ['data' =>
                [
                    'id',
                    'name'
                ]
            ]    
        );
    }

    /**
     * Test to delete a specific species
     *
     * @return void
     */
    public function testDeleteSpecies()
    {
        $species = factory('App\Models\Species')->create();
        $this->delete("species/".$species->id, []);
        $this->seeStatusCode(200);
        $this->seeJsonStructure(
            ['data' =>
                [
                    'id',
                    'name'
                ]
            ]    
        );
    }
}
