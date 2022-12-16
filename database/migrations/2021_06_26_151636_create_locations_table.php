<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLocationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('locations', function (Blueprint $table) {
            $table->id();
            $table->string('l_name', 255)->nullable();
            $table->string('l_slug', 255)->nullable();
            $table->string('l_image', 255)->nullable();
            $table->string('l_description', 255)->nullable();
            $table->text('l_content')->nullable();
            $table->tinyInteger('l_status')->default(0)->nullable();
            $table->unsignedBigInteger('l_user_id')->index()->nullable();
            $table->foreign('l_user_id')->references('id')->on('users')
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
        Schema::dropIfExists('locations');
    }
}
