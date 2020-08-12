<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePpoliticTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ppolitic', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->text('logo');
            $table->string('slug',500);
            $table->string('nameMatchPol',500);
            $table->string('estado',3);
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
        Schema::dropIfExists('ppolitic');
    }
}
