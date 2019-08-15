<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePaymentOrderVentTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('payment_order_vent', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('order_venta_id');
            $table->foreign('order_venta_id')->references('id')->on('order_venta');
            $table->float('montoPago', 8, 2);
            $table->dateTime('fechaPago');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('payment_order_vent');
    }
}
