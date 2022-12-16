<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateHotelsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('hotels', function (Blueprint $table) {
            $table->id();
            $table->string('h_name', 255)->nullable();
            $table->string('h_image', 255)->nullable();
            $table->text('h_anbum_image')->nullable();
            $table->integer('h_acreage')->default(0);
            $table->integer('h_beds')->default(0);
            $table->integer('h_number_people')->default(0);
            $table->integer('h_price')->default(0);
            $table->integer('h_sale')->default(0);
            $table->string('h_description')->nullable();
            $table->text('h_content')->nullable();
            $table->tinyInteger('h_status')->default(0);
            $table->date('h_start_date')->nullable();
            $table->date('h_end_date')->nullable();
            $table->unsignedBigInteger('h_location_id')->index()->nullable();
            $table->foreign('h_location_id')->references('id')->on('locations')
                ->onUpdate('cascade')->onDelete('cascade');
            $table->unsignedBigInteger('h_user_id')->index()->nullable();
            $table->foreign('h_user_id')->references('id')->on('users')
                ->onUpdate('cascade')->onDelete('cascade');
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
        Schema::dropIfExists('hotels');
    }
}
