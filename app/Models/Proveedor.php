<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Traits\Sortable;
use App\Traits\FullTextSearch;

/**
 * A 'Breed' defines what differences a Pet
 *
 * @package App\Models
 */
class Proveedor extends Model
{
    use SoftDeletes, Sortable;
    use FullTextSearch;

    /**
     * The attributes that are mass assignable. this example new
     *
     * @var array
     */
    protected $table = 'providers';

    protected $fillable = [
        'ruc','razon_social', 'ubigeo_id', 'email', 'telefono','estado'
    ];

    /**
     * The attributes that are sortable
     *
     * @var array
     */
    public $sortables = [
        'id', 'ruc','razon_social', 'ubigeo_id', 'email', 'telefono','estado'
    ];

    public function scopesubigeosInnerjoin($query)
    {
        return $query->innerJoin('ubigeos', function ($join) {
            $join->on('ubigeos.ubigeo_id', '=', 'ubigeos.id');
        });
    }

    /**
     * The columns of the full text index
     */
    protected $searchable = [
        'razon_social'
    ];

    /**
     * Relationship to Species model
     *
     * @return void
     */
    
}
