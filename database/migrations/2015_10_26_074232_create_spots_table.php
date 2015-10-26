<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSpotsTable extends Migration {

	public function up()
	{
		Schema::create('spots', function(Blueprint $table) {
			$table->increments('id');
			$table->timestamps();
			$table->softDeletes();
			$table->string('lat', 255);
			$table->string('lng', 255);
			$table->string('imei', 255);
		});
	}

	public function down()
	{
		Schema::drop('spots');
	}
}