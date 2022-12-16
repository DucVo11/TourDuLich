<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBookToursTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('book_tours', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('b_tour_id')->index()->nullable();
            $table->foreign('b_tour_id')->references('id')->on('tours')
                ->onUpdate('cascade')->onDelete('cascade');
            $table->unsignedBigInteger('b_user_id')->index()->nullable();
            $table->foreign('b_user_id')->references('id')->on('users')
                ->onUpdate('cascade')->onDelete('cascade');
            $table->string('b_name', 255)->nullable();
            $table->string('b_email', 100)->nullable();
            $table->string('b_phone', 100)->nullable();
            $table->string('b_address', 100)->nullable();
            $table->date('b_start_date')->nullable();
            $table->text('b_note')->nullable();
            $table->integer('b_number_adults')->default(0)->nullable();
            $table->integer('b_number_children')->default(0)->nullable();
            $table->tinyInteger('b_status')->default(0)->nullable();
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
        Schema::dropIfExists('book_tours');
    }
}
