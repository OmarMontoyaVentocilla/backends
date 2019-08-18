<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 *
 * @package App\Models
 */
class SupplierContact extends Model
{

    protected $table = 'suppliers_contacts';
    /**
     * The attributes that are mass assignable. this example new
     *
     * @var array
     */

    protected $fillable = [
        'nombre','proveedor_id', 'celular', 'email', 'estado'
    ];
    /**
     * Relationship to Supplier model
     *
     * @return void
     */
    public function supplier()
    {
      return $this->belongsTo(Supplier::class);
    }

    public function scopeSupplierJoin($query)
    {
        return $query->leftJoin('suppliers', function ($join) {
            $join->on('suppliers_contacts.proveedor_id', '=', 'suppliers.id');
        });
    }
}
