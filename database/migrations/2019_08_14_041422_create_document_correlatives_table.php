<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDocumentCorrelativesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('document_correlatives', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('document_types_comprobant_id');
            $table->foreign('document_types_comprobant_id')->references('id')->on('document_types_comprobants');
            $table->text('serie');
            $table->text('correlativo');
            $table->timestamps();
            $table->index('document_types_comprobant_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('document_correlatives');
    }
}
