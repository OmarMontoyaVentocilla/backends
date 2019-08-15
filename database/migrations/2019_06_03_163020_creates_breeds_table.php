<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatesBreedsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('breeds', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name', 50);
            $table->integer('species_id')->unsigned();
            $table->foreign('species_id')->references('id')->on('species');
            $table->text('size');
            $table->text('hair_size');
            $table->timestamps();
            $table->softDeletes();
            $table->index('species_id');
        });

        DB::statement('ALTER TABLE breeds ADD FULLTEXT fulltext_index (name)');
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('breeds', function (Blueprint $table) {
            $table->dropForeign(['species_id']);
        });
    }
}
