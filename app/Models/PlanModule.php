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
class PlanModule extends Model
{
    use Sortable;
    use FullTextSearch;

    /**
     * The attributes that are mass assignable. this example new
     *
     * @var array
     */
    protected $table = 'plans_module';

    protected $fillable = [
        'name', 'estado'
    ];

    /**
     * The attributes that are sortable
     *
     * @var array
     */
    // public $sortables = [
    //     'id', 'nro_documnto','nombres'
    // ];

    /**
     * The columns of the full text index
     */
    // protected $searchable = [
    //     'nombres','nro_documnto'
    // ];

    /**
     * Relationship to Species model
     *
     * @return void
     */
   
  
}
