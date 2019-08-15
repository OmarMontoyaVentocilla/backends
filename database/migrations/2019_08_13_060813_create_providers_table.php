<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProvidersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('providers', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('ruc', 11);
            $table->string('razon_social',90);
            $table->unsignedBigInteger('ubigeo_id');
            $table->foreign('ubigeo_id')->references('id')->on('ubigeos');
            $table->string('email',50);
            $table->string('telefono',7);
            $table->string('estado',1);
            $table->timestamps();
            $table->softDeletes();
            $table->index('ubigeo_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('providers');
    }
}
