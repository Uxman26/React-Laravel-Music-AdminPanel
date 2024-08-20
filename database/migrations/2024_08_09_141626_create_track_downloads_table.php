<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('track_downloads', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id')->index()->nullable();
            $table->integer('track_id')->index();
            $table->string('file_type', 10)->index();
            $table->timestamp('created_at')->nullable();

            $table->string('platform', 30)->nullable()->index();
            $table->string('device', 30)->nullable()->index();
            $table->string('browser', 30)->nullable()->index();
            $table->string('location', 5)->nullable()->index();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('track_downloads');
    }
};