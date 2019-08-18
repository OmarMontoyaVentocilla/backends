<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 *
 * @package App\Models
 */
class ListPaymentPurchaseOrder extends Model
{

    protected $table = 'list_payment_purchase_orders';
    /**
     * The attributes that are mass assignable. this example new
     *
     * @var array
     */

    protected $fillable = [
        'orden_compra_pedido_id','producto_id', 'cantidad', 'precio_compra', 'precio_paquete',
        'precio_unidad', 'fecha_vencimiento'
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
    public function product()
    {
      return $this->belongsTo(Product::class);
    }
    public function scopePurchaseOrderJoin($query)
    {
        return $query->leftJoin('purchase_orders', function ($join) {
            $join->on('list_payment_purchase_orders.orden_compra_pedido_id', '=', 'purchase_orders.id');
        });
    }
    public function scopeProductJoin($query)
    {
        return $query->leftJoin('products', function ($join) {
            $join->on('list_payment_purchase_orders.producto_id', '=', 'products.id');
        });
    }
}

