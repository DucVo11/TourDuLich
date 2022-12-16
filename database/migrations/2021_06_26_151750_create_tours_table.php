<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateToursTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tours', function (Blueprint $table) {
            $table->id();
            $table->string('t_title', 255)->nullable();
            $table->string('t_journeys', 255)->nullable();
            $table->string('t_schedule', 255)->nullable();
            $table->string('t_move_method', 255)->nullable();
            $table->string('t_starting_gate', 255)->nullable();
            $table->date('t_start_date')->nullable();
            $table->date('t_end_date')->nullable();
            $table->integer('t_number_guests')->default(0)->nullable();
            $table->integer('t_price_adults')->default(0)->nullable();
            $table->integer('t_price_children')->default(0)->nullable();
            $table->integer('t_sale')->default(0)->nullable();
            $table->integer('t_view')->default(0)->nullable();
            $table->text('t_description')->nullable();
            $table->text('t_content')->nullable();
            $table->text('t_anbum_image')->nullable();
            $table->string('t_image', 255)->nullable();
            $table->unsignedBigInteger('t_location_id')->index()->nullable();
            $table->foreign('t_location_id')->references('id')->on('locations')
                ->onUpdate('cascade')->onDelete('cascade');
            $table->unsignedBigInteger('t_user_id')->index()->nullable();
            $table->foreign('t_user_id')->references('id')->on('users')
                ->onUpdate('cascade')->onDelete('cascade');
            $table->integer('t_number_registered')->default(0);
            $table->integer('t_follow')->default(0);
            $table->tinyInteger('t_status')->default(0);
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
        Schema::dropIfExists('tours');
    }
}
