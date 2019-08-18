<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 *
 * @package App\Models
 */
class Product extends Model
{

    protected $table = 'products';
    /**
     * The attributes that are mass assignable. this example new
     *
     * @var array
     */
    protected $fillable = [
        'descripcion','presentacion_id', 'unidad_grupo_id', 'unidad_individual_id', 'unidad_peso_id',
        'marca_id', 'subfamilia_id', 'codigo', 'detalle', 'peso_neto', 'peso_bruto', 'estado'
    ];
    /**
     * Relationship to Presentation model
     *
     * @return void
     */
    public function presentation()
    {
      return $this->belongsTo(Presentation::class);
    }
    public function unitOfMeasures()
    {
      return $this->belongsTo(UnitOfMeasures::class);
    }
    public function unitOfWeight()
    {
      return $this->belongsTo(UnitOfWeight::class);
    }
    public function brand()
    {
      return $this->belongsTo(Brand::class);
    }
    public function subfamily()
    {
      return $this->belongsTo(Subfamily::class);
    }
    public function scopePresentationJoin($query)
    {
        return $query->leftJoin('presentations', function ($join) {
            $join->on('products.presentation_id', '=', 'presentations.id');
        });
    }
    public function scopeUnitOfMeasuresJoin($query)
    {
        return $query->leftJoin('unit_of_measures', function ($join) {
            $join->on('products.unidad_grupo_id', '=', 'unit_of_measures.id');
        });
    }
    public function scopeUnitOfWeightJoin($query)
    {
        return $query->leftJoin('unit_of_weights', function ($join) {
            $join->on('products.unidad_peso_id', '=', 'unit_of_weights.id');
        });
    }
    public function scopeBrandJoin($query)
    {
        return $query->leftJoin('brands', function ($join) {
            $join->on('products.marca_id', '=', 'brands.id');
        });
    }
    public function scopeSubfamilyJoin($query)
    {
        return $query->leftJoin('subfamilies', function ($join) {
            $join->on('products.subfamilia_id', '=', 'subfamilies.id');
        });
    }
}
