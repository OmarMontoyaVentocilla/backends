<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class PPolitic extends Model 
{
   

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */

    protected $table='ppolitic';
    protected $fillable = [
        'logo','slug','nameMatchPol','estado'
    ];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
   
}