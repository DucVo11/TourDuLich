<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCommentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('comments', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('cm_reply_id')->index()->nullable();
            $table->unsignedBigInteger('cm_user_id')->index()->nullable();
            $table->foreign('cm_user_id')->references('id')->on('users')
                ->onUpdate('cascade')->onDelete('cascade');
            $table->unsignedBigInteger('cm_article_id')->index()->nullable();
            $table->foreign('cm_article_id')->references('id')->on('articles')
                ->onUpdate('cascade')->onDelete('cascade');
            $table->unsignedBigInteger('cm_hotel_id')->index()->nullable();
            $table->foreign('cm_hotel_id')->references('id')->on('hotels')
                ->onUpdate('cascade')->onDelete('cascade');
            $table->unsignedBigInteger('cm_tour_id')->index()->nullable();
            $table->foreign('cm_tour_id')->references('id')->on('tours')
                ->onUpdate('cascade')->onDelete('cascade');
            $table->text('cm_content')->nullable();
            $table->text('cm_images')->nullable();
            $table->tinyInteger('cm_status')->nullable();
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
        Schema::dropIfExists('comments');
    }
}
