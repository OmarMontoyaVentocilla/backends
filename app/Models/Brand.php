<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 *
 * @package App\Models
 */
class Brand extends Model
{

    protected $table = 'brands';
    /**
     * The attributes that are mass assignable. this example new
     *
     * @var array
     */
    protected $fillable = [
        'nombre','subfamilia_id', 'estado'
    ];

    /**
     * Relationship to SubFamily model
     *
     * @return void
     */
    public function subfamily()
    {
      return $this->belongsTo(SubFamily::class);
    }

    public function scopesubfamilyJoin($query)
    {
        return $query->leftJoin('subfamilies', function ($join) {
            $join->on('brands.subfamilia_id', '=', 'subfamilies.id');
        });
    }
}
