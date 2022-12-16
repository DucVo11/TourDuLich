<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateArticlesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('articles', function (Blueprint $table) {
            $table->id();
            $table->string('a_title');
            $table->string('a_slug')->index();
            $table->tinyInteger('a_show_home')->default(0)->index();
            $table->tinyInteger('a_active')->default(1)->index();
            $table->integer('a_view')->default(0);
            $table->text('a_description')->nullable();
            $table->string('a_avatar')->nullable();
            $table->text('a_content')->nullable();
            $table->unsignedBigInteger('a_category_id')->index()->nullable();
            $table->foreign('a_category_id')->references('id')->on('categories')
                ->onUpdate('cascade')->onDelete('cascade');
            $table->unsignedBigInteger('a_user_id')->index()->nullable();
            $table->foreign('a_user_id')->references('id')->on('users')
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
        Schema::dropIfExists('articles');
    }
}
