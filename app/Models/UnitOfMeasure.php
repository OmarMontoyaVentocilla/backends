<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @package App\Models
 */
class UnitOfMeasure extends Model
{
    
    protected $table = 'unit_of_measures';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'abreviatura', 'equivalencia', 'estado'
    ];
    
}
