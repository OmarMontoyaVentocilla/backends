<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @package App\Models
 */
class UnitOfWeight extends Model
{
    
    protected $table = 'unit_of_weights';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'abreviatura', 'equivalencia', 'estado'
    ];
    
}
