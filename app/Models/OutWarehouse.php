<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 *
 * @package App\Models
 */
class OutWarehouse extends Model
{

    protected $table = 'out_warehouses';
    /**
     * The attributes that are mass assignable. this example new
     *
     * @var array
     */
    protected $fillable = [
        'producto_id','almacen_id', 'almacen_ubicacion_id', 'usuario_id', 'tipo_movimiento',
        'cantidad'
    ];
    
    public function product()
    {
      return $this->belongsTo(Product::class);
    }
    public function warehouse()
    {
      return $this->belongsTo(Warehouse::class);
    }
    public function warehouseUbication()
    {
      return $this->belongsTo(WarehouseUbication::class);
    }
    public function scopeProductJoin($query)
    {
        return $query->leftJoin('products', function ($join) {
            $join->on('out_warehouses.producto_id', '=', 'products.id');
        });
    }
    public function scopeWarehouseJoin($query)
    {
        return $query->leftJoin('warehouses', function ($join) {
            $join->on('out_warehouses.almacen_id', '=', 'warehouses.id');
        });
    }
    public function scopeWarehouseUbicationJoin($query)
    {
        return $query->leftJoin('warehouse_ubications', function ($join) {
            $join->on('out_warehouses.almacen_ubicacion_id', '=', 'warehouse_ubications.id');
        });
    }
}

