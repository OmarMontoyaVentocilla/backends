<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @package App\Models
 */
class Address extends Model
{
    
    protected $table = 'addresses';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'ubi_identificador', 'ubi_departamento', 'ubi_provincia', 'ubi_distrito', 'ubi_descripcion'
    ];
    
}
