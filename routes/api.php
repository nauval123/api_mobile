<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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
Route::get('misi','apiController@get_all_misi');
Route::get('misiez','apiController@all_easy_misi');
Route::get('misimed','apiController@all_medium_misi');
Route::get('misihard','apiController@all_hard_misi');

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
