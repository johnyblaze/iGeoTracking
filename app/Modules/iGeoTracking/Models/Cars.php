<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Cars extends Model {

	protected $table = 'cars';
	public $timestamps = true;

	use SoftDeletes;

	protected $dates = ['deleted_at'];

}