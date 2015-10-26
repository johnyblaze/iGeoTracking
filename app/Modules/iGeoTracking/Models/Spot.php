<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Spot extends Model {

	protected $table = 'spots';
	public $timestamps = true;

	use SoftDeletes;

	protected $dates = ['deleted_at'];

}