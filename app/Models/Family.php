<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @package App\Models
 */
class Family extends Model
{
    
    protected $table = 'families';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'descripcion', 'estado'
    ];
    
    public function subfamily()
    {
      return $this->hasMany(SubFamily::class);
    }
}
