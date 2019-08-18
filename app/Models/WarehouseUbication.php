<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @package App\Models
 */
class WarehouseUbication extends Model
{
    
    protected $table = 'warehouse_ubications';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'nombre', 'descripcion', 'estado'
    ];
    
}
