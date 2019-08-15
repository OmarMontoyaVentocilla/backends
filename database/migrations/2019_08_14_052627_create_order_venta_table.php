<?php
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;
class CreateOrderVentaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('order_venta', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('document_type_id');
            $table->foreign('document_type_id')->references('id')->on('document_types');
            $table->unsignedBigInteger('mode_payment_id');
            $table->foreign('mode_payment_id')->references('id')->on('mode_payments');
            $table->unsignedBigInteger('boxe_id');
            $table->foreign('boxe_id')->references('id')->on('boxes');
            $table->unsignedBigInteger('client_id');
            $table->foreign('client_id')->references('id')->on('clients');
            $table->unsignedBigInteger('user_id');
            $table->unsignedBigInteger('armedCombo_id');
            $table->float('montoTotal', 8, 2);
            $table->float('montoPago', 8, 2);
            $table->dateTime('fechaSistema');
            $table->dateTime('fechaVenta');
            $table->string('estadoVentaPago',2);
            $table->string('tipoVenta',2);
            $table->text('codigoTotales');
            $table->text('correlativo');
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
        Schema::dropIfExists('order_venta');
    }
}