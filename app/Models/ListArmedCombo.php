<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 *
 * @package App\Models
 */
class ListArmedCombo extends Model
{

    protected $table = 'list_armed_combos';
    /**
     * The attributes that are mass assignable. this example new
     *
     * @var array
     */

    protected $fillable = [
        'almacen_id','combo_armado_id', 'precio_compra'
    ];

    /**
     * Relationship to Warehouse model
     *
     * @return void
     */
    public function warehouse()
    {
      return $this->belongsTo(Warehouse::class);
    }
    public function armad_combo()
    {
      return $this->belongsTo(ArmadCombo::class);
    }

    public function scopeWarehouseJoin($query)
    {
        return $query->leftJoin('warehouses', function ($join) {
            $join->on('list_armed_combos.almacen_id', '=', 'warehouses.id');
        });
    }
    public function scopeArmadComboJoin($query)
    {
        return $query->leftJoin('armad_combos', function ($join) {
            $join->on('list_armed_combos.combo_armado_id', '=', 'armad_combos.id');
        });
    }
}
