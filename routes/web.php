<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::post('addst','index@addst');
Route::get('login','index@login');
Route::post('login','index@loginpod');
Route::get('/','index@show');
Route::get('lcab','index@lcab');
Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
    Route::post('chusl','index@chusl');
    Route::get('studfile/{id}','studfile@index')->name('studfiles');

});
