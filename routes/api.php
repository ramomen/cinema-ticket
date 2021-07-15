<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CityController;
use App\Http\Controllers\CinemaController;
use App\Http\Controllers\MovieController;
use App\Http\Controllers\CinemaHallController;
use App\Http\Controllers\ShowController;
use App\Http\Controllers\ShowSeatController;
use App\Http\Controllers\BookingController;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::apiResource('/cities',CityController::class);// {id}->cinemas
Route::apiResource('/cinemas', CinemaController::class); // {id}->cinemahalls
Route::apiResource('/cinema_halls', CinemaHallController::class); // {id}->shows
Route::get('/cinema_halls/{id}/movies/{movie_id}', [CinemaHallController::class,'movies']); // {id}->{movie_id}->shows
Route::get('/cinema_halls/{id}/shows', [CinemaHallController::class,'shows']); // {id}->{movie_id}->shows
Route::apiResource('/shows',ShowController::class);
Route::apiResource('/showseats',ShowSeatController::class);
//Route::apiResource('/shows/{id}',ShowController::class);
//Route::get('/shows/{id}/cinemaseats',[ShowController::class,'cinemaSeat']);
Route::apiResource('/movies',MovieController::class);
Route::apiResource('/booking',BookingController::class);



            

