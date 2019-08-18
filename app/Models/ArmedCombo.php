<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @package App\Models
 */
class ArmedCombo extends Model
{
    
    protected $table = 'armed_combos';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */

    protected $fillable = [
        'nuevo_codigo', 'nuevo_nombre', 'precio_compra_total', 
        'precio_venta_final', 'precio_diferencia'
    ];
    
}
