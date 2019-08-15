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
class PagoOrdenVenta extends Model
{
    use Sortable;
    use FullTextSearch;

    /**
     * The attributes that are mass assignable. this example new
     *
     * @var array
     */
    protected $table = 'payment_order_vent';

    protected $fillable = [
        'order_venta_id','montoPago','fechaPago'
    ];

    /**
     * The attributes that are sortable
     *
     * @var array
     */
    public $sortables = [
        'id', 'fechaPago'
    ];

    /**
     * The columns of the full text index
     */
    protected $searchable = [
        'montoPago','fechaPago'
    ];

    /**
     * Relationship to Species model
     *
     * @return void
     */
   
  
}
