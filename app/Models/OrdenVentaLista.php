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
class OrdenVenta extends Model
{
    use Sortable;
    use FullTextSearch;

    /**
     * The attributes that are mass assignable. this example new
     *
     * @var array
     */
    protected $table = 'list_order_vent';

    protected $fillable = [
        'armedCombo_id','order_venta_id','cantidad','precioVenta','distribucionPresentacion'
    ];

    /**
     * The attributes that are sortable
     *
     * @var array
     */
    public $sortables = [
        'id', 'precioVenta'
    ];

    /**
     * The columns of the full text index
     */
    protected $searchable = [
        'cantidad','precioVenta','distribucionPresentacion'
    ];

    /**
     * Relationship to Species model
     *
     * @return void
     */
   
  
}
