<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Traits\Sortable;
use App\Traits\FullTextSearch;

/**
 * A 'Species' defines what kind of animal correspond a breed. A breed can only be of one species
 *
 * @package App\Models
 */
class Species extends Model
{
    use SoftDeletes, Sortable;
    use FullTextSearch;
    
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name'
    ];

    /**
     * The attributes that are sortable
     *
     * @var array
     */
    public $sortables = [
        'id', 'name', 'species_id'
    ];

    /**
     * The columns of the full text index
     */
    protected $searchable = [
        'name'
    ];

    /**
     * Relationship with Breed model
     *
     * @return void
     */
    public function breeds()
    {
      return $this->hasMany(Breed::class);
    }
    
}
