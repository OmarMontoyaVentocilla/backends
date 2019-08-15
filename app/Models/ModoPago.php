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
class ModoPago extends Model
{
    use Sortable;
    use FullTextSearch;

    /**
     * The attributes that are mass assignable. this example new
     *
     * @var array
     */
    protected $table = 'mode_payments';

    protected $fillable = [
        'descripcion'
    ];

    /**
     * The attributes that are sortable
     *
     * @var array
     */
    public $sortables = [
        'id', 'descripcion'
    ];

    /**
     * The columns of the full text index
     */
    protected $searchable = [
        'descripcion'
    ];

    /**
     * Relationship to Species model
     *
     * @return void
     */
   
  
}
