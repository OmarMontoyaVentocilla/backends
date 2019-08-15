<?php
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;
class CreateClientsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('clients', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('document_types_id');
            $table->foreign('document_types_id')->references('id')->on('document_types');
            $table->unsignedBigInteger('ubigeo_id');
            $table->string('nro_documnto',40);
            $table->text('nombres');
            $table->timestamps();
            //$table->index('document_types_comprobant_id');
        });
    }
    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('clients');
    }
}