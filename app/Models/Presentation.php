<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @package App\Models
 */
class Presentation extends Model
{
    
    protected $table = 'presentations';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'nombre', 'estado'
    ];
    
}
