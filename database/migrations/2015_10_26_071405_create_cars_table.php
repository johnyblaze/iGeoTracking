<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateCarsTable extends Migration {

	public function up()
	{
		Schema::create('cars', function(Blueprint $table) {
			$table->increments('id');
			$table->timestamps();
			$table->softDeletes();
			$table->bigInteger('imei')->unique()->unsigned();
			$table->string('manufacturer', 255);
			$table->string('model', 255);
			$table->string('num_plate', 255);
			$table->string('last_spot_loc_lng', 255);
			$table->string('last_spot_loc_lat', 255);
		});
	}

	public function down()
	{
		Schema::drop('cars');
	}
}