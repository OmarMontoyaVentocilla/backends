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
class Breed extends Model
{
    use SoftDeletes, Sortable;
    use FullTextSearch;

    /**
     * The attributes that are mass assignable. this example new
     *
     * @var array
     */
    protected $fillable = [
        'name','status', 'species_id', 'size', 'hair_size'
    ];

    /**
     * The attributes that are sortable
     *
     * @var array
     */
    public $sortables = [
        'id', 'name', 'species_name', 'size', 'hair_size'
    ];

    /**
     * The columns of the full text index
     */
    protected $searchable = [
        'name'
    ];

    /**
     * Relationship to Species model
     *
     * @return void
     */
    public function species()
    {
      return $this->belongsTo(Species::class);
    }

    public function scopespeciesJoin($query)
    {
        return $query->leftJoin('species', function ($join) {
            $join->on('breeds.species_id', '=', 'species.id');
        });
    }
}
