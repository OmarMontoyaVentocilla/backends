<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 *
 * @package App\Models
 */
class SubFamily extends Model
{

    protected $table = 'subfamilies';
    /**
     * The attributes that are mass assignable. this example new
     *
     * @var array
     */
    protected $fillable = [
        'descripcion','familia_id', 'estado'
    ];
    /**
     * Relationship to Family model
     *
     * @return void
     */
    public function family()
    {
      return $this->belongsTo(Family::class);
    }

    public function scopeFamilyJoin($query)
    {
        return $query->leftJoin('families', function ($join) {
            $join->on('subfamilies.familia_id', '=', 'families.id');
        });
    }
}
