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
    protected $table = 'order_venta';

    protected $fillable = [
        'document_type_id','mode_payment_id','boxe_id','client_id','user_id','armedCombo_id','montoTotal',
        'montoPago','fechaSistema','fechaVenta','estadoVentaPago','tipoVenta','codigoTotales','correlativo'
    ];

    /**
     * The attributes that are sortable
     *
     * @var array
     */
    public $sortables = [
        'id', 'fechaSistema','fechaVenta','correlativo'
    ];

    /**
     * The columns of the full text index
     */
    protected $searchable = [
        'codigoTotales','correlativo','fechaSistema','fechaVenta','montoPago'
    ];

    /**
     * Relationship to Species model
     *
     * @return void
     */
   
  
}
