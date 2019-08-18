<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 *
 * @package App\Models
 */
class Supplier extends Model
{

    protected $table = 'suppliers';
    /**
     * The attributes that are mass assignable. this example new
     *
     * @var array
     */
    protected $fillable = [
        'ruc','razon_social', 'ubigeo_id', 'telefono', 'email', 'estado'
    ];
}
