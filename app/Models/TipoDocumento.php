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
class TipoDocumento extends Model
{
    use Sortable;
    use FullTextSearch;

    /**
     * The attributes that are mass assignable. this example new
     *
     * @var array
     */
    protected $table = 'document_types';

    protected $fillable = [
        'descripcion','estado'
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
