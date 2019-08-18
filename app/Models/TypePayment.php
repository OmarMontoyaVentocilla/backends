<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @package App\Models
 */
class TypePayment extends Model
{
    
    protected $table = 'type_payments';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'forma_pago', 'estado'
    ];
    
}
