<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 *
 * @package App\Models
 */
class PurchaseOrder extends Model
{

    protected $table = 'purchase_orders';
    /**
     * The attributes that are mass assignable. this example new
     *
     * @var array
     */
    protected $fillable = [
        'correlativo','proveedor_id', 'proveedor_contacto_id', 'usuario_id', 'forma_pago_id',
        'total_monto', 'total_pago', 'fecha_sistema', 'fecha_pedido', 'estado_pedido', 
        'estado_pedido_pago'
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
    public function supplierContact()
    {
      return $this->belongsTo(SupplierContact::class);
    }
    public function typePayment()
    {
      return $this->belongsTo(TypePayment::class);
    }

    public function scopeSupplierJoin($query)
    {
        return $query->leftJoin('suppliers', function ($join) {
            $join->on('purchase_orders.proveedor_id', '=', 'suppliers.id');
        });
    }
    public function scopeSupplierContactJoin($query)
    {
        return $query->leftJoin('suppliers_contacts', function ($join) {
            $join->on('purchase_orders.proveedor_contacto_id', '=', 'suppliers_contacts.id');
        });
    }
    public function scopeTypePaymentJoin($query)
    {
        return $query->leftJoin('type_payments', function ($join) {
            $join->on('purchase_orders.forma_pago_id', '=', 'type_payments.id');
        });
    }
}
