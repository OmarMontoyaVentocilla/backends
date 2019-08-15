<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHistorialBoxesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('historial_boxes', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('user_id');
            $table->unsignedBigInteger('boxe_id');
            $table->foreign('boxe_id')->references('id')->on('boxes');
            $table->float('montoInicial', 8, 2);
            $table->float('montoFinal', 8, 2);
            $table->dateTime('fechaInicio');
            $table->dateTime('fechaCierre');
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
        Schema::dropIfExists('historial_boxes');
    }
}
