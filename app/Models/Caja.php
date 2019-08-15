<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;
use App\Traits\Sortable;
use App\Traits\FullTextSearch;

/**
 * A 'Breed' defines what differences a Pet
 *
 * @package App\Models
 */
class Caja extends Model
{
    use Sortable;
    use FullTextSearch;

    /**
     * The attributes that are mass assignable. this example new
     *
     * @var array
     */
    protected $table = 'boxes';

    protected $fillable = [
        'descripcion','ip','estado'
    ];

    /**
     * The attributes that are sortable
     *
     * @var array
     */
    public $sortables = [
        'id', 'descripcion','ip'
    ];

    /**
     * The columns of the full text index
     */
    protected $searchable = [
        'descripcion','ip'
    ];

    /**
     * Relationship to Species model
     *
     * @return void
     */
   
  
}
