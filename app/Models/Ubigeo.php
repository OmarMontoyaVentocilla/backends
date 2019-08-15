<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Traits\Sortable;
//use App\Traits\FullTextSearch;

/**
 * A 'Breed' defines what differences a Pet
 *
 * @package App\Models
 */
class Ubigeo extends Model
{
    use SoftDeletes, Sortable;
   // use FullTextSearch;

    /**
     * The attributes that are mass assignable. this example new
     *
     * @var array
     */
    protected $table = 'ubigeos';

    protected $fillable = [
        'ubIdentificador','ubDepartamento', 'ubProvincia', 'ubDistrito', 'ubDescripcion'
    ];

    /**
     * The attributes that are sortable
     *
     * @var array
     */
    public $sortables = [
        'id', 'ubIdentificador', 'ubDepartamento', 'ubProvincia', 'ubDistrito', 'ubDescripcion'
    ];

    /**
     * The columns of the full text index
     */
    // protected $searchable = [
    //     'name'
    // ];

    /**
     * Relationship to Species model
     *
     * @return void
     */
   
  
}
