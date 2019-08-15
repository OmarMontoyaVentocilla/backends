<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateListOrderVentTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('list_order_vent', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('armedCombo_id');
            $table->unsignedBigInteger('order_venta_id');
            $table->foreign('order_venta_id')->references('id')->on('order_venta');
            $table->integer('cantidad');
            $table->float('precioVenta', 8, 2);
            $table->text('distribucionPresentacion');
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
        Schema::dropIfExists('list_order_vent');
    }
}
