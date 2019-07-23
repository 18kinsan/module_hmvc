<?php

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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/form', 'TableCommander@form');
Route::get('/json', 'TableCommander@getJson');
Route::post('/post', 'TableCommander@checkContent');

// Auth::routes();
// Auth::routes();

// Route::get('/home', 'HomeController@index')->name('home');
