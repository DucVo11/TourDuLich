<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddUpdateColmnToHotelsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('hotels', function (Blueprint $table) {
            //
//            $table->dropColumn('h_acreage');
//            $table->dropColumn('h_beds');
//            $table->dropColumn('h_number_people');
//            $table->dropColumn('h_start_date');
//            $table->dropColumn('h_end_date');
            $table->string('h_address')->nullable()->after('h_image');
            $table->string('h_phone')->nullable()->after('h_address');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('hotels', function (Blueprint $table) {
            //
        });
    }
}
