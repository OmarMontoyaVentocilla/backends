<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 *
 * @package App\Models
 */
class PaymentPurchaseOrder extends Model
{

    protected $table = 'payment_purchase_orders';
    /**
     * The attributes that are mass assignable. this example new
     *
     * @var array
     */

    protected $fillable = [
        'orden_compra_pedido_id','monto_pago', 'fecha_pago'
    ];
    /**
     * Relationship to Purchase_order model
     *
     * @return void
     */
    public function purchaseOrder()
    {
      return $this->belongsTo(PurchaseOrder::class);
    }

    public function scopePurchaseOrderJoin($query)
    {
        return $query->leftJoin('purchase_orders', function ($join) {
            $join->on('payment_purchase_orders.orden_compra_pedido_id', '=', 'purchase_orders.id');
        });
    }
}

