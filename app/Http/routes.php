<?php 
use App\Cars;
/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/

Route::resource('/', "CarsController");

Route::get('distance', function()
{
	return Cars::all();
});

Route::get("all-cars","CarsController@all");
Route::resource('cars', 'CarsController');
Route::resource('spot', 'SpotController');
