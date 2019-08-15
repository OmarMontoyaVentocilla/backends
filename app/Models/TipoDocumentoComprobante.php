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
class TipoDocumentoComprobante extends Model
{
    use Sortable;
    use FullTextSearch;

    /**
     * The attributes that are mass assignable. this example new
     *
     * @var array
     */
    protected $table = 'document_types_comprobants';

    protected $fillable = [
        'descripcion','codigo'
    ];

    /**
     * The attributes that are sortable
     *
     * @var array
     */
    public $sortables = [
        'id', 'descripcion','codigo'
    ];

    /**
     * The columns of the full text index
     */
    protected $searchable = [
        'descripcion','codigo'
    ];

    /**
     * Relationship to Species model
     *
     * @return void
     */
   
  
}
