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
class DocumentoCorrelativo extends Model
{
    use Sortable;
    use FullTextSearch;

    /**
     * The attributes that are mass assignable. this example new
     *
     * @var array
     */
    protected $table = 'document_correlatives';

    protected $fillable = [
        'document_types_comprobant_id','serie','correlativo'
    ];

    /**
     * The attributes that are sortable
     *
     * @var array
     */
    public $sortables = [
        'id', 'serie','correlativo'
    ];

    /**
     * The columns of the full text index
     */
    protected $searchable = [
        'serie','correlativo'
    ];

    /**
     * Relationship to Species model
     *
     * @return void
     */
   
  
}
