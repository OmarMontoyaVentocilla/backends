<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;
use App\Traits\Sortable;
use App\Traits\FullTextSearch;

/**
 * A 'Breed' defines what differences a Pet
 *
 * @package App\Models
 */
class PlanesLimit extends Model
{
    use Sortable;
    use FullTextSearch;

    /**
     * The attributes that are mass assignable. this example new
     *
     * @var array
     */
    protected $table = 'planes_limit';

    protected $fillable = [
        'idLimit','idPlan', 'estado'
    ];

    /**
     * The attributes that are sortable
     *
     * @var array
     */
    // public $sortables = [
    //     'id', 'nro_documnto','nombres'
    // ];

    /**
     * The columns of the full text index
     */
    // protected $searchable = [
    //     'nombres','nro_documnto'
    // ];

    /**
     * Relationship to Species model
     *
     * @return void
     */
   
    public function plans() {
        return $this->belongsToMany('App\Models\Plan');
    }

    public function limits() {
        return $this->belongsToMany('App\Models\Limit');
    }
  
}
