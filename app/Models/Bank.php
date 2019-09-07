<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 *
 * @package App\Models
 */
class Bank extends Model
{

    protected $table = 'bank';
    /**
     * The attributes that are mass assignable. this example new
     *
     * @var array
     */
    protected $fillable = [
        'nombre_banco','estado'
    ];

    /**
     * Relationship to SubFamily model
     *
     * @return void
     */
  
}
